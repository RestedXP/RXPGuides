RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Crusader Strike - 4 (Elwynn Forest)
#next Inspiration Exemplar - 6 (Elwynn Forest)

--VV Not sure if you want to gate CS in Elwynn for humans only/DunM for dwarves only

step
    #completewith LibramS
    +|cRXP_WARN_You MUST be at least level 4 in order to acquire|r |T133816:0|t[Engrave Gloves: Crusader Strike] |cRXP_WARN_due to it being the level requirement of|r |T135959:0|t[Judgement]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Elwynn1
    .zone Elwynn Forest >> Travel to Elwynn Forest
    .train 410002,1
    .xp >4,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,48.35,41.97,15,0
    .goto Elwynn Forest,48.87,41.75,12,0
    .goto Elwynn Forest,49.61,41.87,12,0
    .goto Elwynn Forest,50.433,42.124,10 >>Travel toward |cRXP_FRIENDLY_Brother Sammuel|r inside
    .train 410002,1
    .xp <4,1
step
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sammuel|r
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Brother Sammuel
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--XX  .itemStat 18,QUALITY,<2 would bug it if someone has a Libram in the slot already
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .aura 408828 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves: Crusader Strike]
    .use 205420
    .aura 408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Crusader Strike - 4 (Dun Morogh)
#next Inspiration Exemplar - 6 (Dun Morogh)

step
    #completewith LibramS
    +|cRXP_WARN_You MUST be at least level 4 in order to acquire|r |T133816:0|t[Engrave Gloves: Crusader Strike] |cRXP_WARN_due to it being the level requirement of|r |T135959:0|t[Judgement]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >> Travel to Dun Morogh
    .train 410002,1
    .xp >4,1
step
    #completewith next
    #requires Dun1
    .goto Dun Morogh,28.83,69.07,12,0
    .goto Dun Morogh,28.83,68.70,10,0
    .goto Dun Morogh,28.93,68.35,10,0
    .goto Dun Morogh,28.833,68.332,10 >>Travel toward |cRXP_FRIENDLY_Bromos Grummner|r inside
    .train 410002,1
    .xp <4,1
step
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Bromos Grummner
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Dun Morogh,26.59,79.16,40,0
    .goto Dun Morogh,23.39,80.31,40,0
    .goto Dun Morogh,22.60,79.50,40,0
    .goto Dun Morogh,20.74,75.69,40,0
    .goto Dun Morogh,22.60,79.50,40,0
    .goto Dun Morogh,23.39,80.31,40,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--XX  .itemStat 18,QUALITY,<2 would bug it if someone has a Libram in the slot already
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Dun Morogh,26.59,79.16,40,0
    .goto Dun Morogh,23.39,80.31,40,0
    .goto Dun Morogh,22.60,79.50,40,0
    .goto Dun Morogh,20.74,75.69,40,0
    .goto Dun Morogh,22.60,79.50,40,0
    .goto Dun Morogh,23.39,80.31,40,0
    .aura 408828 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves: Crusader Strike]
    .use 205420
    .aura 408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Hand of Reckoning - 14 (Loch Modan)
#next Inspiration Exemplar - 6 (Elwynn Forest)

step
    #completewith Cave1
    +|cRXP_WARN_You should be at least level 14 in order to acquire|r |T133816:0|t[Engrave Gloves: Hand of Reckoning] |cRXP_WARN_in Loch Modan alone. You MUST be level 8 to equip it|r
    .train 410001,1
    .xp >14,1
step
    #completewith next
    .zone Ironforge >>Travel to Ironforge
    .train 410001,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .train 853 >> Train |T135963:0|t[Hammer of Justice]
    .target Brandur Ironhammer
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #label Loch1
    .zone Loch Modan >> Travel to Loch Modan
    .train 410001,1
    .xp <8,1
step
    #completewith LibramLoot
    #requires Loch1
    #label Cave1
    .goto Loch Modan,28.75,64.63,40,0
    .goto Loch Modan,35.35,83.51,20,0
    .goto Loch Modan,34.89,84.38,30 >>Travel toward the Stonesplinter Cave
    .train 410001,1
    .xp <8,1
step
    #completewith next
    #requires Cave1
    .goto Loch Modan,34.24,85.59,12,0
    .goto Loch Modan,35.90,87.93,12,0
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,36.75,91.43,8 >>Travel toward the |cRXP_PICK_Sunken Reliquary|r inside the cave underwater
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,70.96,73.08
    >>Open the |cRXP_PICK_Sunken Reliquary|r underwater. Loot it for the |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r
    .collect 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    .equip 18,205420 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <11,1
