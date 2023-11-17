local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 Northshire
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 6-11 Elwynn Forest; 6-13 Elwynn Forest
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +You have selected a guide meant for Humans. You should choose the same starter zone that you start in
step << Mage
    #completewith next
    +Note that you have selected the single target Mage guide. Single target is a lot safer than AoE Mage, but a LOT slower
step << Warlock
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dane Winslow|r
    .vendor >> |cRXP_WARN_Vendor your Body Armor, Shirt, Pants and Boots along with the Food and Water in your bags. You need 10c total|r
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Accept The Stolen Tome
    .train 348 >> Train |T135817:0|t[Immolate]
    .target Drusilla La Salle
step << Warlock
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Run into the Tent at the Defias Camp|r
    >>Open the |cRXP_PICK_Stolen Books|r. Loot it for the |cRXP_LOOT_Powers of the Void|r
    >>|cRXP_WARN_You can loot the |cRXP_LOOT_Powers of the Void|r safely while inside the Tent! Watch the video on how to do this|r
    .link https://youtu.be/3qQwsJhAZIk >> |cRXP_WARN_Click here for video reference|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_Remain inside the Tent so |cRXP_ENEMY_Defias Thugs|r can't hit you|r
    .hs >> Hearth to Northshire Valley
step << Warlock
    #softcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Run into the Tent at the Defias Camp|r
    >>Open the |cRXP_PICK_Stolen Books|r. Loot it for the |cRXP_LOOT_Powers of the Void|r
    >>|cRXP_WARN_You can loot the |cRXP_LOOT_Powers of the Void|r safely while inside the Tent! Watch the video on how to do this|r
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >> |cRXP_WARN_Click here for video reference|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >> Turn in The Stolen Tome
    .target Drusilla La Salle
step << Warlock
    #completewith next
    .cast 688 >> |cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >> Accept A Threat Within
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Kill |cRXP_ENEMY_Young Wolves|r until you have 10c+ worth of vendor trash
    >>|cRXP_WARN_You will train|r |T132333:0|t[Battle Shout] |cRXP_WARN_which increases early leveling speeds|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
    .target Brother Danil
    .target Llane Beshere
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >> Accept Eagan Peltskinner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.941,40.166
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    .vendor >> |cRXP_WARN_Once you have 50c worth of vendor trash, buy 10|r |T132794:0|t[Refreshing Spring Water]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Young Wolves|r and |cRXP_ENEMY_Timber Wolves|r. Loot them for their |cRXP_LOOT_Meat|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.6,35.9,40,0
    .goto Elwynn Forest,49.6,35.8,40,0
    .goto Elwynn Forest,51.6,37.0,40,0
    .goto Elwynn Forest,49.6,35.8
    >>Kill |cRXP_ENEMY_Kobold Vermins|r
	.mob Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,46.41,41.94,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,51.91,37.85,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,46.41,41.94
    >>Kill |cRXP_ENEMY_Young Wolves|r and |cRXP_ENEMY_Timber Wolves|r. Loot them for their |cRXP_LOOT_Meat|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan Peltskinner|r
    .target Eagan Peltskinner
    .turnin 33,2 >> Turn in Wolves Across The Border << Warrior/Paladin/Rogue
    .turnin 33,1 >> Turn in Wolves Across The Border << !Warrior !Paladin !Rogue
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Danil|r
    .vendor >>|cRXP_WARN_Vendor trash|r
    >>|cRXP_WARN_Buy 10|r |T132794:0|t[Refreshing Spring Water]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.691,41.417
    .vendor >>|cRXP_WARN_Vendor trash|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janos|r
    .goto Elwynn Forest,47.240,41.900
    >>|cRXP_BUY_Buy a|r |T135650:0|t[Dirk]
    .collect 2139,1 -- Dirk (1)
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135650:0|t[Dirk]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.19
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3100 >> Accept Simple Letter << Warrior
    .accept 3101 >> Accept Consecrated Letter << Paladin
    .accept 3102 >> Accept Encrypted Letter << Rogue
    .accept 3103 >> Accept Hallowed Letter << Priest
    .accept 3104 >> Accept Glyphic Letter << Mage
    .accept 3105 >> Accept Tainted Letter << Warlock
step
    .xp 3 >> Grind to 3
step
    .goto Elwynn Forest,47.2,35.1,40,0
    .goto Elwynn Forest,48.9,32.8,40,0
    .goto Elwynn Forest,51.7,37.7,40,0
    .goto Elwynn Forest,47.2,35.1
    >>Kill |cRXP_ENEMY_Kobold Workers|r
	.mob Kobold Worker
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>Grind to 1110+/1400xp on your way back
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .vendor >> |cRXP_WARN_Vendor trash|r
--N need SoM xp note
step
    #requires xp3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 15 >> Turn in Investigate Echo Ridge
    .accept 21 >> Accept Skirmish at Echo Ridge
step << Priest/Mage
    #completewith next
    .goto Elwynn Forest,49.52,39.99,10 >> Travel upstairs << Mage
    .goto Elwynn Forest,49.3,40.7,15 >> Travel toward |cRXP_FRIENDLY_Priestess Anetta|r << Priest
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r
    .target Khelden Bremen
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Turn in Glyphic Letter
    .trainer >> Train your class spells
    .target Khelden Bremen
step << Priest
    #completewith next
    .goto Elwynn Forest,49.8,40.2,10 >> Travel through the doorway
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >> Turn in Hallowed Letter
    .trainer >> Train your class spells
step << Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Llane Beshere|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Travel toward |cRXP_FRIENDLY_Brother Sammuel|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> Turn in Simple Letter
    .trainer >> Train your class spells
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >> Turn in Consecrated Letter
    .trainer >> Train your class spells
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >> Accept Brotherhood of Thieves
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drusilla La Salle|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >> Turn in Tainted Letter
    .xp 4 >> Grind to 4
    .trainer >>Train |T136118:0|t[Corruption]
step
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for their |cRXP_LOOT_Bandanas|r
	.mob Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >> Grind to 4
step
    #completewith next
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >> Turn in Brotherhood of Thieves << Paladin
    .turnin 18,1 >> Turn in Brotherhood of Thieves << Rogue/Warlock
    .turnin 18,5 >> Turn in Brotherhood of Thieves << Mage
    .turnin 18,2 >> Turn in Brotherhood of Thieves << Priest
    .turnin 18,3 >> Turn in Brotherhood of Thieves << Warrior
    .turnin 18 >> Turn in Brotherhood of Thieves << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
step << Paladin
    #completewith next
    +Equip the |T133052:0|t[Militia Warhammer]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << skip
    >> Talk to |cFF00FF25Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.7,41.4
    .vendor >> Vendor trash, repair
step
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Enter the Echo Ridge Mine
step
    .goto Elwynn Forest,48.61,27.63
    >>Kill |cRXP_ENEMY_Kobold Laborers|r
	.mob Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Grind to 5
step << !Priest !Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Turn in Milly Osworth
    >>|cRXP_WARN_Skip the followup|r
    .target Milly Osworth
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3903 >> Turn in Milly Osworth
    .accept 3904 >> Accept Milly's Harvest
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorik Kerridan|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    .turnin 3102 >> Turn in Encrypted Letter
    >>|cRXP_WARN_You don't need to train any spells|r
step << Priest/Mage
    >>Loot |cRXP_PICK_Milly's Harvest|r on the ground
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Kill |cRXP_ENEMY_Garrick Padfoot|r. Loot him for his |cRXP_LOOT_Head|r
	.mob Garrick Padfoot
    .complete 6,1 --Collect Garrick's Head (x1)
step << !Priest !Mage
    #sticky
    .abandon 3904 >> Abandon Milly's Harvest
step << !Priest !Mage
    .xp 5+1715 >> Grind on your way back to 1715+/2800xp
    .goto Elwynn Forest,48.171,42.943
--N SoM xp values
step << Priest/Mage
    .xp 5+1175 >> Grind on your way back to 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #completewith next
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3904 >> Turn in Milly's Harvest
    .accept 3905 >>Accept Grape Manifest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 6,2 >> Turn in Bounty on Garrick Padfoot << Warrior/Rogue/Paladin
    .turnin 6,1 >> Turn in Bounty on Garrick Padfoot << !Warrior !Rogue !Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal McBride|r inside the Abbey
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,1 >> Turn in Skirmish at Echo Ridge << Rogue
    .turnin 21,2 >> Turn in Skirmish at Echo Ridge << Warrior/Paladin
    .turnin 21,3 >> Turn in Skirmish at Echo Ridge << !Warrior !Paladin !Rogue
    .accept 54 >> Accept Report to Goldshire
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Travel upstairs
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Neals|r upstairs
    .target Brother Neals
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905,1 >>Turn in Grape Manifest
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >> Accept In Favor of the Light
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.563,47.742
    .accept 2158 >> Accept Rest and Relaxation
]])


RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance
#name 6-11 Elwynn Forest
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 11-13 Loch Modan
step
    #hardcore
    #completewith next
    .subzone 87 >> Travel to Goldshire
step
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    #softcore
    #completewith Goldshire
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .trainer >> Train |T136241:0|t[Blacksmithing]
    >>|cRXP_WARN_This will allow you to make |T135248:0|t[Rough Sharpening Stones] which increase melee hits by +2 Damage. This is very significant early on|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make |T135255:0|t[Rough Weightstones] which increase melee hits by +2 Damage. This is very significant early on|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy and equip a|r |T135321:0|t[Gladius]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy and equip a|r |T135641:0|t[Stiletto]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy and equip a|r |T133053:0|t[Wooden Mallet]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Mage/Priest/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew Krighton|r
    .target Andrew Krighton
    .goto Elwynn Forest,41.706,65.786
    .vendor >> |cRXP_WARN_Vendor trash|r
step
    #label Goldshire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Accept Kobold Candles
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .target Innkeeper Farley
    .turnin 2158,1 >> Turn in Rest and Relaxation << Rogue/Warrior
    .turnin 2158,2 >> Turn in Rest and Relaxation << !Rogue !Warrior
    .home >> Set your Hearthstone to Goldshire
step
    .xp 6 >> Grind to 6
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog Hamfist|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >>|cRXP_WARN_Buy a|r |T135641:0|t[Balanced Throwing Dagger] and equip it|r
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Travel downstairs
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Train your class spells
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_WARN_Buy the|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_WARN_if you can afford it. If not you will buy it later|r
    .target Cylina Darkheart
    .money <0.0100
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Travel upstairs in the Inn
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Train your class spells
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >> Turn in In Favor of the Light
    .accept 5624 >> Accept Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michelle Belle|r upstairs
    .target Michelle Belle
    .train 3273 >> Train |T135966:0|t[First Aid]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> |cRXP_BUY_Buy|r |T133995:0|t[Dalaran Sharp] |cRXP_BUY_until you're down to 1 Silver|r << Warrior
    .vendor >> |cRXP_BUY_Buy up to 20|r |T133995:0|t[Dalaran Sharp] << Rogue
    .target Innkeeper Farley
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Train your class spells
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 47 >> Accept Gold Dust Exchange
step << Priest
    >>|cRXP_WARN_Cast|r |T135929:0|t[Lesser Heal (Rank 2)] |cRXP_WARN_and|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_Guard Roberts|r
    .target Guard Roberts
    .goto Elwynn Forest,48.148,68.046
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for their |cRXP_LOOT_Chunks of Boar Meat|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r and |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .target Ma Stonefield
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >> Accept Princess Must Die!
	.goto Elwynn Forest,34.660,84.482


step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Accept Young Lovers
    .target Maybell Maclure
step
    #completewith next
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua Maclure|r
    .target Joshua Maclure
    .vendor >>|cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_WARN_as you can afford|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Vendor trash|r << !Priest !Warlock !Mage
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label BoarMeat1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,32.5,85.5
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for their |cRXP_LOOT_Chunks of Boar Meat|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r
    .target Gramma Stonefield
    .goto Elwynn Forest,34.9,83.9
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
step
    #completewith KillGoldtooth
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>Explore Fargodeep Mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #label KillGoldtooth
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>Explore Fargodeep Mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_If you loot any|r |T135232:0|t[Rough Stones] |cRXP_WARN_turn them into|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Warrior
    #completewith Goldtooth
    +|cRXP_WARN_Try to save a single|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_from now on as you will need it for Rolf's Corpse later|r
step << Warrior/Rogue
    >>|cRXP_WARN_Remember to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_if you picked up a|r |T135232:0|t[Rough Stones]
    .xp 7+1600 >>Grind until 1600+/4500xp
step << Paladin
    >>|cRXP_WARN_Remember to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_if you picked up a|r |T135232:0|t[Rough Stones]
    .xp 7+1600 >>Grind until 1600+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+1600 >>Grind until 1600+/4500xp
step << Priest
    .xp 7+1260 >>Grind until 1260+/4500xp
step
    #label Goldtooth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >> Turn in Goldtooth
step
    .xp 7+2690 >>Grind until 2690+/4500xp << !Priest
    .xp 7+2350 >>Grind until 2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Travel to Goldshire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 60|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    .goto Elwynn Forest,41.529,65.900
    .vendor >>|cRXP_WARN_Vendor trash|r
    .target Corina Steele
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy and equip a|r |T135321:0|t[Gladius]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy and equip a|r |T135641:0|t[Stiletto]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy and equip a|r |T133053:0|t[Wooden Mallet]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
step
    .xp 8 >> Grind to 8
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Train your class spells
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Travel downstairs in the Inn
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Train your class spells
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cylina Darkheart|r
    .vendor >> |cRXP_WARN_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_WARN_if you can afford it. If not you will buy it later|r
    .target Cylina Darkheart
    .money <0.100
step << Mage/Priest/Rogue/Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Travel upstairs in the Inn
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Train your class spells
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Train |T135966:0|t[First Aid]
step
    .money <0.1250
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog Hamfist|r
    .vendor >> |cRXP_WARN_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_WARN_if needed|r
	.target Brog Hamfist
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .vendor >> |cRXP_WARN_Buy up to 40|r |T132815:0|t[Ice Cold Milk] << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_WARN_Buy up to 40|r |T133995:0|t[Dalaran Sharp] << Warrior/Rogue
    .vendor >> |cRXP_WARN_Buy up to 10|r |T133995:0|t[Dalaran Sharp] |cRXP_WARN_and 10|r |T132815:0|t[Ice Cold Milk] << Paladin
    .target Innkeeper Farley
step
    >>Kill |cRXP_ENEMY_Murlocs|r and |cRXP_ENEMY_Murloc Streamrunners|r. Loot them for |cRXP_LOOT_Kelp Fronds|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> Enter the Jasperlode Mine
step
    >>|cRXP_WARN_Follow the path through middle to explore Jasperlode Mine|r
    >>|cRXP_WARN_Exit Jasperlode Mine as soon as the objective completes|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step
    #completewith AcceptBundle
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_Young Forest Bears|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    >>Click |cRXP_PICK_A half-eaten body|r on the ground
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    #label AcceptBundle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Accept A Bundle of Trouble
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rallic Finn|r
    .target Rallic Finn
    .goto Elwynn Forest,83.283,66.089
    .vendor >> |cRXP_WARN_Vendor trash|r
    .zoneskip Elwynn Forest,1
step
    #completewith Prowlers
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_Young Forest Bears|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #completewith next
    >>Loot the |cRXP_LOOT_Bundle of Wood|r on the ground. |cRXP_WARN_They are found beneath the trees|r
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #softcore
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>|cRXP_WARN_Run on top of |cRXP_PICK_Rolf's corpse|r and cast|r |T135954:0|t[Divine Protection] |cRXP_WARN_and then immediately click|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_WARN_Run away and reset the |cRXP_ENEMY_Murlocs|r after completing the quest|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #hardcore
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68|r
    >>|cRXP_WARN_Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and nuke one of them down fast. Use|r |T135954:0|t[Divine Protection] |cRXP_WARN_and your Heals as required. This is a good opportunity to use|r |T133581:0|t[Bag of Marbles]|cRXP_WARN_. Run away and reset once you've killed one|r << Paladin
    >>|cRXP_WARN_Remember during|r |T135954:0|t[Divine Protection] |cRXP_WARN_you are unable to attack|r << Paladin
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << !Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68|r
    >>|cRXP_WARN_Cast|r |T135953:0|t[Renew] |cRXP_WARN_and|r |T135940:0|t[Power Word: Shield] |cRXP_WARN_then get full mana. Pull the 2 |cRXP_ENEMY_Murlocs|r in front of the huts, move away, then nuke one. Run away when you kill one, then kill the other|r << Priest
    >>|cRXP_WARN_Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and|r |T136071:0|t[Polymorph] |cRXP_WARN_one whilst killing the other. Kill the|r |T136071:0|tPolymorphed |cRXP_WARN_one after|r << Mage
    >>|cRXP_WARN_Pool 100 Rage. Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and keep|r |T132316:0|t[Hamstring] |cRXP_WARN_on one whilst killing the other. Also use|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_on the one you're killing. Run away and reset the one being kited with|r |T132316:0|t[Hamstring] |cRXP_WARN_after you've killed one|r << Warrior
    >>|cRXP_WARN_Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and focus killing one of them. Use|r |T136205:0|t[Evasion] |cRXP_WARN_once they're both attacking you. This is a good opportunity to use|r |T133581:0|t[Bag of Marbles]|cRXP_WARN_. Run away and reset once you've killed one|r << Rogue
    >>|cRXP_WARN_Pull the 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_in front of the huts, move away and cast|r |T136183:0|t[Fear] |cRXP_WARN_on one of them constantly, and try to keep DoTs on both|r << Warlock
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    #completewith next
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_Young Forest Bears|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Loot the |cRXP_LOOT_Bundle of Wood|r on the ground. |cRXP_WARN_They are found beneath the trees|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #completewith XP9
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_Young Forest Bears|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Turn in A Bundle of Trouble
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Accept Red Linen Goods
step
    #label XP9
	.goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    .xp 9 >> Grind to 9
step
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .xp <9,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
step
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    .goto Elwynn Forest,69.3,79.0
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princess|r |cRXP_WARN_will agro with both of her|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princess|r |cRXP_WARN_will also cast|r |T132368:0|t[Rushing Charge] |cRXP_WARN_which deals heavy damage|r
    >>|cRXP_WARN_Pool 100 Rage before you engage|r |cRXP_ENEMY_Princess|r << Warrior
    >>|cRXP_WARN_Be sure |T136205:0|t[Evasion] |cRXP_WARN_is ready. If you're struggling, you can use the Fence with Throwing Weapons to abuse pathing and buy time|r << Rogue
    >>|cRXP_WARN_Be ready to use a|r |T134830:0|t[Lesser Healing Potion]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Click here for video reference|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] to start the quest|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] |cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for their |cRXP_LOOT_Bandanas|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3400 >> Grind to 3400+/6500xp
step
    #softcore
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Turn in Red Linen Goods
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >> Grind until 4475+/6500xp
step << !Warlock
    #softcore
    .goto Redridge Mountains,11.2,78.4
    .zone Redridge Mountains >> Travel to Redridge Mountains
step << !Warlock
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << !Warlock
    #softcore
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step << !Warlock
    #hardcore
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Travel to Redridge Mountains
step << !Warlock
    #hardcore
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410
    >>|cRXP_WARN_STICK TO THE MAIN ROAD AND AVOID ANY CLOSE MOBS EN-ROUTE|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Hearth to Goldshire
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> Turn in Collecting Kelp
    .accept 114 >> Accept The Escape
    .target William Pestle
step << Warrior/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Travel upstairs in the Inn
step << Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Train |T135966:0|t[First Aid]
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .accept 59 >> Accept Cloth and Leather Armor << Warlock
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .accept 1097 >> Accept Elmore's Task
step
    .xp 10 >> Grind to 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .target Lyria Du Lac
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .accept 1638 >> Accept A Warrior's Training
    .trainer >> Train your class spells
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Train your class spells
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Travel downstairs in the Inn
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Train your class spells
step << Warlock
    .goto Elwynn Forest,44.485,66.268
    .target Remen Marcot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remen Marcot|r
    .accept 1685 >> Accept Gakin's Summons
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Go Upstairs
step << Priest
    .goto Elwynn Forest,43.283,65.721
    .target Priestess Josetta
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .accept 5635 >> Accept Desperate Prayer
    .trainer >> Train your class spells
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Train your class spells
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Train your class spells
    >>|cRXP_WARN_Train|r |T132147:0|t[Dual Wield] |cRXP_WARN_and|r |T132307:0|t[Sprint] |cRXP_WARN_as a minimum. Do not train excess abilities. Save your money|r
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
step << Rogue
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy and equip a|r |T135641:0|t[Stiletto] |cRXP_WARN_for your Off-Hand|r
    .target Corina Steele
    .money >0.3197
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Rogue
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corina Steele|r
    >>|cRXP_WARN_Buy and equip a|r |T135641:0|t[Stiletto] |cRXP_WARN_for your Off-Hand|r
    .target Corina Steele
    .money >0.3152
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Travel to The Maclure Vineyards
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88,1 >> Turn in Princess Must Die! << Rogue/Hunter
    .turnin 88,2 >> Turn in Princess Must Die! << Warrior/Paladin
    .turnin 88,3 >> Turn in Princess Must Die! << !Rogue !Hunter !Warrior !Paladin
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >> Travel to Westbrook Garrison
step << !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .accept 11 >> Accept Riverpaw Gnoll Bounty << Warlock
    .goto Elwynn Forest,24.234,74.450
    >>Click the |cRXP_PICK_Wanted Poster|r << Warlock
    .accept 176 >> Accept Wanted: "Hogger" << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
    .target Deputy Rainer
step << Rogue
    #era
    .money >0.3152
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .accept 11 >> Accept Riverpaw Gnoll Bounty
    .goto Elwynn Forest,24.234,74.450
    .target Deputy Rainer
step << Rogue
    #som
    .money >0.3197
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .accept 11 >> Accept Riverpaw Gnoll Bounty
    .goto Elwynn Forest,24.234,74.450
    .target Deputy Rainer
step << Warrior
    .money >0.3174
    #som
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r
    >>|cRXP_WARN_Grind until you have 31s 74c+ of vendorables/money. This is for Thrown, 2h Mace and 2h Sword training. It's also for to buy a level 3 Throwing Weapon, and flying to Stormwind soon|r
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
step << Warrior
    .money >0.3129
    #era
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r
    >>|cRXP_WARN_Grind until you have 31s 29c+ of vendorables/money. This is for Thrown, 2h Mace and 2h Sword training. It's also for to buy a level 3 Throwing Weapon, and flying to Stormwind soon|r
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
step << Warlock
    #completewith GnollEnd
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r]
    .use 1307 >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] to start the quest|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] |cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_a rare spawn, does have a 100% drop chance|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
    .unitscan Gruff Swiftbite
step << Warlock
    #completewith next
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for their |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Kill |cRXP_ENEMY_Hogger|r. Loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_can spawn in multiple locations|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on |cRXP_ENEMY_Hogger|r continously and use your regular DoTs to kill him|r
    >>|cRXP_WARN_Kite him back to the guard tower if required ensuring you've done at least 50% damage to him|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock/Rogue
    .isOnQuest 11
    #label GnollEnd
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for their |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock/Rogue
    .isQuestComplete 11
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .target Deputy Rainer
step << Rogue
    .abandon 123 >>Abandon The Collector
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Travel to Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> Turn in Furlbrow's Deed
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
    .goto Westfall,59.95,19.35
    .accept 151 >> Accept Poor Old Blanchy
    .accept 36 >> Accept Westfall Stew
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> Accept The Killing Fields
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
    .target Salma Saldean
    .accept 38 >> Accept Westfall Stew
    .accept 22 >>Accept Goretusk Liver Pie
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .target Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
step
    #era
    .goto Westfall,56.421,47.623
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 102 >> Accept Patrolling Westfall
step << Human
    .goto Westfall,57.002,47.169
    .target Quartermaster Lewis
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .accept 6181 >> Accept A Swift Message
    .vendor >>|cRXP_WARN_Vendor trash|r
step << Rogue
    #era
    .money >0.3152
    +|cRXP_WARN_Grind until you have 31s 52c of vendorables/money|r
step << Rogue
    #som
    .money >0.3197
    +Grind until you have 31s 97c of vendorables/money
    --Not taking into account Shipment q turnin money so its insurance money
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Turn in A Swift Message
    .accept 6281 >> Accept Continue To Stormwind
    .target Thor
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << Rogue
    #som
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Buy the level 11 thrown from Thurman. Equip it when you're level 11
step << Rogue
    #era
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
    .vendor >> |cRXP_WARN_Buy a|r |T135641:0|t[Balanced Throwing Dagger]|cRXP_WARN_. Equip it|r
    .target Thurman Mullby
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
    >>|cRXP_WARN_We choose the|r |T132383:0|t[Explosive Rockets] |cRXP_WARN_as the reward. It deals decent damage, and can be used for "Split pulling" which is incredibly useful|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling". It is a short video and invaluable to learn|r
    .target Morgan Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Train 1h Swords << Rogue
    .trainer >>Train Staves << Warlock/Mage/Priest
    .trainer >>Train 2h Swords << Warrior/Paladin
    >>|cRXP_WARN_Train 2h Swords if you have enough money. You must save 20s for later|r << Warrior
    >>|cRXP_WARN_Train 1h Swords as well if you still have money|r << Mage/Warlock
step << Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >> |cRXP_WARN_Buy a|r |T135346:0|t[Cutlass] |cRXP_WARN_and equip it in your Main-Hand|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.80 
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.79
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Allison
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1685 >> Turn in Gakin's Summons
    .target Gakin the Darkbinder
    .accept 1688 >> Accept Surena Caledon
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer by using |T136126:0|t[Life Tap] and standing on the Bonfire next to you
    .target Spirit Healer