step
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,35.90,87.93,15,0
    .goto Loch Modan,34.24,85.59,15,0
    .goto Loch Modan,34.89,84.38,30 >>Exit the cave
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Loch Modan,31.93,79.12,30,0
    .goto Loch Modan,31.02,80.64,30,0
    .goto Loch Modan,31.56,76.89,30,0
    .goto Loch Modan,30.90,74.35,30,0
    .goto Loch Modan,29.75,72.57,30,0
    .goto Loch Modan,33.43,70.60,30,0
    .goto Loch Modan,35.36,71.21,30,0
    .goto Loch Modan,32.86,79.70,30,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp >16,1
    .xp <8,1
step
    #loop
    .goto Loch Modan,35.66,83.64,20,0
    .goto Loch Modan,36.86,84.93,20,0
    .goto Loch Modan,36.50,80.01,20,0
    .goto Loch Modan,33.96,81.82,20,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Stonesplinter Skullthumper
    .mob Stonesplinter Seer
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp >19,1
    .xp <16,1
step
    #loop
    .goto Loch Modan,69.61,67.92,30,0
    .goto Loch Modan,72.12,68.29,30,0
    .goto Loch Modan,72.59,61.75,30,0
    .goto Loch Modan,70.33,59.84,30,0
    .goto Loch Modan,67.37,59.88,30,0
    .goto Loch Modan,67.77,62.99,30,0
    .goto Loch Modan,70.41,62.93,30,0
    .goto Loch Modan,69.69,65.52,30,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
    .mob Berserk Trogg
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp >22,1
    .xp <20,1
step
    #completewith next
    .zone Wetlands >> Travel to the Wetlands
    .itemStat 18,QUALITY,2
    .aura 408828
    .train 410001,1
    .xp <22,1
step
    #loop
    .goto Wetlands,15.96,47.28,40,0
    .goto Wetlands,13.69,41.37,40,0
    .goto Wetlands,13.59,38.04,40,0
    .goto Wetlands,15.30,38.81,40,0
    .goto Wetlands,18.45,39.37,40,0
    .goto Wetlands,19.24,41.29,40,0
    .goto Wetlands,13.69,41.37,40,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Young Wetlands Crocolisk
    .mob Fen Dweller
    .mob Bluegill Murloc
    .mob Bluegill Forager
    .mob Bluegill Puddlejumper
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves: Hand of Reckoning]
    .aura 408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Gloves
#name Hand of Reckoning - 20 (Westfall)
#next Exorcist - 24 (Duskwood)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 20 in order to acquire|r |T133816:0|t[Engrave Gloves: Hand of Reckoning] |cRXP_WARN_in Westfall alone. You MUST be level 8 to equip it|r
-- >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier and can be acquired at a lower level|r
    .train 410001,1
    .xp >20,1
step << skip
    #completewith LibramS
    +|cRXP_WARN_It is heavily recommended you get |T133816:0|t[Engrave Gloves: Hand of Reckoning] in Loch Modan instead as it is a LOT easier|r
    .train 410001,1
    .xp <20,1
step
    #completewith next
    .zone Stormwind City >>Travel to Stormwind
    .train 410001,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 853 >> Train |T135963:0|t[Hammer of Justice]
    .target Arthur the Faithful
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .zone Westfall >> Travel to Westfall
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,69.71,73.41,30,0
    .goto Westfall,70.96,73.08,30,0
    .goto Duskwood,12.17,74.76,30,0
    .goto Westfall,70.96,73.08
    >>Kill |cRXP_ENEMY_Defias Drones|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Defias Drones|r patrol in a pack of two|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Malformed Defias Drone|r as he hits VERY hard|r
    .collect 208851,1 --Libram of Justice (1)
    .mob Defias Drone
    .train 410001,1
    .xp <8,1
--XX Venture Co. Drones drop it too?
step
    .equip 18,205420 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Elwynn Forest,24.50,93.99,40,0
    .goto Elwynn Forest,26.07,91.92,40,0
    .goto Elwynn Forest,27.85,88.18,40,0
    .goto Elwynn Forest,27.56,86.21,40,0
    .goto Elwynn Forest,26.43,86.81,40,0
    .goto Elwynn Forest,25.18,89.20,40,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp >14,1
    .xp <8,1
step
    #loop
    .goto Westfall,69.71,73.41,30,0
    .goto Westfall,64.54,60.81,30,0
    .goto Westfall,62.62,58.29,30,0
    .goto Westfall,60.87,58.71,30,0
    .goto Westfall,58.71,61.21,30,0
    .goto Westfall,61.43,62.17,30,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Great Goretusk
    .mob Harvest Reaper
    .mob Greater Fleshripper
    .mob Defias Knuckleduster
    .mob Defias Highwayman
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp >22,1
    .xp <14,1
step
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,12.65,69.42,50,0
    .goto Duskwood,10.42,66.27,50,0
    .goto Duskwood,10.30,59.05,50,0
    .goto Duskwood,10.75,52.37,50,0
    .goto Duskwood,8.83,45.35,50,0
    .goto Duskwood,8.75,40.20,50,0
    .goto Duskwood,10.99,34.29,50,0
    .goto Duskwood,11.07,29.40,50,0
    .goto Duskwood,14.69,26.22,50,0
    .goto Duskwood,20.93,25.13,50,0
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,14.69,26.22
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Venom Web Spider
    .mob Pygmy Venom Web Spider
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .mob Green Recluse
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves: Hand of Reckoning]
    .aura 408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])



RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Horn of Lordaeron - 4 (Loch Modan)
#next Hand of Reckoning - 14 (Loch Modan)

step
    #completewith Loch1
    +|cRXP_WARN_You need to be at least level 4 in order to acquire|r |T133815:0|t[Engrave Chest: Horn of Lordaeron] |cRXP_WARN_due to it being the level requirement of|r |T135906:0|t[Blessing of Might]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest: Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest: Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest: Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    #completewith next
    .zone Ironforge >>Travel to Ironforge
    .train 425618,1
    .xp <4,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .train 19740 >> Train |T135906:0|t[Blessing of Might]
    .target Brandur Ironhammer
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #label Loch1
    .zone Loch Modan >> Travel to Loch Modan
    .train 425618,1
    .xp <4,1
step
    #completewith LibramLoot
    #requires Loch1
    #label Inn1
    .goto Loch Modan,35.26,47.76,10 >>Go inside the Thelsamar Inn
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #requires Inn1
    .goto Loch Modan,35.43,48.29,8,0
    .goto Loch Modan,35.12,48.98,8,0
    .goto Loch Modan,35.13,49.34,8,0
    .goto Loch Modan,35.19,49.95,8,0
    .goto Loch Modan,35.52,49.40,8,0
    >>Go into the eastern-most room on the bottom floor
    .goto Loch Modan,35.80,49.57,8 >>Travel toward the |T134916:0|t|cRXP_LOOT_[Libram of Blessings]|r
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,35.80,49.57
    >>Loot the |T134916:0|t|cRXP_LOOT_[Libram of Blessings]|r on the table
    .collect 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Blessings]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_or|r |T135970:0|t[Blessing of Wisdom] |cRXP_WARN_on 5 unique friendly players (including yourself) to gain the |r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_Cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on 5 unique friendly players (including yourself) to gain the |r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp >14,1
    .xp <4,1
step
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t[Libram of Blessings] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest: Horn of Lordaeron]
    .aura 408828
    .use 208849
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Horn of Lordaeron - 12 (Westfall)
#next Hand of Reckoning - 20 (Westfall)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 12 in order to acquire the|r |T133815:0|t[Engrave Chest: Horn of Lordaeron] |cRXP_WARN_in Westfall alone. You MUST be level 4 to equip it|r
--  >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier|r
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest: Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest: Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest: Seal of Martyrdom]
    .train 425618,1
    .xp >12,1
step
    #completewith next
    .zone Stormwind City >>Travel to Stormwind
    .train 425618,1
    .xp <4,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 20271 >> Train |T135959:0|t[Judgement]
    .train 19740 >> Train |T135906:0|t[Blessing of Might]
    .target Arthur the Faithful
    .train 425618,1
    .xp <4,1
step << skip
    #completewith next
    >>|cRXP_WARN_It is heavily recommended you get the|r |T134229:0|t[Rune of Horn of Lordaeron] |cRXP_WARN_in Loch Modan instead as it is a LOT easier|r
    >>|cRXP_WARN_It is NOT recommended to use the|r |T134229:0|t[Rune of Horn of Lordaeron] |cRXP_WARN_over the|r |T236250:0|t[Rune of Divine Storm] |cRXP_WARN_or the|r |T135961:0|t[Rune of Seal of Martyrdom]
    .train 425618,1
    .xp <12,1
step
    #completewith next
    .zone Westfall >>Travel to Westfall
    .train 425618,1
    .xp <4,1
step
    #label LibramS
    .goto Westfall,44.45,25.76,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,45.35,21.20,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,31.82,43.99,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,29.65,46.18,0 --Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,44.72,23.57,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.39,21.67,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.98,22.33,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.35,21.20,12,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.68,19.94,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,45.65,18.24,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,46.28,18.86,12,0 --Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,31.82,43.99,40,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,30.42,45.81,12,0 --Travel to Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,29.65,46.18,15,0 --Quarry Spawnpoint 5 (Quarry Inside)