step << Warlock
    #softcore
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Travel to Goldshire
step << Warlock
    #hardcore
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Exit Stormwind. Travel to Goldshire
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted: "Hogger"
    >>|cRXP_WARN_Choose the|r |T135145:0|t[|cRXP_FRIENDLY_Balanced Fighting Stick|r] |cRXP_WARN_as your reward. Equip it|r
    .turnin 123 >> Turn in The Collector
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted: "Hogger"
    >>|cRXP_WARN_Choose the|r |T135145:0|t[|cRXP_FRIENDLY_Balanced Fighting Stick|r] |cRXP_WARN_as your reward. Equip it|r
step << Warlock
    .xp 11 >> Grind to 11
step << Warlock
    #completewith next
    .goto Elwynn Forest,71.0,80.8,150 >> Travel to the Brackwell Pumpkin Patch
    >>|cRXP_WARN_Grind en-route. Try to level your Staff skill for later|r
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Kill |cRXP_ENEMY_Surena Caledon|r. Loot her for her |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_Surena Caledon|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    .goto Elwynn Forest,79.457,68.789
    .target Sara Timberlain
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Turn in Cloth and Leather Armor
step << Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Travel to Redridge Mountains
    >>|cRXP_WARN_Grind en-route. Make sure you have at least 2|r |T134075:0|t[Soul Shards] |cRXP_WARN_by using|r |T136163:0|t[Drain Soul]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Accept Encroaching Gnolls
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    >>|cRXP_WARN_Be careful of mobs en-route|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
step << Warlock
    #hardcore
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    >>|cRXP_WARN_STICK TO THE MAIN ROAD AND AVOID ANY CLOSE MOBS EN-ROUTE|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Turn in Surena Caledon
    .accept 1689 >> Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .cast 7728 >> |cRXP_WARN_Use the|r |T133292:0|t[Bloodstone Choker] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Kill the |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Turn in The Binding
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
    .target Osric Strang
    .accept 6261 >> Accept Dungar Longdrink
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >> Turn in A Warrior's Training
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >> Turn in Bartleby the Drunk
    .accept 1640 >> Accept Beat Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Attack |cRXP_ENEMY_Bartleby|r. He will submit at 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Turn in Beat Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> Turn in Bartleby's Mug
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .turnin 5635 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .train 13908 >> Train |T135954:0|t[Desperate Prayer]
    .target High Priestess Laurena
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step << Warrior
    #completewith next
    +|cRXP_WARN_Put|r |T132363:0|t[Sunder Armor] |cRXP_WARN_on your action bar and ensure to use it constantly. It is more effective than using|r |T132282:0|t[Heroic Strike]
step << Warrior/Paladin/Rogue
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaita Deepforge|r
    .vendor >>|cRXP_WARN_Buy a|r |T134708:0|t[Mining Pick]|cRXP_WARN_. You'll train|r |T134708:0|t[Mining] |cRXP_WARN_very soon|r
    .target Kaita Deepforge
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r << Rogue/Warrior/Paladin
step
    >>|cRXP_WARN_Get on the Tram once it arrives. Get off on the other side and look for |cRXP_FRIENDLY_Monty|r on the middle platform|r
    >>|cRXP_WARN_Cast|r |T136221:0|t[Summon Voidwalker] |cRXP_WARN_and|r |T135230:0|t[Create Healthstone] |cRXP_WARN_while waiting|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
step
    .use 17117 >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute] |cRXP_WARN_on|r |cRXP_ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    .target Monty
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .zone Ironforge >>Enter Ironforge
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r and |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 2567 >> Train Thrown
    .goto Ironforge,62.237,89.628
    .train 199 >> Train 2h Maces
    .goto Ironforge,61.177,89.508
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    .vendor >>|cRXP_WARN_Buy a|r |T135641:0|t[Balanced Throwing Dagger] and equip it|r
    .target Brenwyn Wintersteel
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Buy the following items for a faster turn in at Loch Modan shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T134342:0|t[Boar Intestines]
    >>|T134027:0|t[Bear Meat]
    >>|T134437:0|t[Spider Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
    #completewith Rudra
    .goto Dun Morogh,53.26,35.17
    .zone Dun Morogh >> Exit Ironforge
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Go up the dirt path
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cFFFCDC00Kite |cFFFF5722Vagash|r down to|r |cFF00FF25Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cFFFCDC00CLICK HERE If you're struggling|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.6,46.1
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_Watch the video below before you attempt to kill |cRXP_ENEMY_Vagash|r. It can be solo'd on any class|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >> |cRXP_WARN_Click here for video reference|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Turn in Protecting the Herd
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_if needed|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_if needed|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r and |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Accept The Public Servant
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Accept Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dank Drizzlecut|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Dank Drizzlecut
step << Warrior/Paladin/Rogue
    .cast 2580 >> |cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r and |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step << !Warlock
    .xp 10+6350 >>Grind until 6350+/7600
step << Warlock
    .xp 12
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r and |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Turn in The Public Servant
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_WARN_Vendor trash|r << !Priest !Warlock !Mage
    .vendor >> |cRXP_BUY_Buy 20|r |T132815:0|t[Ice Cold Milk] << Priest/Warlock/Mage
    .target Kazan Mogosh
step << !Warlock
    .xp 11
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    >>Click the |cRXP_PICK_Dwarven Corpse|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for his |cRXP_LOOT_Claw|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>Choose the dagger, use it as your offhand until you get a vendor sword << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    >>|cRXP_WARN_Choose the|r |T135641:0|t[|cRXP_FRIENDLY_Craftsman's Dagger|r] |cRXP_WARN_as your reward. Equip it in your Off-Hand|r << Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto Dun Morogh,84.4,31.1,25 >>Go through the tunnel to Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance
#name 11-13 Loch Modan
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 13-15 Westfall

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vendor and repair if needed|r
    .target Gothor Brumn
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    >>|cRXP_WARN_Do not accept Stormpike's Order yet|r
    .turnin 353 >> Turn in Stormpike's Delivery
    .accept 307 >> Accept Filthy Paws
    .target Mountaineer Stormpike
step
    #completewith ThelsamarFirst
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_Save any|r |T133970:0|t[Chunks of Boar Meat] |cRXP_WARN_to use for leveling |T133971:0|t[Cooking] |cRXP_WARN_later|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >> Travel to Thelsamar
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    #optional
    .isQuestComplete 418
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    #competewith StormpikeO
    .abandon 1338 >> Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task which will give a free 550xp turn in
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor >> |cRXP_WARN_Buy 1 or 2|r |T133634:0|t[Small Brown Pouches] |cRXP_WARN_if needed|r
    .target Yanni Stoutheart
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor 6734 >> |cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread]|cRXP_BUY_. Aim to have about 20|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and|r |T132815:0|t[Ice Cold Milk]|cRXP_BUY_. Aim to have about 10|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and 20|r |T132815:0|t[Ice Cold Milk] << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    #completewith StormpikeDelivery
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >> Enter the Silver Stream Mine
step
    #completewith next
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Open the |cRXP_PICK_Miners' League Crates|r. Loot them for the |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_The |cRXP_PICK_Miners' League Crates|r can be found all throughout the Mine|r
    >>|cRXP_WARN_You will be able to do this quest at a higher level if you wish to skip it for now|r
    .complete 307,1 -- Miners' Gear (4)
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nillen Andemar|r
    .vendor >>|cRXP_FRIENDLY_Nillen Andemar|r |cRXP_WARN_sells|r |T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r] |cRXP_WARN_which is a limited supply item|r
    >>|cRXP_WARN_Check to see if it's available and buy it if you can. If you can't afford it, then grind money from the nearby |cRXP_ENEMY_Tunnel Rats|r until you have enough|r
    >>|cRXP_WARN_Do this quickly as another player may purchase it before you do|r
    .target Nillen Andemar
step
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    >>|cRXP_WARN_Ensure you have 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your upcoming Paladin class quest|r << Paladin
    >>|cRXP_ENEMY_Tunnel Rats|r |cRXP_WARN_can spawn throughout Loch Modan. Check your World Map for their locations|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vendor and repair if needed|r
    .target Gothor Brumn
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .target Mountaineer Stormpike
step
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Turn in Rat Catching
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_WARN_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_WARN_along with 2|r |T135435:0|t[Simple Wood]|cRXP_WARN_. Buy any|r|T133634:0|t[Small Brown Pouches] |cRXP_WARN_if needed|r
    .collect 4470,1 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Get the Thelsamar flight path
    .target Thorgrum Borrelson