--  .goto Westfall,30.54,48.34,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--  .goto Westfall,30.14,49.51,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--   .goto Westfall,28.88,48.92,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
    .goto Westfall,29.65,46.18 --Quarry Spawnpoint 5 (Quarry Inside)
    >>|cRXP_WARN_Attack the |cRXP_ENEMY_Undying Laborer|r. Kill it by using|r |T135920:0|t[Holy Damage] |cRXP_WARN_such as|r |T135959:0|t[Judgement] |cRXP_WARN_when it falls over (you have 10 seconds to do so). Loot it for the|r |T134916:0|t|cRXP_LOOT_[Libram of Blessings]|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Undying Laborer|r shows as an elite, but has the health and damage of a normal mob|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Undying Laborer|r shares spawns across the entirety of the Gold Coast Quarry and Jangolode Mine. If you can't find it in one location, try the other|r
    .collect 208849,1 --Libram of Blessings (1)
    .unitscan Undying Laborer
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Blessings]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_or|r |T135970:0|t[Blessing of Wisdom] |cRXP_WARN_on 5 unique friendly players (including yourself) to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_Cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on 5 unique friendly players (including yourself) to gain the |r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp >14,1
    .xp <4,1
step
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Blessings]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest: Horn of Lordaeron]
    .use 208849
    .aura 408828
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Aegis - 8 (Elwynn Forest)
#next Rebuke - 10 (Stormwind)

step
    #completewith LibramS
    +|cRXP_WARN_You MUST be at least level 8 in order to acquire the|r |T134419:0|t[Rune of Aegis] |cRXP_WARN_due to it being the level requirement of|r |T135949:0|t[Purify]
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Stormwind City >>Travel to Stormwind
    .train 425619,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 1152 >> Train |T135949:0|t[Purify]
    .target Arthur the Faithful
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >> Travel to Elwynn Forest
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #requires Elwynn1
    #label Cave1
    .goto Elwynn Forest,61.59,53.51,15 >>Enter the Jasperlode Mine
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Elwynn Forest,61.46,48.17,8,0
    .goto Elwynn Forest,61.31,48.87,8,0
    .goto Elwynn Forest,60.61,49.94,8,0
    .goto Elwynn Forest,60.73,50.83,8,0
    .goto Elwynn Forest,61.22,51.51,8,0
    .goto Elwynn Forest,61.44,52.64,8,0
    .goto Elwynn Forest,61.97,47.31,12 >> Travel toward the |cRXP_FRIENDLY_Wounded Adventurer|r on the ground inside the cave
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
--XX no completewith next so people don't brick it by casting Purify accidentally
step
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Cast|r |T135949:0|t[Purify] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Wounded Adventurer|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Elwynn Forest,61.97,47.31
    >>Talk to the |cRXP_FRIENDLY_Wounded Adventurer|r after casting |T135949:0|t[Purify] on him to be given the |T134419:0|t[Rune of Aegis]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
--XX gossipoption 109556
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Aegis] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest: Aegis]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX cast 425589
--XX Rune acquirable if someone else purifies him for you?
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Aegis - 8 (Dun Morogh)
#next Rebuke - 10 (Ironforge)

step
    #completewith LibramS
    +|cRXP_WARN_You MUST be at least level 8 in order to acquire the|r |T134419:0|t[Rune of Aegis] |cRXP_WARN_due to it being the level requirement of|r |T135949:0|t[Purify]
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Ironforge >>Travel to Ironforge
    .train 425619,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .train 1152 >> Train |T135949:0|t[Purify]
    .target Brandur Ironhammer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .zone Dun Morogh >> Travel to Dun Morogh
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Dun Morogh,25.57,43.37,40 >> Travel toward the |cRXP_FRIENDLY_Wounded Adventurer|r on the ground
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .goto Dun Morogh,25.57,43.37
    .cast 1152 >>|cRXP_WARN_Cast|r |T135949:0|t[Purify] |cRXP_WARN_on the|r |cRXP_FRIENDLY_Wounded Adventurer|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Dun Morogh,25.57,43.37
    >>Talk to the |cRXP_FRIENDLY_Wounded Adventurer|r after casting |T135949:0|t[Purify] on him to be given the |T134419:0|t[Rune of Aegis]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Aegis] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest: Aegis]
    .use 208849
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX Rune acquirable if someone else purifies him for you?

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Seal of Martyrdom - 10 (Stormwind)
#next Horn of Lordaeron - 12 (Westfall)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T133815:0|t[Engrave Chest: Seal of Martyrdom] |cRXP_WARN_in Stormwind|r
    .train 410015,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Travel to Stormwind
    .train 410015,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,38.10,28.10,12 >>Travel toward |cRXP_FRIENDLY_Brother Romulus|r inside the Cathedral
    .train 410015,1
step
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Talk to |cRXP_FRIENDLY_Brother Romulus|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>Go downstairs into the western side of the Cathedral's Crypt
    .goto StormwindClassic,32.86,24.77,8 >>Travel toward the |cRXP_LOOT_Charred Note|r in the crypt
    .train 410015,1
step
    .goto StormwindClassic,32.86,24.87
    >>Loot the |cRXP_LOOT_Charred Note|r next to the candles
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Travel toward |cRXP_FRIENDLY_Ada Gelhardt|r on the island
    .train 410015,1
step
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r to start a fight
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step
    #requires Island
    .goto Duskwood,4.33,28.26
    >>Defeat |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_Remember to pre-cast|r |T135924:0|t[Seal of the Crusader] |cRXP_WARN_on her|r
    >>|cRXP_WARN_Be careful as she casts|r |T136197:0|t[Shadow Shock] |cRXP_WARN_(instantly deals 45 shadow damage. Costs her 75 mana. You should kill her quick enough for her to only cast it 3 times)|r
    >>|cRXP_WARN_After defeating |cRXP_ENEMY_Ada Gelhardt|r:|r
    >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r again to receive the |T134419:0|t[Rune of Martyrdom]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX Must have had the Charred Note to unlock the dialogue
step
    #sticky
    .destroy 205864 >> Delete the |T134939:0|t[Charred Note] from your bags, as it's no longer needed
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Martyrdom] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest: Seal of Martyrdom]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
    .train 410015,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Chest
#name Divine Storm - 25 (Darkshore)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 25 in order to acquire|r |T133815:0|t[Engrave Chest: Divine Storm] |cRXP_WARN_AND you should find at least 2 other level 25 Paladins to do this with comfortably|r
    .train 410014,1
--  .xp >25,1
step
    #completewith LibramS
    #label DarkshoreT
    .zone Darkshore >> Travel to Darkshore
    .train 410014,1
step
    #completewith next
    #requires DarkshoreT
    .goto Darkshore,56.49,26.44,10 >>Travel to the Tower of Althalaxx
    .train 410014,1
step
    #label LibramS
    .goto Darkshore,56.20,26.46
    >>Open the |cRXP_PICK_Strange Orb|r on the table atop the Tower of Althalaxx. Loot it for the |cRXP_LOOT_Althalaxx Orb|r
    >>|cRXP_WARN_Be careful as the mobs in this tower are difficult (Level 28-31)|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Dark Strand Voidcallers|r cast|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Ranged Cast: Deals around 175 Shadow damage). Be sure to LoS them as much as possible|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step
    #completewith Delgren1
    #label AshenvaleT
    .zone Ashenvale >> Travel to Ashenvale
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,26.19,38.69,10 >>Travel toward |cRXP_FRIENDLY_Delgren the Purifier|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 78088 >> Turn in A Strange Artifact
    .accept 78089 >> Accept Advice From Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step
    #label Delgren1
    .goto Ashenvale,26.19,38.69
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .accept 78089 >> Accept Advice From Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step
    #completewith Katherine1
    #label StormwindT1
    .zone Stormwind City >> Travel to Stormwind
    .train 410014,1
step
    #completewith next
    #requires StormwindT1
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,39.19,31.03,10,0
    .goto StormwindClassic,37.23,31.87,12 >>Travel toward |cRXP_FRIENDLY_Katherine the Pure|r inside the Cathedral
    .train 410014,1
step
    #label Katherine1
    .goto StormwindClassic,37.23,31.87
    >>Talk to |cRXP_FRIENDLY_Katherine the Pure|r
    .turnin 78089 >> Turn in Advice From Stormwind
    .accept 78090 >> Accept A Second Opinion
    .target Katherine the Pure
    .train 410014,1
step
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Travel toward |cRXP_FRIENDLY_Ursula Deline|r inside The Slaughtered Lamb
    .train 410014,1
step
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78090 >> Turn in A Second Opinion
    .accept 78091 >> Accept Earning Your Salt
    .target Ursula Deline
    .train 410014,1
step
    #completewith theairissalt
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .zoneskip Redridge Mountains
    .target Dungar Longdrink
    .train 410014,1
step
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>|cRXP_WARN_If you don't have the|r |T134419:0|t[Rune of the Avenger] |cRXP_WARN_already, it's worth doing now. If you don't want to, skip this step|r
    >>Kill |cRXP_ENEMY_Dro'zem the Blasphemous|r. Loot him for the |T134419:0|t[Rune of the Avenger]|r
    >>|cRXP_WARN_He has 3 spawnpoints outside: South-East (Render's Valley), Middle (Camp outside of Stonewatch Tower), and North (Render's Camp). He respawns quickly despite being a "rare"|r
    >>|cRXP_WARN_Ask in General Chat if anyone has seen him to potentially reduce your search time (Type /1 into chat)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of the Avenger] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants: Avenger's Shield]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