step
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Run up the dirt path then drop down into the bunker
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r in the bunker
    .target Captain Rugelfuss
    .accept 267 >> Accept The Trogg Threat
step
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,27.33,56.70
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Teeth|r
    >>|cRXP_WARN_Ensure you have 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your upcoming Paladin class quest|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    #completewith TroggT
    .money >0.7579
    .goto Loch Modan,27.33,56.70,0
    +Grind |cRXP_ENEMY_Troggs|r until you have 75s 79c worth of vendor trash/money
step << Warlock
    #era
    .goto Loch Modan,27.33,56.70,0
    .xp 13+9600 >>Grind until 9600+/11400xp
step << Warlock
    #som
    .xp 14-2520 >> Grind until you are 8880xp into level 13
step
    .goto Loch Modan,27.33,56.70
    +Continue grinding |cRXP_ENEMY_Troggs|r until <1m on your Hearth
    .cooldown item,6948,<60
step
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Run up the dirt path then drop down into the bunker
step
    .goto Loch Modan,23.233,73.675
    .target Captain Rugelfuss
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
step
    #label TroggT
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Turn in In Defense of the King's Lands
step << Warlock
    .xp 14 >> Grind to 14
step
    #completewith next
    .hs >> Hearth to Stormwind City
step << Warlock/Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Buy a|r |T135468:0|t[Smoldering Wand]|cRXP_BUY_. Equip it when you are 15|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
step << Warlock/Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Buy a|r |T135468:0|t[Smoldering Wand]|cRXP_BUY_. Equip it when you are 15 or check the Auction House for a|r |T135144:0|t[Greater Magic Wand]
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135468:0|t[Smoldering Wand]
    .use 5208
    .itemcount 5208,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.39
    .xp <15,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Consume Shadows (Rank 1)] |cRXP_BUY_and|r |T133738:0|t[Grimoire of Sacrifice (Rank 1)] |cRXP_BUY_if you can afford it|r
    .target Spackle Thornberry
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Travel to the Mage Tower
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Train your class spells
    .target Elsharin
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Accept The Tome of Divinity
    .turnin 1641 >> Turn in The Tome of Divinity
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    .use 6775>>|cRXP_WARN_Use the |T133464:0|t[|cRXP_LOOT_The Tome of Divinity|r] to start the quest|r
    .accept 1642 >>Accept The Tome of Divinity
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Turn in The Tome of Divinity
    .accept 1643 >>Accept The Tome of Divinity
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua
step
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step    
    .goto StormwindClassic,58.091,16.552
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Turn in The Tome of Divinity
    .target Stephanie Turner
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
    --.accept 1780 >> Accept The Tome of Divinity
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Marda Weller|r
    >>|cRXP_BUY_Buy 2|r |T135343:0|t[Scimitars] |cRXP_BUY_if you can afford it or something better from the Auction House|r
    >>|cRXP_WARN_Equip them both once you're level 14|r
    .collect 2027,2 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Marda Weller|r
    >>|cRXP_BUY_Buy 2|r |T135343:0|t[Scimitars] |cRXP_BUY_if you can afford it|r
    >>|cRXP_WARN_Equip them both once you're level 14|r
    .collect 2027,2 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135343:0|t[Scimitar]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Westfall and Darkshore shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T133972:0|t[Stringy Vulture Meat]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk Liver]
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
step
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .turnin 6261 >> Turn in Dungar Longdrink
    .target Dungar Longdrink
    .accept 6285 >> Accept Return to Lewis
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
]])