step
    #label theairissalt
    #loop
    .goto Redridge Mountains,43.59,18.99,30,0
    .goto Redridge Mountains,38.84,14.25,30,0
    .goto Redridge Mountains,35.18,7.91,30,0
    .goto Redridge Mountains,32.58,6.79,15,0
    .goto Redridge Mountains,31.18,6.95,15,0
    .goto Redridge Mountains,30.09,8.63,15,0
    .goto Redridge Mountains,27.10,8.48,15,0
    .goto Redridge Mountains,27.24,11.93,15,0
    .goto Redridge Mountains,25.89,13.45,15,0
    .goto Redridge Mountains,26.30,15.22,15,0
    .goto Redridge Mountains,27.46,15.93,15,0
    .goto Redridge Mountains,31.06,14.99,15,0
    .goto Redridge Mountains,31.29,12.90,15,0
    .goto Redridge Mountains,29.17,11.37,25,0
    >>Kill |cRXP_ENEMY_Blackrock Summoners|r, |cRXP_ENEMY_Blackrock Champions|r, and |cRXP_ENEMY_Blackrock Trackers|r. Loot them for |cRXP_LOOT_Summoner's Salt|r
    >>|cRXP_WARN_|cRXP_LOOT_Summoner's Salt|r is distributed on an individual basis (each mob has a chance to drop Salts for each person in your group), so you CAN easily group with others for this quest|r
    .complete 78091,1 --Summoner's Salt (14)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
step
    #completewith Ursula1
    #label StormwindT2
    .zone Stormwind City >> Travel to Stormwind
    .train 410014,1
step
    #completewith next
    #requires StormwindT2
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Travel toward |cRXP_FRIENDLY_Ursula Deline|r inside The Slaughtered Lamb
    .train 410014,1
step
    #label Ursula1
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78091 >> Turn in Earning Your Salt
    .accept 78092 >> Accept It Must Be Destroyed
    .target Ursula Deline
    .train 410014,1
step
    #completewith Motes
    #label AshenvaleT
    .zone Ashenvale >> Travel to Ashenvale
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,84.12,72.10,200 >>Travel toward Demon Fall Canyon
    .train 410014,1
step
    #label Motes
    #loop
    .goto Ashenvale,83.92,71.16,50,0
    .goto Ashenvale,84.65,74.15,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,82.60,79.15,50,0
    .goto Ashenvale,82.74,77.95,15,0
    .goto Ashenvale,82.02,77.93,15,0
    .goto Ashenvale,81.13,78.57,15,0
    .goto Ashenvale,81.17,79.78,15,0
    .goto Ashenvale,78.59,81.31,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,84.78,77.78,50,0
    .goto Ashenvale,87.28,79.21,50,0
    .goto Ashenvale,89.76,76.69,50,0
    .goto Ashenvale,84.18,76.79,50,0
    >>Kill |cRXP_ENEMY_Searing Infernals|r, |cRXP_ENEMY_Felguards|r, |cRXP_ENEMY_Mannoroc Lashers|r, and |cRXP_ENEMY_Legion Hounds|r. Loot them for |cRXP_LOOT_Motes of Mannoroth|r
    >>|cRXP_WARN_|cRXP_LOOT_Motes of Mannoroth|r are distributed on an individual basis (each mob has a chance to drop Motes for each person in your group), so you CAN easily group with others for this quest|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Searing Infernals|r have|r |T135802:0|t[Immolation Aura] |cRXP_WARN_(Passive Melee AoE: Deals 27-28 fire damage every 3 seconds), |cRXP_ENEMY_Felguards|r cast|r |T132154:0|t[Knockdown] |cRXP_WARN_(Melee Instant: Deals around 140 damage and stuns for 2 seconds), and |cRXP_ENEMY_Mannoroc Lashers|r cast|r |T135817:0|t[Flame Lash] |cRXP_WARN_(Ranged Instant: Deals around 45 Fire damage, then 12-13 Fire damage every 3 seconds for 21 seconds) and|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Ranged Cast: Deals about 125 Shadow damage)|r
    .complete 78092,1 --Mote of Mannoroth (12)
    .mob Searing Infernal
    .mob Felguard
    .mob Mannoroc Lasher
    .mob Legion Hound
    .train 410014,1
step
    >>Click the |cRXP_PICK_Spear of Mannoroth|r in the air, then click the |cRXP_PICK_Shattered Orb|r on the ground
    .turnin 78092 >> Turn in It Must Be Destroyed
    .goto Ashenvale,89.48,77.03
    .accept 78093 >> Accept Return to Delgren
    .goto Ashenvale,89.44,77.01
    .train 410014,1
step
    #completewith next
    .goto Ashenvale,26.19,38.69,10 >>Travel toward |cRXP_FRIENDLY_Delgren the Purifier|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 78093 >> Turn in Return to Delgren
    .target Delgren the Purifier
    .train 410014,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Inspiration Exemplar - 6 (Elwynn Forest)
#next Aegis - 8 (Elwynn Forest)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T134596:0|t[Engrave Pants: Inspiration Exemplar] |cRXP_WARN_in Elwynn Forest|r
    .train 410011,1
    .xp >6,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >> Travel to Elwynn Forest
    .train 410011,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,52.28,84.56,40 >>Travel toward the |cRXP_FRIENDLY_Adventurer's Remains|r
    .train 410011,1
step
    #label LibramS
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Join a group with another Paladin or Priest standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Paladin or Priest in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_A |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T134419:0|t|cRXP_LOOT_[Rune of Inspiration]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Inspiration]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants: Inspiration Exemplar]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Inspiration Exemplar - 6 (Dun Morogh)
#next Aegis - 8 (Dun Morogh)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T134596:0|t[Engrave Pants: Inspiration Exemplar] |cRXP_WARN_in Dun Morogh|r
    .train 410011,1
    .xp >6,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >> Travel to Dun Morogh
    .train 410011,1
step
    #completewith next
    #requires Dun1
    #label Cave1
    .goto Dun Morogh,42.47,54.22,20,0
    .goto Dun Morogh,42.28,52.82,20 >>Enter The Grizzled Den
    .train 410011,1
step
    #completewith next
    #label LibramS
    #requires Cave1
    .goto Dun Morogh,42.06,51.86,20,0
    .goto Dun Morogh,41.42,50.97,20,0
    .goto Dun Morogh,41.24,50.28,20,0
    .goto Dun Morogh,41.25,49.68,20,0
    .goto Dun Morogh,43.03,49.63,20 >>Travel toward the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground inside the cave
    .train 410011,1
step
    .goto Dun Morogh,43.03,49.63
    >>|cRXP_WARN_Join a group with another Paladin or Priest standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Paladin or Priest in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_A |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T134419:0|t|cRXP_LOOT_[Rune of Inspiration]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Inspiration]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants: Inspiration Exemplar]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Rebuke - 10 (Ironforge)
#next Seal of Martyrdom - 10 (Stormwind)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T134596:0|t[Engrave Pants: Rebuke] |cRXP_WARN_in Ironforge|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Ironforge1
    .zone Ironforge >>Travel to Ironforge
    .train 425621,1
step
    #completewith next
    #requires Ironforge1
    #label LibramS
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Travel toward |cRXP_FRIENDLY_Bruuk Barleybeard|r inside the Inn
    .train 425621,1
step
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r inside
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Bruart|r to start a fight
    >>Defeat |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Remember to pre-cast|r |T135924:0|t[Seal of the Crusader] |cRXP_WARN_on him|r
    >>|cRXP_WARN_DO NOT accidentally cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on him|r
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn cast|r |T135920:0|t[Holy Light] |cRXP_WARN_if needed|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Defeat |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Remember to pre-cast|r |T135924:0|t[Seal of the Crusader] |cRXP_WARN_on him|r
    >>|cRXP_WARN_DO NOT accidentally cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on him|r
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn cast|r |T135920:0|t[Holy Light] |cRXP_WARN_if needed|r
    >>|cRXP_WARN_After defeating |cRXP_ENEMY_Bruart|r:|r
    >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r again to receive the |T134419:0|t[Rune of Rebuke]
    >>|cRXP_WARN_If he doesn't give you the|r |T134419:0|t[Rune of Rebuke]|cRXP_WARN_, you may need to fight |cRXP_ENEMY_Bruart|r again|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Rebuke] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants: Rebuke]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Rebuke - 10 (Stormwind)
#next Seal of Martyrdom - 10 (Stormwind)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T134596:0|t[Engrave Pants: Rebuke] |cRXP_WARN_in Stormwind|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>Travel to Stormwind
    .train 425621,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,21.56,59.60,10,0
    .goto StormwindClassic,22.60,64.62,10 >>Travel toward |cRXP_FRIENDLY_Liv Bradford|r inside The Park's Inn
    .train 425621,1