RXPGuides.RegisterGuide([[
#som
#phase 3-6
#classic
<< Alliance
#name 6-13 Elwynn Forest
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 13-14 Loch Modan
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
.target Marshal Dughan
    .accept 62 >> Accept The Fargodeep Mine
step
    #softcore
    #sticky
    #completewith Goldshire
    .goto Elwynn Forest,39.5,60.5,200 >> Die and respawn at the Spirit Healer, or run to Goldshire
step << Warrior/Paladin/Rogue
    .goto Elwynn Forest,41.706,65.544
    .trainer >> Train Blacksmithing from Argus. This will allow you to make +2 damage sharpening stones for your weapon which are very strong. << Warrior/Rogue
    .trainer >> Train Blacksmithing from Argus. This will allow you to make +2 damage weightstones for your weapon which are very strong. << Paladin
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step << Paladin
    #completewith Remy
    +Equip the |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5
step << Mage/Priest/Warlock
    #completewith next
    .goto Elwynn Forest,41.7,65.9
    .vendor >> vendor trash, repair
step
    #label Goldshire
    .goto Elwynn Forest,42.105,65.927
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
.target Marshal Dughan
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in the Inn
    .goto Elwynn Forest,42.9,65.7,15,0
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Talk to |cFF00FF25William Pestle|r
    .accept 60 >> Accept Kobold Candles
step
    .goto Elwynn Forest,43.771,65.803
    >>Do NOT buy any food/drink here << Warlock
.target Innkeeper Farley
>>Talk to |cFF00FF25Innkeeper Farley|r
    .turnin 2158,1 >> Turn in Rest and Relaxation << Rogue/Warrior
    .turnin 2158,2 >> Turn in Rest and Relaxation << !Rogue !Warrior
    .home >> Set your Hearthstone to Goldshire
step
    .xp 6 >> Grind to 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >> Buy the level 3 thrown from Brog. Equip it
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Go to the room behind the innkeeper, then go downstairs.
step << Warlock
    .goto Elwynn Forest,44.4,66.2
    .trainer >> Train your class spells
    .goto Elwynn Forest,44.4,66.0
    .vendor >> Buy the Blood Pact book if you have money after training (otherwise buy it later)
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,12 >>Go upstairs
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.283,65.721
>>Talk to |cFF00FF25Priestess Josetta|r
    .turnin 5623 >> Turn in In Favor of the Light
.target Priestess Josetta
    .accept 5624 >> Accept Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .money <0.01
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.4,65.5
    .train 3273 >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << Warrior
    .goto Elwynn Forest,43.771,65.803
    .vendor >> Buy level 5 food down to 1 Silver
step << Rogue
    .goto Elwynn Forest,43.771,65.803
    .vendor >> Buy up to 20 level 5 food
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    #label Remy
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>Talk to |cFF00FF25Remy "Two Times"|r
    .accept 47 >> Accept Gold Dust Exchange
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on Guard Roberts
    .goto Elwynn Forest,48.2,68.0
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #sticky
    #completewith BoarMeat1
    >>Start killing some boars you see for Boar Meat
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Talk to |cFF00FF25"Auntie" Bernice Stonefield|r
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cFF00FF25Ma Stonefield|r
    .accept 88 >> Accept Princess Must Die!
step
    #sticky
    #completewith Candles
    >> Get some Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step << Priest/Mage/Warlock
    #label Dust
    >>Grind mobs east through the outside of the mine
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step << Warrior
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your sword
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step << Rogue
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, make it into a Sharpening Stone via Blacksmithing, and apply it on your dagger
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step << Paladin
    #label Dust
    >>Grind mobs east through the outside of the mine. If you get a Rough Stone at any point, Make it into a Weightstone via Blacksmithing, and apply it to your mace
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Talk to |cFF00FF25Maybell Maclure|r
    .accept 106 >> Accept Young Lovers
step << Mage/Priest/Warlock
    .goto Elwynn Forest,42.4,89.4
    .vendor >>Vendor, buy as much milk as you can
step << !Mage !Priest !Warlock
    .goto Elwynn Forest,42.4,89.4
    .vendor >>vendor trash
step
    #completewith next
    >>Grind boars for Boar Meat en route
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.840,85.997
>>Talk to |cFF00FF25Tommy Joe Stonefield|r
    .turnin 106 >> Turn in Young Lovers
.target Tommy Joe Stonefield
    .accept 111 >> Accept Speak with Gramma
step
    .goto Elwynn Forest,32.5,85.5
    >>Finish off getting the Boar Meat
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
>>Talk to |cFF00FF25"Auntie" Bernice Stonefield|r
    .turnin 86 >> Turn in Pie for Billy
.target "Auntie" Bernice Stonefield
    .accept 84 >> Accept Back to Billy
step
    .goto Elwynn Forest,34.9,83.9
>>Talk to |cFF00FF25Gramma Stonefield|r
    .turnin 111 >> Turn in Speak with Gramma
.target Gramma Stonefield
    .accept 107 >> Accept Note to William
step
    #sticky
    #label KoboldCandles
    >> Get some Candles from nearby Kobolds
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label GoldDust
    >> Get some Gold Dust from nearby Kobolds
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>Grind mobs east through the outside of the mine
    .goto Elwynn Forest,43.132,85.722
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 84 >> Turn in Back to Billy
.target Billy Maclure
    .accept 87 >> Accept Goldtooth
step
    >>Go into the mine
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step << Warrior
    >>Pool as much rage as you can (grind Rage off of other mobs) then kill Goldtooth for Bernice's Necklace
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step << !Warrior
    >>Kill Goldtooth for Bernice's Necklace
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step << Warrior
    #sticky
    #completewith Goldtooth
    +Try to save a single healing potion from now on as you will need it for Rolf's Corpse later
step << Warrior/Rogue
    >>Remember to make Sharpening Stones if you picked up a Rough Stone
    .xp 7+880 >>Grind until 880+/4500xp
step << Paladin
    >>Remember to make Weightstones if you picked up a Rough Stone
    .xp 7+880 >>Grind until 880+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+880 >>Grind until 880+/4500xp
step << Priest
    .xp 7+200 >>Grind until 200+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #softcore
    #requires GoldDust
    #completewith next
    .deathskip >> Die and respawn in Goldshire
step
    #requires GoldDust
    #label Goldtooth
    .goto Elwynn Forest,42.1,67.3
>>Talk to |cFF00FF25Remy "Two Times"|r
    .turnin 47 >> Turn in Gold Dust Exchange
.target Remy "Two Times"
    .accept 40 >> Accept A Fishy Peril
step
    .goto Elwynn Forest,42.105,65.927
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
.target Marshal Dughan
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
step
    #completewith next
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << Warrior
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2488,1
step << Rogue
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2494,1
step << Paladin
    .goto Elwynn Forest,41.5,65.9
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Corina. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet
step
    .goto Elwynn Forest,43.283,65.721
>>Talk to |cFF00FF25William Pestle|r
    .turnin 60 >> Turn in Kobold Candles
.target William Pestle
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
step
    .xp 8 >> Grind to 8
step << Warlock
    >>Go back into the basement
    .goto Elwynn Forest,44.4,66.2
    .trainer >> Train your class spells
    .goto Elwynn Forest,44.4,66.0
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>Buy a 6 slot bag from Brog
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step << Mage/Priest/Rogue/Warrior
    #completewith next
    .goto Elwynn Forest,43.7,66.4,15 >>Go upstairs
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Priest
    .goto Elwynn Forest,43.283,65.721
.target Priestess Josetta
>>Talk to |cFF00FF25Priestess Josetta|r
    .turnin 5624 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    .trainer >> Train your class spells
step << Rogue/Warrior/Paladin
    .money <0.01
    .goto Elwynn Forest,43.4,65.5
    .trainer >> Train First Aid - Don't make all your bandages at once, better time to make them later
step << !Warrior !Rogue
    .goto Elwynn Forest,43.771,65.803
    .vendor >>Buy level 5 Water up to 40
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    .vendor 295 >>Buy level 5 Food up to 40
step
    >>Grind Murlocs toward the east and loot them for Kelp Frond. kill mobs on the island if you still need some
    .goto Elwynn Forest,47.6,63.3,100,0
    .goto Elwynn Forest,51.4,64.6,100,0
    .goto Elwynn Forest,57.6,62.8,100,0
    .goto Elwynn Forest,56.4,66.6,100,0
    .goto Elwynn Forest,53.8,66.8,100,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>Go in the mine, and keep following the middle path
    .goto Elwynn Forest,61.8,54.0,70,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
>>Talk to |cFF00FF25Guard Thomas|r
    .turnin 35 >> Turn in Further Concerns
.target Guard Thomas
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step
    #sticky
    #completewith Prowlers
    >>Kill Prowlers as you do other quests
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Bears
    >>Kill Bears as you do other quests. Kill any you see
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Talk to |cFF00FF25Supervisor Raelen|r
    .accept 5545 >> Accept A Bundle of Trouble
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash, repair
step << Paladin
    #softcore
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4,100,0
    .goto Elwynn Forest,83.7,59.4,100,0
    .goto Elwynn Forest,76.8,62.4
    >>Get bundles of wood at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << Paladin
    #hardcore
    #completewith Bundles
    >>Keep an eye out for the bundles of logs at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step << !Paladin
    #sticky
    #completewith next
    >>Keep an eye out for the bundles of logs at the base of the trees
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,90 >> Go toward the guard's corpse
step << Priest
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Precast Renew and Shield, get full mana, then pull the 2 mobs in front of the huts, move away, then nuke one. Run away when you kill one, then kill the other. Loot the carcass on the ground
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << !Paladin
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and sheep one whilst killing the other, then kill the sheeped mob. Loot the carcass on the ground << Mage
    >> Pool Rage, then kill the 2 mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and keep one hamstrung whilst killing the other. Run away when you kill one (use marbles on it), then pull and kill the other. Loot the carcass on the ground << Warrior
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away and nuke one mob. Use Evasion. Run away when you kill one, then kill the other. Loot the carcass on the ground << Rogue
     >>Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away then keep one feared, and try to keep dots on both. Then loot the carcass on the ground << Warlock
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #softcore
    .goto Elwynn Forest,79.8,55.5
    >> Run on top of the corpse, then use Divine Protection and IMMEDIATELY loot the corpse, handin, and accept the quest. You'll die after
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #hardcore
    .goto Elwynn Forest,79.8,55.5
    >> Kill mobs surrounding the corpse. Pull the 2 mobs in front of the huts, move away, and nuke one of the hut mobs. Bubble, heal/run away if needed, then come back and kill the other mob
    >> Be careful as this quest is difficult
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step << Paladin
    #softcore
    #sticky
    #completewith Bundles2
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer, or start running back if someone cleared the corpse prior
step
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    >>Start running back, finish off the bundles
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>Talk to |cFF00FF25Supervisor Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #label Prowlers
    .xp 9 >> Grind to 9
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Talk to |cFF00FF25Sara Timberlain|r
    .accept 83 >> Accept Red Linen Goods
step
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6,100,0
    .goto Elwynn Forest,79.7,83.7,100,0
    .goto Elwynn Forest,82.0,76.8,100,0
    .goto Elwynn Forest,76.7,75.6
    >>Kill the last mobs for Protect the Frontier
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,73.973,72.179
>>Talk to |cFF00FF25Guard Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
.target Guard Thomas
    .accept 39 >> Accept Deliver Thomas' Report
.target Deputy Rainer
.target Marshal Haggard
.target Marshal Dughan
.target Farmer Furlbrow
.target Farmer Saldean
-->>Talk to |cFF00FF25Farmer Saldean|r
-->>Talk to |cFF00FF25Farmer Furlbrow|r
-->>Talk to |cFF00FF25Marshal Dughan|r
--
-->>Talk to |cFF00FF25Marshal Haggard|r
-->>Talk to |cFF00FF25Deputy Rainer|r
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
    #sticky
    #completewith Deed
    >>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    .goto Elwynn Forest,69.53,79.47
    >>Start circling the farm, killing Defias and looting them for Bandanas
    .complete 83,1 --Collect Red Linen Bandana (x6)
step << Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Pool Rage, then kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    .complete 88,1 --Collect Brass Collar (x1)
step << Rogue
    .goto Elwynn Forest,69.4,79.2
    >>Make sure Evasion is up, then kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    .complete 88,1 --Collect Brass Collar (x1)
step << !Rogue !Warrior
    .goto Elwynn Forest,69.4,79.2
    >>Kill Princess. Use a Lesser Heal Potion from before if needed. Loot her for the Collar
    >>If you're struggling, you can use the Fence to abuse pathing and buy time
    .complete 88,1 --Collect Brass Collar (x1)
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> Click here if struggling
step << !Warlock !Warrior
    .goto Elwynn Forest,69.4,79.2
    .xp 10+200 >> Grind until 200+/7600xp into level 10
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
step
    #label Deed
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>Talk to |cFF00FF25Sara Timberlain|r
    .turnin 83 >> Turn in Red Linen Goods
step << !Warlock
    #softcore
    .goto Elwynn Forest,83.3,66.1
    .vendor >> vendor trash, repair
step << !Warlock !Warrior
    .goto Redridge Mountains,8.5,72.0
    .xp 10+1800 >> Grind until 1800+/7600xp into level 10
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .zone Redridge Mountains >> Travel east to Redridge Mountains
step << !Warlock
    #softcore
    #sticky
    #completewith next
    +Die to the mobs here
    .goto Redridge Mountains,11.2,78.4
step << !Warlock
    #softcore
    .goto Redridge Mountains,20.8,56.6,100 >>Respawn at the Spirit Healer
step << !Warlock
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step << !Warlock
    #hardcore
    >>Run toward the Flight Path. Be exceedingly careful to not aggro or die to any mobs en route. Try sticking to the road and keeping an eye out
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    .hs >> Hearth to Goldshire
step
    .goto Elwynn Forest,43.283,65.721
    >>Don't wait for his rp event
.target William Pestle
>>Talk to |cFF00FF25William Pestle|r
    .turnin 112 >> Turn in Collecting Kelp
step << Warrior/Rogue
    .goto Elwynn Forest,43.4,65.6
    >>Speak with the first aid trainer upstairs
    .train 3273 >> Train First Aid
step
    .goto Elwynn Forest,42.2,65.8
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
.target Marshal Dughan
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .accept 59 >>Accept Cloth and Leather Armor << Warlock
step
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>Talk to |cFF00FF25Verner Osgood|r
-->>Talk to |cFF00FF25Smith Argus|r
    .accept 1097 >> Accept Elmore's Task
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vendor trash, repair
step << Warrior
    .goto Elwynn Forest,41.087,65.768
.target Ilsa Corbin
.target Lyria Du Lac
>>Talk to |cFF00FF25Lyria Du Lac|r
-->>Talk to |cFF00FF25Ilsa Corbin|r
    .accept 1638 >> Accept A Warrior's Training
    .trainer >> Train your class spells
step << Paladin
    .goto Elwynn Forest,41.1,66.0
    .trainer >> Train your class spells
step
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Talk to |cFF00FF25William Pestle|r
    .accept 114 >> Accept The Escape
step << Warlock
    >>Go back down into the basement
    .goto Elwynn Forest,44.4,66.2
.target Remen Marcot
>>Talk to |cFF00FF25Remen Marcot|r
    .accept 1685 >> Accept Gakin's Summons
    .trainer >> Train your class spells
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Go Upstairs
step << Priest
    .goto Elwynn Forest,43.283,65.721
.target Priestess Josetta
>>Talk to |cFF00FF25Priestess Josetta|r
    .accept 5635 >> Accept Desperate Prayer
    .trainer >> Train your class spells
step << Mage
    .goto Elwynn Forest,43.2,66.2
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,43.9,65.9
    >>Don't worry about not having 2 weapons, we'll get another soon
    >>Be VERY careful about your money when training here. Make sure you train Dual Wield and Sprint and skip others
    .trainer >> Train your class spells
step << Rogue
    .goto Elwynn Forest,41.7,65.9
    .vendor >>Buy Stiletto for your Offhand
step
    >>Run out of the inn and go south
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>Talk to |cFF00FF25Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>Talk to |cFF00FF25Ma Stonefield|r
    .turnin 88,1 >> Turn in Princess Must Die! << Rogue/Hunter
    .turnin 88,2 >> Turn in Princess Must Die! << Warrior/Paladin
    .turnin 88,3 >> Turn in Princess Must Die! << !Rogue !Hunter !Warrior !Paladin
step
    .goto Elwynn Forest,34.486,84.253
.target "Auntie" Bernice Stonefield
>>Talk to |cFF00FF25"Auntie" Bernice Stonefield|r
    .turnin 87 >> Turn in Goldtooth
step << Warlock
    >>Click any of the wanted posters around
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step
    .goto Elwynn Forest,24.2,74.5
>>Talk to |cFF00FF25Deputy Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
.target Deputy Rainer
    .accept 11 >> Accept Riverpaw Gnoll Bounty << Warlock/Warrior
step << Warrior
    >>If you have 31s 74c+ of vendorables/money, skip the Painted Gnoll Armband quest
    >>If you have less, skip this step
    >>This is for thrown, 2h mace, and 2h sword training. It's also for level 11 thrown, and flying to Stormwind
    .abandon 11 >> Abandon Riverpaw Gnoll Bounty
    .goto Elwynn Forest,27.6,93.0
step << Warlock/Warrior
    #sticky
    #completewith Armbands
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). extra 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
step << Warlock
    #label Hogger
    .unitscan Hogger
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,24.24,80.67,0
    >>Hogger can be in multiple spots in the area. Keep him fear chained, and/or kite him at <60% hp to the tower at 24,80. Loot him for his Claw
    >>Be careful as he can be feared into other mobs, hits hard, and can stun
    .complete 176,1 --Collect Huge Gnoll Claw (1)
step << Warlock/Warrior
    #label Armbands
    .goto Elwynn Forest,27.0,93.9
    >> Kill Gnolls. Loot them for Armbands
    .complete 11,1 --Collect Painted Gnoll Armband (8)
    .isOnQuest 11
step << Warrior
    .money >0.3174
    >>Grind a bit until you have 31s 74c+ of vendorables/money
    >>This is for thrown, 2h mace, and 2h sword training. It's also for level 11 thrown, and flying to Stormwind
    .goto Elwynn Forest,27.6,93.0
step << Warlock/Warrior
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>Talk to |cFF00FF25Deputy Rainer|r
    .turnin 11 >> Turn in Riverpaw Gnoll Bounty
    .isOnQuest 11
step
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>Talk to |cFF00FF25Farmer Furlbrow|r
    .turnin 184 >> Turn in Furlbrow's Deed
    .isOnQuest 184
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>Talk to |cFF00FF25Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
step
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>Talk to |cFF00FF25Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >> Die and respawn at the Spirit Healer, or run to Sentinel Hill
step
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>Talk to |cFF00FF25Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
step << Human
    .goto Westfall,57.002,47.169
    .vendor >>vendor trash
.target Quartermaster Lewis
>>Talk to |cFF00FF25Quartermaster Lewis|r
    .accept 6181 >> Accept A Swift Message
step
    .goto Westfall,56.6,52.6
>>Talk to |cFF00FF25Thor|r
    .turnin 6181 >> Turn in A Swift Message << Human
.target Thor
    .accept 6281 >> Accept Continue To Stormwind << Human
step
    .goto Westfall,56.6,52.6
    .fly Stormwind >> Fly to Stormwind
step << Rogue/Warrior
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Buy the level 11 thrown from Thurman. Equip it << Rogue
    .vendor >> Buy the level 11 thrown from Thurman. You'll equip it later << Warrior
step
    .goto StormwindClassic,56.2,64.6
    >>Choose the Rockets as the reward. These have very good damage, and can be used for splitpulling
.target Morgan Pestle
>>Talk to |cFF00FF25Morgan Pestle|r
    .turnin 61 >> Turn in Shipment to Stormwind
step << Warrior
    .goto StormwindClassic,57.1,57.7
    .trainer >> Train 2h Swords if you have spare money. You must save 20s for later
step << Priest/Mage/Warlock
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train Staves
step << Rogue
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 1h Swords
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >>Buy a Cutlass from Gunther and equip it, Stiletto in Offhand
    >>If you don't have enough money, skip this step
step << Paladin
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 2h Swords
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.2,78.5
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1685 >> Turn in Gakin's Summons
.target Gakin the Darkbinder
    .accept 1688 >> Accept Surena Caledon
step << Warlock
    .goto StormwindClassic,26.44,78.66
     .trainer >> Train your class spells << Warlock
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Run back out of Stormwind to Elwynn
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
.target Marshal Dughan
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 123 >> Turn in The Collector
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
.target Marshal Dughan
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
step << Warlock
    .xp 11 >> Grind to 11
step << Warlock
    >>Grind en route, try to level your staves skill for later
    >>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena. Loot her for her Choker
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Collect Surena's Choker (x1)
step << Warlock
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>Talk to |cFF00FF25Sara Timberlain|r
    .turnin 59 >> Turn in Cloth and Leather Armor
step << Warlock
    #sticky
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Grind en route to Redridge, make sure to have at least 2 Soul Shards (using Drain Soul)
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
.target Guard Parker
>>Talk to |cFF00FF25Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
step << Warlock
    >>Be careful of the mobs en route
    .goto Redridge Mountains,30.733,59.996
.target Deputy Feldon
>>Talk to |cFF00FF25Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
step << Warlock
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind
step << Warlock
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,25.2,78.5
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1688 >> Turn in Surena Caledon
.target Gakin the Darkbinder
    .accept 1689 >> Accept The Binding
step << Warlock
    .goto StormwindClassic,25.2,80.7,14,0
    .goto StormwindClassic,23.2,79.5,14,0
    .goto StormwindClassic,26.3,79.5,14,0
    .goto StormwindClassic,25.5,78.1
    >>Go to the bottom of the crypt. Summon the Voidwalker using the Bloodstone Choker and kill it
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step << Warlock
    .goto StormwindClassic,25.2,78.5
    >>Don't summon your voidwalker once you learn it
.target Gakin the Darkbinder
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1689 >> Turn in The Binding
step << Human
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>Talk to |cFF00FF25Osric Strang|r
    .turnin 6281 >> Turn in Continue to Stormwind
step << !Mage !Warlock
    .goto StormwindClassic,42.66,33.75,30,0 << Paladin/Priest
     .goto StormwindClassic,38.68,32.85 << Paladin
    .goto StormwindClassic,38.54,26.86 << Priest
    .goto StormwindClassic,74.91,51.55,20,0 << Warrior
    .goto StormwindClassic,78.67,45.80 << Warrior
    .goto StormwindClassic,74.64,52.82 << Rogue
    .trainer >> Train your class spells
step << Warrior
     >>Enter the inn
    .goto StormwindClassic,71.7,39.9,20,0
    .goto StormwindClassic,74.3,37.3
>>Talk to |cFF00FF25Harry Burlguard|r
    .turnin 1638 >> Turn in A Warrior's Training
.target Harry Burlguard
    .accept 1639 >> Accept Bartleby the Drunk
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cFF00FF25Bartleby|r
    .turnin 1639 >> Turn in Bartleby the Drunk
.target Bartleby
    .accept 1640 >> Accept Beat Bartleby
    .complete 1640,1 --Beat Bartleby
step << Warrior
    .goto StormwindClassic,73.8,36.3
>>Talk to |cFF00FF25Bartleby|r
    .turnin 1640 >> Turn in Beat Bartleby
.target Bartleby
    .accept 1665 >> Accept Bartleby's Mug
step << Warrior
    >>You'll now learn Defensive Stance and Sunder Armor
    .goto StormwindClassic,74.3,37.3
.target Harry Burlguard
>>Talk to |cFF00FF25Harry Burlguard|r
    .turnin 1665 >> Turn in Bartleby's Mug
step << Priest
    #completewith next
    .goto StormwindClassic,38.8,26.4
.target High Priestess Laurena
>>Talk to |cFF00FF25High Priestess Laurena|r
    .turnin 5635 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    .train 13908 >> Train Desperate Prayer
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step << Warrior/Paladin/Rogue
    >>Put Sunder Armor on your bars (it's better damage than Heroic Strike) << Warrior
    .goto StormwindClassic,56.3,17.0
    .vendor >>Buy a Mining Pick. You'll train Mining later
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>Enter the Deeprun Tram
step
    >>Take the tram when it arrives, then get off when it arrives on the other side << !Rogue !Warrior !Paladin !Warlock
    >>Take the tram when it arrives. Make bandages whilst waiting for the tram and when you get on it. Accept q when you get to the other side << Rogue/Warrior/Paladin
    >>Take the tram when it arrives. Cast Summon Voidwalker and Create Healthstone. Get off the tram on the other side << Warlock
.target Monty
>>Talk to |cFF00FF25Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>Talk to |cFF00FF25Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
step
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Enter Ironforge
step
    .goto Ironforge,55.501,47.742
    .fp Ironforge >> Get the Ironforge flight path
step << Mage
    .goto Ironforge,27.17,8.57
    .trainer >> Train your class spells
step << Warrior
    .goto Ironforge,61.2,89.5
    .trainer >>Train 2h Maces and Thrown
step
    .goto Ironforge,18.22,51.44
    .home >> Set your Hearthstone to Ironforge
step
    #sticky
    #som
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
    >>Equip your level 11 thrown << Warrior
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest can be difficult
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> CLICK HERE for a guide on how to solo Vagash
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy food+water << !Rogue !Warrior
    .vendor >>Vendor, buy food << Rogue/Warrior
step
    #requires Cooking
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,69.3,55.5
    .train 2575 >>Train Mining, cast Find Minerals
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39
    >>Kill Troggs in the cave
    >>Keep an eye out for nodes to get more rough stones. << Rogue/Warrior/Paladin
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>Vendor, buy x30 level 5 drink << Mage/Warlock/Priest
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    >>Click the Dwarf Corpse
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,78.9,37.0
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
    >>Choose the dagger, use it as your offhand until you get a vendor sword << Rogue
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto Dun Morogh,84.4,31.1,25 >>Go through the tunnel to Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance
#name 13-14 Loch Modan
#version 1
#group RestedXP Alliance 1-20
#defaultfor Human
#next 14-19 Darkshore
step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>Vendor and repair
step
    .goto Loch Modan,24.764,18.397
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
.target Mountaineer Stormpike
    .accept 307 >> Accept Filthy Paws
step
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >> Get the Thelsamar flight path
step
    #sticky
    #label StormpikeO
    .abandon 1338 >> Abandon Stormpike's Order. This is to unlock Mountaineer Stormpike's Task
step
    .goto Loch Modan,34.8,48.6
    >>Run to the Inn inside Thelsamar
    .vendor >>Buy 1-2 6 slot bags
step
    .goto Loch Modan,35.5,48.4
    .vendor >> Buy food/water (try to have 20 level 5 drink, 10 level 5 food) << Priest/Mage/Warlock/Paladin
    .vendor >> Buy food, try to have about 20 level 5 food << Rogue/Warrior
step
    #requires StormpikeO
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    #completewith Gearbois
    .goto Loch Modan,38.66,18.72,0
    >> Kill Kobolds. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10 << Paladin
step
    .goto Loch Modan,35.5,18.2,45 >>Go to the entrance of the cave whilst killing rats
step
    #label Gearbois
    .goto Loch Modan,36.3,24.7
    >>Collect the crates you find in the cave. Be careful because this is difficult at level 11
    >>Be careful as the Geomancers cast Flame Ward (Fire immunity) after a few seconds << Mage/Warlock
    >>You can backtrack after looting one further in the cave, as the crates can respawn behind you
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,38.66,18.72
    >> Kill Kobolds. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10 << Paladin
step
    .goto Loch Modan,38.66,18.72
    .xp 13+5850 >> Grind Kobolds to 5850+/11400xp
step
    .goto Loch Modan,23.3,17.9,45 >>Run back to the bunker
step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>vendor and repair
step
    .goto Loch Modan,24.7,18.3
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
.target Mountaineer Stormpike
    .accept 1338 >> Accept Stormpike's Order
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn back at Thelsamar
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
    .turnin 416 >> Turn in Rat Catching
step
    .hs >> Hearth to Ironforge
    .vendor >> vendor trash
step << Warlock/Priest
    #softcore
    #label Wand1
    #completewith Wand2
     >>Alternatively, buy a Greater Magic Wand from the AH if it costs <33s 40c
    .goto Ironforge,25.77,75.43
    .collect 11288,1 --Greater Magic Wand (1)
step << Warlock/Priest
    #softcore
    #label Wand2
    #completewith Wand1
     >>Go in the building. Buy a Smoldering Wand
    >>If you don't have at least 33s 40c and can't afford the Greater Magic Wand, skip this step
    .goto Ironforge,23.32,17.62,20,0
    .goto Ironforge,23.12,15.93
    .collect 5208,1 --Smoldering Wand (1)
step << Warlock/Priest
    #hardcore
    .money <0.3340
     >>Go in the building. Buy a Smoldering Wand
    .goto Ironforge,23.32,17.62,20,0
    .goto Ironforge,23.12,15.93
    .collect 5208,1 --Smoldering Wand (1)
step << Warlock
    .goto Ironforge,51.1,8.7,18 >>Enter the building
    .goto Ironforge,50.4,6.3
    .trainer >> Train your class spells
step << Warlock
    .goto Ironforge,53.2,7.8,18 >>Enter the building
    .goto Ironforge,53.0,6.4
    .vendor >>Buy Consume Shadows r1, then Sacrifice r1
step << !Druid
    .goto Ironforge,69.88,82.90 << Hunter
    .goto Ironforge,65.90,88.41 << Warrior
    .goto Ironforge,50.34,5.67 << Warlock
    .goto Ironforge,51.50,15.34 << Rogue
    .goto Ironforge,25.21,10.75 << Priest
    .goto Ironforge,27.17,8.57 << Mage
    .goto Ironforge,24.55,4.46 << Paladin
     .trainer >> Train your class spells
step
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the skip spot
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>Open this link and follow it on another screen.
    >>Do the Deathless Dun Morogh -> Wetlands skip
    >>Avoid the Crocodiles when crossing the sea
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for reference
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
step
    #softcore
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,20 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>Keep running straight north, drop down and die, then respawn
step
    #softcore
    .goto Wetlands,12.7,46.7,80 >> Swim to shore
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.7,56.8
    .vendor >> If you have 8s, Check for Bronze Tube from Neal Allen and buy it if it's there
step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step
    .money <0.04
    .goto Wetlands,8.1,56.3
    .vendor >> In the building, check Dewin for Heal Potions, buy down to 1s
step
    .goto Wetlands,4.7,57.3
    .zone Darkshore >>Get onto the boat when it comes. Take it to Darkshore.
    >>Train first aid while waiting for the boat if you have linen, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
]])