step
    .goto StormwindClassic,22.60,64.62
    .gossipoption 109047 >>Talk to |cRXP_FRIENDLY_Liv Bradford|r inside
    .target Liv Bradford
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109045 "How's business?"
--XX 109047 "Sounds like you need someone to bounce him for you."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .goto StormwindClassic,21.21,62.78
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Stuart|r to start a fight
    >>Defeat |cRXP_ENEMY_Stuart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Remember to pre-cast|r |T135924:0|t[Seal of the Crusader] |cRXP_WARN_on him|r
    >>|cRXP_WARN_DO NOT accidentally cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on him|r
    >>|cRXP_WARN_Kite him upstairs, then drop down to cast|r |T135920:0|t[Holy Light] |cRXP_WARN_if needed|r
    .mob Stuart
    .skipgossip 203478,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto StormwindClassic,21.21,62.78,-1
    .goto StormwindClassic,22.60,64.62,-1
    >>Defeat |cRXP_ENEMY_Stuart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Remember to pre-cast|r |T135924:0|t[Seal of the Crusader] |cRXP_WARN_on him|r
    >>|cRXP_WARN_DO NOT accidentally cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on him|r
    >>|cRXP_WARN_Kite him upstairs, then drop down to cast|r |T135920:0|t[Holy Light] |cRXP_WARN_if needed|r
    >>|cRXP_WARN_After defeating |cRXP_ENEMY_Stuart|r:|r
    >>Talk to |cRXP_FRIENDLY_Liv Bradford|r again to receive the |T134419:0|t[Rune of Rebuke]
    >>|cRXP_WARN_If she doesn't give you the|r |T134419:0|t[Rune of Rebuke]|cRXP_WARN_, you may need to fight |cRXP_ENEMY_Stuart|r again|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Liv Bradford
    .skipgossip 203478,1
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Rebuke] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants: Rebuke]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Exorcist - 24 (Duskwood)
#next Beacon of Light - 25 (Reputation)

step
    #completewith LibramS
    +|cRXP_WARN_You MUST be at least level 24 in order to acquire|r |T134596:0|t[Engrave Pants: Exorcist] |cRXP_WARN_due to it being the level requirement of|r |T135983:0|t[Turn Undead]
    .train 416037,1
    .xp >24,1
step
    #completewith next
    .zone Stormwind City >>Travel to Stormwind
    .train 416037,1
    .xp <24,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .train 2878 >> Train |T135983:0|t[Turn Undead]
    .target Arthur the Faithful
    .train 416037,1
    .xp <24,1
step
    #completewith next
    .zone Duskwood >> Travel to Duskwood
    .train 416037,1
    .xp <24,1
step
    #label LibramS
    #loop
    .goto Duskwood,20.84,63.75,40,0
    .goto Duskwood,20.00,71.10,40,0
    .goto Duskwood,21.58,72.00,40,0
    .goto Duskwood,24.26,71.82,40,0
    .goto Duskwood,22.91,66.62,40,0
    >>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cFFFCDC00(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runners
    .train 416037,1
    .xp <24,1
step
    .equip 18,211472 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
    .use 211472
    .itemcount 211472,1 -- Libram of Banishment (1)
    .train 416037,1
    .xp <24,1
step
    #loop
    .goto Duskwood,22.49,47.91,40,0
    .goto Duskwood,20.41,47.56,40,0
    .goto Duskwood,14.65,47.37,40,0
    .goto Duskwood,16.31,44.96,40,0
    .goto Duskwood,22.95,40.55,40,0
    .aura 408828 >>|cRXP_WARN_Cast|r |T135983:0|t[Turn Undead] |cRXP_WARN_and then kill them with|r |T135903:0|t[Exorcism] |cRXP_WARN_5 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants: Exorcist]
    .use 211472
    .aura 408828
    .train 416037,1
    .xp <24,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune Guide
#subgroup Legs
#name Avenger's Shield - 25 (Redridge Mountains)
#next Inspiration Exemplar - 6 (Elwynn Forest)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 25 in order to acquire|r |T134596:0|t[Engrave Pants: Avenger's Shield] |cRXP_WARN_in Redridge alone|r
    .train 410008,1
    .xp >25,1
step
    #completewith next
    .zone Redridge Mountains >> Travel to Redridge Mountains
    .train 410008,1
step
    #label LibramS
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>Kill |cRXP_ENEMY_Dro'zem the Blasphemous|r. Loot him for the |T134419:0|t[Rune of the Avenger]|r
    >>|cRXP_WARN_He has 3 spawnpoints outside: South-East (Render's Valley), Middle (Camp outside of Stonewatch Tower), and North (Render's Camp). He respawns quickly despite being a "rare"|r
    >>|cRXP_WARN_Ask in General Chat if anyone has seen him to potentially reduce your search time (Type /1 into chat)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of the Avenger] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants: Avenger's Shield]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
--VV Overall paladin routing can be improved if Divine Sac turnin has items bought before Divine Storm -> Turned in after Divine Storm (run down after accepting Return to Delgren -> Turn in -> Fly to Astranaar -> DS Turnin)
]])