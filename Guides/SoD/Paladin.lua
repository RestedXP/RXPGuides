RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Crusader Strike - 4 (Elwynn Forest)
#title Crusader Strike
#next Inspiration Exemplar - 6 (Elwynn Forest)

--VV Not sure if you want to gate CS in Elwynn for humans only/DunM for dwarves only

step
    +|cRXP_WARN_You MUST be at least level 4 in order to acquire|r |T133816:0|t[Engrave Gloves - Crusader Strike] |cRXP_WARN_as it is the level requirement of training|r |T135959:0|t[Judgement]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Elwynn1
    .zone Elwynn Forest >> Travel to Elwynn Forest
    .train 410002,1
    .xp <4,1
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
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
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
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    .aura 408828 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Crusader Strike - 4 (Dun Morogh)
#title Crusader Strike
#next Inspiration Exemplar - 6 (Dun Morogh)

step
    +|cRXP_WARN_You MUST be at least level 4 in order to acquire|r |T133816:0|t[Engrave Gloves - Crusader Strike] |cRXP_WARN_as it is the level requirement of training|r |T135959:0|t[Judgement]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >> Travel to Dun Morogh
    .train 410002,1
    .xp <4,1
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
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .aura 408828 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Hand of Reckoning - 14 (Loch Modan)
#title Hand of Reckoning
#next Inspiration Exemplar - 6 (Elwynn Forest)


step
    +|cRXP_WARN_You should be at least level 14 in order to acquire|r |T133816:0|t[Engrave Gloves - Hand of Reckoning] |cRXP_WARN_in Loch Modan alone|r
    >>|cRXP_WARN_You MUST be at least level 8 as it is the level requirement of equipping the|r |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Hand of Reckoning]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_You should be at least level 14 in order to acquire|r |T133816:0|t[Engrave Gloves - Hand of Reckoning] |cRXP_WARN_in Loch Modan alone|r
    .train 410001,1
    .xp <8,1
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
    #completewith LibramS
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
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
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
    .goto Loch Modan,31.93,79.12,40,0
    .goto Loch Modan,31.02,80.64,40,0
    .goto Loch Modan,31.56,76.89,40,0
    .goto Loch Modan,30.90,74.35,40,0
    .goto Loch Modan,29.75,72.57,40,0
    .goto Loch Modan,33.43,70.60,40,0
    .goto Loch Modan,35.36,71.21,40,0
    .goto Loch Modan,32.86,79.70,40,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >16,1
step
    #loop
    .goto Loch Modan,35.66,83.64,30,0
    .goto Loch Modan,36.86,84.93,30,0
    .goto Loch Modan,36.50,80.01,30,0
    .goto Loch Modan,33.96,81.82,30,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Stonesplinter Skullthumper
    .mob Stonesplinter Seer
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <16,1
    .xp >19,1
step
    #loop
    .goto Loch Modan,69.61,67.92,40,0
    .goto Loch Modan,72.12,68.29,40,0
    .goto Loch Modan,72.59,61.75,40,0
    .goto Loch Modan,70.33,59.84,40,0
    .goto Loch Modan,67.37,59.88,40,0
    .goto Loch Modan,67.77,62.99,40,0
    .goto Loch Modan,70.41,62.93,40,0
    .goto Loch Modan,69.69,65.52,40,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
    .mob Berserk Trogg
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Wetlands >> Travel to the Wetlands
    .itemStat 18,QUALITY,2
    .aura 408828
    .train 410001,1
    .xp <22,1
step
    #loop
    .goto Wetlands,15.96,47.28,50,0
    .goto Wetlands,13.69,41.37,50,0
    .goto Wetlands,13.59,38.04,50,0
    .goto Wetlands,15.30,38.81,50,0
    .goto Wetlands,18.45,39.37,50,0
    .goto Wetlands,19.24,41.29,50,0
    .goto Wetlands,13.69,41.37,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Young Wetlands Crocolisk
    .mob Fen Dweller
    .mob Bluegill Murloc
    .mob Bluegill Forager
    .mob Bluegill Puddlejumper
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Hand of Reckoning]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Gloves
#name Hand of Reckoning - 20 (Westfall)
#title Hand of Reckoning
#next Exorcist - 24 (Duskwood)


step
    +|cRXP_WARN_You should be at least level 20 in order to acquire|r |T133816:0|t[Engrave Gloves - Hand of Reckoning] |cRXP_WARN_in Westfall alone|r
    >>|cRXP_WARN_You MUST be at least level 8 as it is the level requirement of equipping the|r |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133816:0|t[Engrave Gloves - Hand of Reckoning]
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_You should be at least level 20 in order to acquire|r |T133816:0|t[Engrave Gloves - Hand of Reckoning] |cRXP_WARN_in Westfall alone|r
-- >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier and can be acquired at a lower level|r
    .train 410001,1
    .xp <8,1
    .xp >20,1
step << skip
    #completewith LibramS
    +|cRXP_WARN_It is heavily recommended you get |T133816:0|t[Engrave Gloves - Hand of Reckoning] in Loch Modan instead as it is a LOT easier|r
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
    .goto Elwynn Forest,24.50,93.99,50,0
    .goto Elwynn Forest,26.07,91.92,50,0
    .goto Elwynn Forest,27.85,88.18,50,0
    .goto Elwynn Forest,27.56,86.21,50,0
    .goto Elwynn Forest,26.43,86.81,50,0
    .goto Elwynn Forest,25.18,89.20,50,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >15,1
step
    #loop
    .goto Westfall,69.71,73.41,40,0
    .goto Westfall,64.54,60.81,40,0
    .goto Westfall,62.62,58.29,40,0
    .goto Westfall,60.87,58.71,40,0
    .goto Westfall,58.71,61.21,40,0
    .goto Westfall,61.43,62.17,40,0
    .aura 408828 >>|cRXP_WARN_Attack enemies down to low health. Cast|r |T135963:0|t[Hammer of Justice] |cRXP_WARN_on them, then kill them whilst they're stunned 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Great Goretusk
    .mob Harvest Reaper
    .mob Greater Fleshripper
    .mob Defias Knuckleduster
    .mob Defias Highwayman
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <15,1
    .xp >22,1
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
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Justice]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Hand of Reckoning]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Hallowed Ground - 4 (Loch Modan)
#title Hallowed Ground
#next Hand of Reckoning - 14 (Loch Modan)

step
    +|cRXP_WARN_You MUST be at least level 4 in order to acquire|r |T133815:0|t[Engrave Chest - Hallowed Ground] |cRXP_WARN_as it is the level requirement of training|r |T135906:0|t[Blessing of Might]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Hallowed Ground]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Hallowed Ground] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
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
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t[Libram of Blessings] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Hallowed Ground]
    .aura -408828
    .use 208849
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Horn of Lordaeron - 12 (Westfall)
#title Horn of Lordaeron
#next Hand of Reckoning - 20 (Westfall)


step
    +|cRXP_WARN_You should be at least level 12 in order to acquire|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_in Westfall alone|r
    >>|cRXP_WARN_You MUST be at least level 4 as it is the level requirement of training|r |T135906:0|t[Blessing of Might]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Horn of Lordaeron]
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp >4,1
step
    +|cRXP_WARN_You should be at least level 12 in order to acquire the|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_in Westfall alone|r
--  >>|cRXP_WARN_It is heavily recommended you get it in Loch Modan instead as it is a LOT easier|r
--  >>|cRXP_WARN_It is NOT recommended to use|r |T133815:0|t[Engrave Chest - Horn of Lordaeron] |cRXP_WARN_over|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_or|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .train 425618,1
    .xp <4,1
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
    .xp <4,1
    .xp >14,1
step
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Blessings]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Horn of Lordaeron]
    .use 208849
    .aura -408828
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Aegis - 8 (Elwynn Forest)
#title Aegis
#next Rebuke - 10 (Stormwind)

step
    +|cRXP_WARN_You MUST be at least level 8 in order to acquire|r |T133815:0|t[Engrave Chest - Aegis] |cRXP_WARN_as it is the level requirement of training|r |T135949:0|t[Purify]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Aegis]
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
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Wounded Adventurer|r after casting|r |T135949:0|t[Purify] |cRXP_WARN_on him to be given the|r |T134419:0|t[Rune of Aegis]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
--XX gossipoption 109556
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Aegis] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Aegis]
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
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Aegis - 8 (Dun Morogh)
#title Aegis
#next Rebuke - 10 (Ironforge)

step
    +|cRXP_WARN_You MUST be at least level 8 in order to acquire|r |T133815:0|t[Engrave Chest - Aegis] |cRXP_WARN_as it is the level requirement of training|r |T135949:0|t[Purify]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T133815:0|t[Engrave Chest - Aegis]
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
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Wounded Adventurer|r after casting|r |T135949:0|t[Purify] |cRXP_WARN_on him to be given the|r |T134419:0|t[Rune of Aegis]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Aegis] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Aegis]
    .use 208849
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX Rune acquirable if someone else purifies him for you?

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Divine Light - 10 (Stormwind)
#title Divine Light
#next Horn of Lordaeron - 12 (Westfall)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T133815:0|t[Engrave Chest - Divine Light] |cRXP_WARN_in Stormwind alone|r
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
    >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r again to receive the |T134419:0|t[Rune of Divine Light]
    .collect 205897,1 --Rune of Divine Light (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX Must have had the Charred Note to unlock the dialogue
step
    #sticky
    .destroy 205864 >> Delete the |T134939:0|t[Charred Note] from your bags, as it's no longer needed
step
    .train 410015 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Divine Light] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Divine Light]
    .use 205897
    .itemcount 205897,1 --Rune of Divine Light (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Chest
#name Divine Storm - 25 (Darkshore)
#title Divine Storm
#next Divine Sacrifice - 25 (Azeroth)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 25 in order to acquire|r |T133815:0|t[Engrave Chest - Divine Storm] |cRXP_WARN_AND you should find at least 2 other level 25 Paladins to do this with comfortably|r
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
    >>|cRXP_WARN_If you don't have|r |T134596:0|t[Engrave Pants - Avenger's Shield] |cRXP_WARN_already, it's worth doing now. If you don't want to, skip this step|r
    >>Kill |cRXP_ENEMY_Dro'zem the Blasphemous|r. Loot him for the |T134419:0|t[Rune of the Avenger]|r
    >>|cRXP_WARN_He has 3 spawnpoints outside: South-East (Render's Valley), Middle (Camp outside of Stonewatch Tower), and North (Render's Camp). He respawns quickly despite being a "rare"|r
    >>|cRXP_WARN_Ask in General Chat if anyone has seen him to potentially reduce your search time (Type /1 into chat)|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of the Avenger] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Avenger's Shield]
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
    .train 410014 >> This will teach you |T133815:0|t[Engrave Chest - Divine Storm]
    .target Delgren the Purifier
    .train 410014,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Inspiration Exemplar - 6 (Elwynn Forest)
#title Inspiration Exemplar
#next Aegis - 8 (Elwynn Forest)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T134596:0|t[Engrave Pants - Inspiration Exemplar] |cRXP_WARN_in Elwynn Forest with another player|r
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
    >>|cRXP_WARN_Join a group with another Paladin, Priest, or Druid standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Paladin, Priest, or Druid in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_A |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T134419:0|t|cRXP_LOOT_[Rune of Inspiration]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Inspiration]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Inspiration Exemplar]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Inspiration Exemplar - 6 (Dun Morogh)
#title Inspiration Exemplar
#next Aegis - 8 (Dun Morogh)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 6 in order to acquire|r |T134596:0|t[Engrave Pants - Inspiration Exemplar] |cRXP_WARN_in Dun Morogh with another player|r
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
    >>|cRXP_WARN_Join a group with another Paladin, Priest, or Druid standing over the |cRXP_FRIENDLY_Adventurer's Remains|r, or look for help from a Paladin, Priest, or Druid in General Chat (Type /1 into chat)|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_A |cRXP_FRIENDLY_Adventurer's Spirit|r will spawn and die after completing the ritual. Loot it for the|r |T134419:0|t|cRXP_LOOT_[Rune of Inspiration]|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Inspiration]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Inspiration Exemplar]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Rebuke - 10 (Ironforge)
#title Rebuke
#next Seal of Martyrdom - 10 (Stormwind)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T134596:0|t[Engrave Pants - Rebuke] |cRXP_WARN_in Ironforge alone|r
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
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and cast|r |T135920:0|t[Holy Light] |cRXP_WARN_if needed|r
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
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and cast|r |T135920:0|t[Holy Light] |cRXP_WARN_if needed|r
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
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Rebuke] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Rebuke]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Rebuke - 10 (Stormwind)
#title Rebuke
#next Seal of Martyrdom - 10 (Stormwind)

step
    #completewith LibramS
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T134596:0|t[Engrave Pants - Rebuke] |cRXP_WARN_in Stormwind alone|r
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
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Rebuke] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Rebuke]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Aura Mastery - 24 (Duskwood)
#title Aura Mastery
#next Beacon of Light - 25 (Reputation)

step
    +|cRXP_WARN_You MUST be at least level 24 in order to acquire|r |T134596:0|t[Engrave Pants - Aura Mastery] |cRXP_WARN_as it is the level requirement of training|r |T135983:0|t[Turn Undead]
    >>|cRXP_WARN_You need to level up more before even attempting to acquire|r |T134596:0|t[Engrave Pants - Aura Mastery]
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
    .goto Duskwood,20.84,63.75,50,0
    .goto Duskwood,20.00,71.10,50,0
    .goto Duskwood,21.58,72.00,50,0
    .goto Duskwood,24.26,71.82,50,0
    .goto Duskwood,22.91,66.62,50,0
    >>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
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
    .goto Duskwood,22.49,47.91,50,0
    .goto Duskwood,20.41,47.56,50,0
    .goto Duskwood,14.65,47.37,50,0
    .goto Duskwood,16.31,44.96,50,0
    .goto Duskwood,22.95,40.55,50,0
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r
    .aura 408828 >>|cRXP_WARN_Cast|r |T135983:0|t[Turn Undead] |cRXP_WARN_and then kill them with|r |T135903:0|t[Exorcism] |cRXP_WARN_5 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Skeletal Fiend
    .mob Skeletal Horror
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Aura Mastery]
    .use 211472
    .aura -408828
    .train 416037,1
    .xp <24,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Legs
#name Avenger's Shield - 25 (Redridge Mountains)
#title Avenger's Shield
#next Inspiration Exemplar - 6 (Elwynn Forest)

step
    +|cRXP_WARN_You should be at least level 25 in order to acquire|r |T134596:0|t[Engrave Pants - Avenger's Shield] |cRXP_WARN_in Redridge alone|r
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
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of the Avenger] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Avenger's Shield]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
--VV Overall paladin routing can be improved if Divine Sac turnin has items bought before Divine Storm -> Turned in after Divine Storm (run down after accepting Return to Delgren -> Turn in -> Fly to Astranaar -> DS Turnin)
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#title Malleable Protection
#name Malleable Protection - 34 (Arathi Highlands)

step
    #optional
    .train 426175,1
    +|cRXP_WARN_You must be at least level 34 before you can acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r]
    .xp >34,1
step
    .train 426175,1
    #completewith next
    .train 20164,1
    +|cRXP_WARN_You must train|r |T135971:0|t[Seal of Justice] |cRXP_WARN_to acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r]
step
    .train 426175,1
    .train 642,1
    .train 1020,1
    +|cRXP_WARN_You must train|r |T135896:0|t[Divine Shield] |cRXP_WARN_to acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r]
step
    .train 426175,1
    #optional
    .train 20164,1
    +|cRXP_WARN_You must train|r |T135971:0|t[Seal of Justice] |cRXP_WARN_to acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r]
step
    .train 426175,1
    #completewith next
    .zone Arathi Highlands >>Travel to the Arathi Highlands
step
    .train 426175,1
    #completewith BeadSoJ1
    .goto Arathi Highlands,68.8,71.8,0
    .goto Arathi Highlands,35.4,44.8,0
    +|cRXP_WARN_Trolls and Ogres in Arathi Highlands can also drop any of the|r |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Beads|r]
step
    .train 426175,1
    #completewith Rosary
    #label BeadBoM1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>Kill |cRXP_ENEMY_Syndicate Mercenaries|r, |cRXP_ENEMY_Syndicate Pathstalkers|r and |cRXP_ENEMY_Syndicate Highwaymen|r. Loot them for the |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Bead I|r]
    .collect 213444,1 --Tarnished Prayer Bead I
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #requires BeadBoM1
    #label BeadBoM2
    #completewith Rosary
    +|cRXP_WARN_Cast|r |T135906:0|t[Blessing of Might] |cRXP_WARN_on yourself|r
    .aura 19740
    .aura 19834
    .aura 19835
    .aura 19836
    .aura 19837
    .aura 19838
    .aura 25291
    .aura 25782
    .aura 25916
step
    .train 426175,1
    #requires BeadBoM2
    #label BeadBoM3
    #completewith Rosary
    >>|cRXP_WARN_Continue killing enemies to receive the|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead I|r]
    >>|cRXP_WARN_You must have an active|r |T135906:0|t[Blessing of Might] |cRXP_WARN_buff|r
    .collect 213448,1 --Divine Prayer Bead I
step
    .train 426175,1
    #completewith Rosary
    #label BeadDS1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>Kill |cRXP_ENEMY_Syndicate Mercenaries|r, |cRXP_ENEMY_Syndicate Pathstalkers|r and |cRXP_ENEMY_Syndicate Highwaymen|r. Loot them for the |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Bead II|r]
    .collect 213445,1 --Tarnished Prayer Bead II
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadDS1
    #label BeadDS2
    >>|cRXP_WARN_Cast|r |T135896:0|t[Divine Shield] |cRXP_WARN_while in combat and below 40% HP to receive the|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead II|r]
    .collect 213449,1 --Divine Prayer Bead II
    .usespell 642
    .usespell 1020
step
    .train 426175,1
    #completewith Rosary
    #label BeadSoJ1
    >>Kill |cRXP_ENEMY_Syndicate Mercenaries|r, |cRXP_ENEMY_Syndicate Pathstalkers|r and |cRXP_ENEMY_Syndicate Highwaymen|r. Loot them for the |T135261:0|t[|cRXP_LOOT_Tarnished Prayer Bead III|r]
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    .collect 213446,1 --Tarnished Prayer Bead III
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadSoJ1
    #label BeadSoJ2
    >>|cRXP_WARN_Cast|r |T135971:0|t[Seal of Justice] |cRXP_WARN_followed by|r |T135959:0|t[Judgement] |cRXP_WARN_on a fleeing enemy to receive the|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead III|r]
    .collect 213450,1 --Divine Prayer Bead III
    .usespell 20164
    .usespell 20271
step
    .train 426175,1
    #optional
    #requires BeadBoM3
step
    .train 426175,1
    #optional
    #requires BeadDS2
step
    .train 426175,1
    #optional
    #requires BeadSoJ2
step
    .train 426175,1
    #label Rosary
    >>|cRXP_WARN_Use a|r |T135260:0|t[|cRXP_LOOT_Divine Prayer Bead|r] |cRXP_WARN_to combine them into the|r |T133289:0|t[|cRXP_LOOT_Rosary of the Light|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1
step
    .train 426175,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Atticus|r inside Stormgarde Keep to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r]
    .goto Arathi Highlands,26.06,55.75,20,0
    .goto Arathi Highlands,25.71,59.92,20,0
    .goto Arathi Highlands,23.69,60.52,20,0
    .goto Arathi Highlands,23.75,58.89,15,0
    .goto Arathi Highlands,27.81,58.99,15,0
    .goto Arathi Highlands,28.74,58.97,15,0
    .goto Arathi Highlands,28.71,57.37,15,0
    .goto Arathi Highlands,27.01,56.95
    .skipgossip 217387,1
    .collect 213128,1
    .target Brother Atticus
step
    .itemcount 213128,1
    .use 213128
    .train 426175 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r] |cRXP_WARN_to train|r |T236251:0|t[Malleable Protection]
]])


RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Belt
#name Sheath of Light - 40 (Azeroth)
#title Sheath of Light

step
    #completewith next
    .zone Desolace >>Travel to Desolace
step
    .train 426178,1
    .goto Desolace,52.730,84.761
    >>Loot the |cRXP_PICK_Broken Warhammer|r on the ground for the |T133041:0|t[|cRXP_LOOT_Broken Hammer|r]
    .use 215441 >>|cRXP_WARN_Use the |T133041:0|t[|cRXP_LOOT_Broken Hammer|r] to start the quest|r
    .collect 215441,1
    .accept 79939 >>Accept The Broken Hammer
step
    .train 426178,1
    #loop
    .goto Desolace,52.6,85.6,0
    .goto Desolace,55.6,70.4,0
    .goto Desolace,47,2,75.2,0
    .goto Desolace,52.6,85.6,40,0
    .goto Desolace,55.6,70.4,40,0
    .goto Desolace,47,2,75.2,60,0
    >>Kill |cRXP_ENEMY_Burning Blade Summoners|r. Loot them for a |T133471:0|t[|cRXP_LOOT_Torn Letter|r]
    .collect 216956,1,79939,1
    .mob Burning Blade Summoner
step
    #completewith Katherine
    .zone Stormwind City >>Travel to Stormwind
step
    #completewith Katherine
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine the Pure|r
    .goto Stormwind City,37.222,31.855
    .turnin 79939 >>Turn in The Broken Hammer
    .accept 79940 >>Accept A Lost Brother
    .target Katherine the Pure
step
    #label Katherine
    .train 426178,1
    .goto Stormwind City,37.222,31.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine the Pure|r
    .skipgossip 5492,1
    .complete 79940,1
    .turnin 79940 >>Turn in A Lost Brother
    .target Katherine the Pure
step
    #completewith next
    .zone Wetlands >>Travel to Menethil Harbor
step
    .isQuestTurnedIn 79940
    .train 426178,1
    .goto Wetlands,8.086,58.592
    .gossip 3179,4 >> Talk to |cRXP_FRIENDLY_Harold Riggs|r. Ensure to go through all of his gossip dialogues
    .skipgossip 3179,2
    .target Harold Riggs
step
    #completewith next
    .goto 1415,41.937,58.932,40 >> |cRXP_WARN_Swim down south, all the way around to Dun Morogh. You will have to kill a level 40 elite shortly. Considering bringing a friend for this part!|r
step
    .train 426178,1
    .goto 1415,41.937,58.932
    .gossip 217957 >> Talk to the |cRXP_FRIENDLY_Slain Scarlet Crusader|r inside the building
    >>|cRXP_WARN_This will summon a level 40 elite|r |cRXP_ENEMY_Scarlet Crusade Assassin|r
    .target Slain Scarlet Crusader
step
    .train 426178,1
    .goto 1415,41.937,58.932
    >>Kill the |cRXP_ENEMY_Scarlet Crusade Assassin|r. Loot it for the |T133471:0|t[|cRXP_LOOT_Orders from the Grand Crusade|r]
    .use 215468 >>|cRXP_WARN_Use the |T133471:0|t[|cRXP_LOOT_Orders from the Grand Crusade|r] to start the quest|r
    .collect 215468,1,79945,1
    .accept 79945 >>Accept Orders from the Grand Crusade
    .mob Scarlet Cursade Assassin
step
    #completewith Katherine2
    .zone Stormwind City >>Travel to Stormwind
step
    #completewith Katherine2
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine the Pure|r
    .goto Stormwind City,37.222,31.855
    .turnin 79945 >>Turn in Orders from the Grand Crusade
    .accept 79946 >>Accept A Brother in Need
    .target Katherine the Pure
step
    #label Katherine2
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine the Pure|r
    .goto Stormwind City,37.222,31.855
    .skipgossip 5492,3
    .complete 79946,1 --Learn more about Aeonas from Katherine
    .target Katherine the Pure
step
    .train 426178,1
    >>|cRXP_WARN_You now have to go into Scarlet Monastery and complete a full Cathedral run|r
    >>After killing |cRXP_ENEMY_Mograine|r and |cRXP_ENEMY_Whitemane|r, talk to |cRXP_FRIENDLY_Aeonas|r in the back room
    .complete 79946,2 --Find Aeonas in the Scarlet Monastery
    .turnin 79946 >>Turn in A Brother in Need
    .accept 79963 >>Accept By The Light's Grace
    .target Aeonas
step
    .train 426178,1
    >>Heal |cRXP_FRIENDLY_Aenoas|r to full HP
    .complete 79963,1 --Heal Aeonas
    .target Aeonas
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeonas|r
    .turnin 79963 >>Turn in By The Light's Grace
    .accept 79970 >>Accept Aeonas the Vindicated
    .target Aeonas
step
    #completewith Aeonas
    .zone Stormwind City >>Travel to Stormwind
step
    #completewith Aeonas
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step
    #label Aeonas
    .goto Stormwind City,37.355,31.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeonas the Vindicated|r
    .turnin 79970 >> Turn in Aeonas the Vindicated
    .train 426178 >> Train |T236263:0|t[Sheath of Light]
    .target Aeonas the Vindicated
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Guarded by the Light - 30 (Alterac Mountains)
#title Guarded by the Light

step
    #optional
    .train 416035,1
    +|cRXP_WARN_You must be at least level 30 before you can acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Guardian|r]
    .xp >30,1
step
    .train 416035,1
    .train 19752 >> |cRXP_WARN_You must train|r |T136106:0|t[Divine Intervention] |cRXP_WARN_to acquire the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Guardian|r]
step
    .train 416035,1
    .collect 17033,1 >>|cRXP_BUY_Buy at least one|r |T135259:0|t[Symbol of Divinity] |cRXP_BUY_from any Reagent Vendor|r
step
    .train 416035,1
    #completewith FriendRequired
    +|cRXP_WARN_Ensure to bring a |cFFFFFFFFPriest|r, |cFFF58CBAPaladin|r or |cFFFF7D0ADruid|r friend for the following steps! This next part cannot be completed solo as someone must ressurect you!|r
    .subzoneskip 281
step
    .train 416035,1
    .goto Alterac Mountains,39.675,60.675
    .zone Alterac Mountains >>Travel to the Alterac Mountains
    .itemcount 213452,<1
step
    .train 416035,1
    #label FriendRequired
    >>Click the |cRXP_PICK_Frozen Remains|r on the ground. Loot it for the |cRXP_LOOT_Dormant Holy Rune|r
    .goto Alterac Mountains,39.675,60.675
    .collect 213452,1
step
    .train 416035,1
    .cast 19752 >> |cRXP_WARN_Cast|r |T136106:0|t[Divine Intervention] |cRXP_WARN_on your friend that has accompanied you|r
    .usespell 19752
step
    .train 416035,1
    >>|cRXP_WARN_Have you friend remove the|r |T136106:0|t[Divine Intervention] |cRXP_WARN_buff and ressurect you|r
    >>|cRXP_WARN_You will receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Guardian|r]
    .collect 213132,1
step
    .use 213132
    .itemcount 213132,1
    .train 416035 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Guardian|r] |cRXP_WARN_to train|r |T237537:0|t[Guarded by the Light]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Boots
#name Sacred Shield - 30 (Desolace)
#title Sacred Shield

step
    #optional
    .train 416028,1
    +|cRXP_WARN_You must be at least level 18 before you can acquire the|r |T236249:0|t[Sacred Shield] |cRXP_WARN_enraving|r
    .xp >18,1
step
    .train 416028,1
    .train 1044 >> |cRXP_WARN_You must train|r |T135968:0|t[Blessing of Freedom] |cRXP_WARN_to acquire the|r |T236249:0|t[Sacred Shield] |cRXP_WARN_enraving|r
step
    .train 416028,1
    #completewith Deliverance
    +|cRXP_WARN_Ensure to bring a friend for the following steps! This next part cannot be completed solo!|r
step
    .train 416028,1
    #completewith next
    .zone Desolace >>Travel to Desolace
step
    .train 416028,1
    #label Deliverance
    .goto Desolace,66.532,7.531
    >>Loot the |T134916:0|t[|cRXP_FRIENDLY_Libram of Deliverance|r] on the table
    .collect 213513,1
step
    .train 416028,1
    .equip 18,213513 >> |cRXP_WARN_Equip the|r |T134916:0|t[|cRXP_FRIENDLY_Libram of Deliverance|r]
    .use 213513
step
    .train 416028,1
    .goto Desolace,38.21,61.02,50,0
    .goto Desolace,36.44,60.52,60,0
    .goto Desolace,33.44,54.17,60,0
    .goto Desolace,30.33,58.26,60,0
    .goto Desolace,31.79,61.28
    .aura 408828 >> |cRXP_WARN_Cast|r |T135968:0|t[Blessing of Freedom] |cRXP_WARN_on another player 5 times while their movement is impaired. You will gain a stack of|r |T237556:0|t[Building Inspiration] |cRXP_WARN_each time you do this|r
    >>|cRXP_WARN_Once you have 5 stacks of|r |T237556:0|t[Building Inspiration]|cRXP_WARN_, you will receive the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_Complete this just outside of Maraudon. The|r |cRXP_ENEMY_Maraudine Wranglers|r |cRXP_WARN_there cast|r |T132149:0|t[Net]
    .mob Maraudine Wrangler
step
    .use 213513
    .train 416028 >>|cRXP_WARN_Use the|r |T134916:0|t[|cRXP_FRIENDLY_Libram of Deliverance|r] |cRXP_WARN_to train|r |T236249:0|t[Sacred Shield]
]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Hammer of Wrath
-- for phase 3

-- Improved Hammer of Wrath


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Purifying Power
-- for phase 3

-- Purifying Power


-- ]])
RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet
#name Fanaticism - 44 (Azeroth)

step
    #optional
    .train 426178 >>|cRXP_WARN_You have to learn the rune for|r |T236263:0|t[Sheath of Light] |cRXP_WARN_first before you can obtain this one|r
    .train 429251,1
step
    #completewith next
    .zone Stormwind City >>Travel to Stormwind
    .train 429251,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeonas the Vindicated|r
    .goto Stormwind City,37.355,31.708
    .accept 81762 >>Accept Some Good News
    .target Aeonas the Vindicated
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine the Pure|r
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Turn in Some Good News
    .accept 81764 >>Accept The Mysterious Merchant
    .target Katherine the Pure
step
    #completewith next
    .zone Dustwallow Marsh >>Travel to Dustwallow Marsh/Theramore Isles |cRXP_WARN_(e.g. take the boat from Menethil Harbor to Theramore)|r
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elrick|r inside the inn
    *|cRXP_WARN_Two level 45 enemies will attack you after accepting the quest|r
    .goto Dustwallow Marsh,66.52,45.41
    .turnin 81764 >>Turn in The Mysterious Merchant
    .accept 81765 >>Accept Elrick, Paladin of the Silver Hand
    .target Elrick
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elrick|r
    .goto Dustwallow Marsh,66.52,45.41
    .gossip 221575,5
    .skipgossip 221575,1
    .train 429251,1
step
    .train 429251,1
    >>Kill |cRXP_ENEMY_Elrick|r. Loot him for the |T133471:0|t[|cRXP_LOOT_Bloody Missive|r]
    >>|cRXP_WARN_Use the|r |T133471:0|t[|cRXP_LOOT_Bloody Missive|r] |cRXP_WARN_to get the quest|r
    .goto Dustwallow Marsh,66.52,45.41
    .collect 219930,1,81766,1
    .accept 81766 >>Accept The Bloody Missive
    .use 219930
    .skipgossip 221575,1
    .target Elrick
step
    #completewith next
    .zone Stormwind City >>Travel to Stormwind
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine the Pure|r |cRXP_WARN_to train|r |T135905:0|t[Fanaticism]
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Turn in The Bloody Missive
    .target Katherine the Pure
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#name Light's Grace - 40 (Feralas)

step
    #optional
    .train 5599 >>|cRXP_WARN_You must have|r |T135964:0|t[Blessing of Protection] |cRXP_WARN_trained in order to aquire the|r |T135931:0|t[Light's Grace] |cRXP_WARN_rune|r
step
    #optional
    #completewith TeleporterTaken
    .isQuestTurnedIn 79984
    .goto Stranglethorn Vale,27.6,77.4,8 >>Use the Teleporter to Feralas in Booty Bay
    .train 429242,1
step
    #optional
    .isQuestAvailable 79984
    #completewith TeleporterTaken
    .zone Feralas >>Travel to Feralas
    .goto Feralas,85.27,43.66,8 >>Use the |cRXP_PICK_Wondergear Worldporter|r
    .train 429242,1
step
    #label TeleporterTaken
    .goto Feralas,84.26,43.81,10 >>Reach the platform
    .train 429242,1
step
    .train 429242,1
    >>1) |cRXP_WARN_Set the faction Gadgetzan to "At War" in your Reputation window|r
    >>2) Go to the exact waypoint position
    >>3) Look at the green bush next to the wooden house
    .goto Feralas,83.93,43.89
    .goto Feralas,85.27,43.66,0
    .aura 436534,1 >>4) |cRXP_WARN_Wait for the |cRXP_ENEMY_Tower Defense Automaton|r to be exactly between you and the bush and attack it|r
    .mob Tower Defense Automaton
step
    .train 429242,1
    >>|cRXP_WARN_Heal|r |cRXP_FRIENDLY_Frix Xizzix|r |cRXP_WARN_until he stands up|r.
    .gossip 220930,1 >>Afterwards talk to |cRXP_FRIENDLY_Frix Xizzix|r
    .skipgossip 220930,1
    .goto Feralas,81.45,42.46
    .target Frix Xizzix
step
    #completewith next
    .zone Stranglethorn Vale >>Travel to Stranglethorn Vale/Booty Bay
    .train 429242,1
step
    .train 429242,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rix Xizzix|r and buy the |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .goto Stranglethorn Vale,28.4,75.8
    .collect 219147,1
    .target Rix Xizzix
step
    .itemcount 219147,1
    .use 219147
    .train 429242 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r] |cRXP_WARN_to train|r |T236249:0|t[Sacred Shield]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Helmet
#name Wrath - 43 (The Hinterlands)

-- Wrath

step
    #optional
    .train 5502 >>|cRXP_WARN_You must have|r |T135974:0|t[Sense Undead] |cRXP_WARN_trained in order to aquire the|r |T236260:0|t[Wrath] |cRXP_WARN_rune|r
    .train 429249,1
step
    #completewith RuneLearned
    +|cRXP_WARN_You can only get the|r |T236260:0|t[Wrath] |cRXP_WARN_rune between 9pm-6am.|r
step
    #completewith next
    .zone The Hinterlands >>Travel to The Hinterlands
    .train 429249,1
step
    .train 429249,1
    >>|cRXP_WARN_Use|r |T135974:0|t[Sense Undead] |cRXP_WARN_to be able to see the|r |cRXP_ENEMY_Vengeful Spirit|r
    >>Kill the |cRXP_ENEMY_Vengeful Spirit|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r]
    *The |cRXP_ENEMY_Vengeful Spirit|r walks around the lake
    .goto The Hinterlands,33.0,44.2
    .collect 220165,1
    .mob Vengeful Spirit
step
    #label RuneLearned
    .itemcount 220165,1
    .use 220165
    .train 429249 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r] |cRXP_WARN_to train|r |T236260:0|t[Wrath]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Bracers
#name Hammer of the Righteous - 50 (Azeroth)

--x shiek: needs better coordinates
step
    #optional
    .train 410013 >>|cRXP_WARN_You have to learn the rune for|r |T236253:0|t[Hammer of the Righteous] |cRXP_WARN_first before you can obtain this one|r
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Travel to Felwood
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    .gossip 217996,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aoenas the Vindicated|r
    .target Aoenas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    .gossip 221636,8 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregory|r
    .target Gregory
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregory|r
    .accept 81790,1 >>Accept Materials of Significance
    .target Gregory
    .train 410013,1
step
    #loop
    .goto Felwood,44.4,46.8,40,0
    .goto Felwood,40.0,43.6,40,0
    .goto Felwood,41.8,34.8,40,0
    .goto Felwood,48.0,38.8,40,0
    >>Kill |cRXP_ENEMY_Infernal Sentry|r, |cRXP_ENEMY_Infernal Bodyguard|r, |cRXP_ENEMY_Entropic Beast|r and |cRXP_ENEMY_Entropic Horror|r. Loot them for |cRXP_LOOT_|T136030:0|tFiery Infernal Core|r
    .complete 81790,1 --3/3 Fiery Infernal Core
    .mob Infernal Sentry
    .mob Infernal Bodyguard
    .mob Entropic Beast
    .mob Entropic Horror
step
    #completewith next
    #title Maraudon
    .zone Desolace >>Travel to Maraudon
    .goto Desolace,30,62,20
    .train 410013,1
step
    >>|cRXP_WARN_It's recommended to form a group of 5players.|r
    >>Kill |cRXP_ENEMY_Princess Theradras.|r the endboss of Maraudon. Loot her for |cRXP_LOOT_|T134389:0|tShimmering Grave Dust.|r
    .complete 81790,2 --1/1 Shimmering Grave Dust
    .mob Princess Theradras
    .train 410013,1
step << Alliance
    #completewith next
    #title Blackrock Depths
    .zone Searing Gorge >>Travel to Blackrock Depths
    .goto 1415,48.09,62.42,20
    .train 410013,1
step << Alliance
    >>|cRXP_WARN_It's recommended to form a group of 5players and you'll need 3 gold.|r
    >>Venture through Blackrock Depths until you reach the Grim Guzzler Bar. |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plugger Spazzring|r and buy |T135262:0|t[Triple-Brewed Molten Lager]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step << Alliance
    #completewith next
    .zone Hillsbrad Foothills >>Travel to Hillsbrad Foothills
    .train 410013,1
step << Alliance
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave Stonetorch|r
    .target Brave Stonetorch
    .accept 81944,1 >>Accept A Newly Discovered Purpose
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Hillsbrad Foothills >>Travel to Hillsbrad Foothills
    .train 410013,1
step << Horde
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave Stonetorch|r
    .target Brave Stonetorch
    .accept 81944,1 >>Accept A Newly Discovered Purpose
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Searing Gorge >>Travel to Searing Gorge
    .train 410013,1
step << Horde
    >>|cRXP_WARN_It's recommended to form a group of 5players and you'll need 3 gold.|r
    >>Venture through Blackrock Depths until you reach the Grim Guzzler Bar. |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plugger Spazzring|r and buy |T135262:0|t[Triple-Brewed Molten Lager]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step
    #completewith next
    .zone Felwood >>Travel to Felwood
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregory|r
    .turnin 81790 >>Accept Materials of Significance
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aoenas the Vindicated|r
    .accept 81885,1 >>Accept The Ritual
    .target Aoenas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregory|r
    .complete 81885,1 --1/1 Complete the Ritual
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aoenas the Vindicated|r
    .turnin 81885 >>Turn in The Ritual
    .target Aoenas the Vindicated
    .train 410013,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#name Shield of Righteousness - 60 (Eastern Plaguelands)

--There wasn't very precise info for this available, might need confirmation if it works properly

step
    #completewith next
    >>|cRXP_WARN_Unlocking this rune will require killing a boss in Stratholme(undead). Start looking for a group for it if you wish|r
    .zone Eastern Plaguelands >> Travel to Eastern Plaguelands
step
    .line Eastern Plaguelands,28.6,84.2,33.2,83.0,35.30,82.55,41.19,81.68,45.42,80.68,48.8,79.9,51.5,78.3,55.1,76.4
    >>Look for a |cRXP_ENEMY_Slack-Jawed Ghoul|r. Kill him and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orthas|r a dwarf spirit that will appear. Accept his quest
    >>|cRXP_WARN_The|r |cRXP_ENEMY_Slack-Jawed Ghoul|r |cRXP_WARN_patrolls the area south of the road between the Undercroft and Corrin's Crossing|r
    .accept 84318 >> Accept Oi!
    .unitscan Slack-Jawed Ghoul
    .target Orthas
step
    .goto Eastern Plaguelands,61.3,69.3 --Not sure if this is the house or the other one, need more info
    >>Enter the house in Corrin's Crossing. Loot the |T133040:0|t[|cRXP_PICK_Ornate Warhammer|r] |cRXP_WARN_on the second floor|r
    .complete 84318,1
step
    .goto Eastern Plaguelands,61.3,69.3
    >>Use |T134566:0|t[Orthas' Favourite Gold Tooth] to summon |cRXP_FRIENDLY_Orthas|r again. Talk to him to turnin the quest and get the followup
    .turnin 84318 >> Turn in Oi!
    .accept 84319 >> Accept Oh No Ye Don't
    .use 227687
step
    .goto Eastern Plaguelands,59.7,68.7
    >>Kill any |cRXP_ENEMY_Stitched Horror|r and loot it for the |T133823:0|t[|cRXP_LOOT_Partially-Digested Plate Armor|r]
    .complete 84319,1
    .mob Stitched Horror
step
    >>Use |T134566:0|t[Orthas' Favourite Gold Tooth] to summon |cRXP_FRIENDLY_Orthas|r again. Talk to him to turnin the quest and get the followup
    .turnin 84319 >> Turn in Oh No Ye Don't
    .accept 84330 >> Accept A Wee Bit O' Necromancy
step
    >>Find a group for Stratholme(undead)
    >>Kill |cRXP_ENEMY_Maleki the Pallid|r one of the bosses in the undead side of the dungeon and loot him for the |T134415:0|t[Necrotic Runestone]
    .complete 84330,1 --Necrotic Runestone
    .mob Maleki the Pallid
step
    .goto Eastern Plaguelands,22.7,86.1
    >>Return to the Undercroft, look for the |cRXP_FRIENDLY_Rotting Dwarf Corpse|r. Interact with it to turn in the quest
    .turnin 84330 >> Turn in A Wee Bit O' Necromancy
step
    >>Accept the followup quest from the corpse. It's an instant turnin that will teach you how to engrave |T236265:0|t[|cRXP_FRIENDLY_Shield of Righteousness|r]
    .goto Eastern Plaguelands,22.7,86.1
    .accept 84332 >> Accept A Thane's Gratitude
    .turnin 84332 >> Turnin A Thane's Gratitude

]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#name Righteous Vengeance - 55 (Western Plaguelands)
#title Righteous Vengeance
#next Shock and Awe - 55 (Western and Eastern Plaguelands)

step
    #completewith next
    .zone Western Plaguelands >> Head to the Western Plaguelands
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Fallen Knight|r
    .gossip 227519,1 >> Go through his dialogue
    .target Fallen Knight
--Not entirely sure if you even need to talk to him or if you do how deep the dialogue is
step
    .goto Western Plaguelands,47.5,50.4
    >>Enter the barn next to the |cRXP_FRIENDLY_Fallen Knight|r and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r
    .accept 83808 >> Accept In a Bind
    .target Squire Cuthbert
step
    .goto Western Plaguelands,47.5,50.4
    .goto Western Plaguelands,45.7,53.9
    >>Loot [|cRXP_PICK_Squire Cuthbert's Sword|r] laying on the field nearby
    .complete 83808,1
step
    >>Go back to the barn and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r
    .turnin 83808 >> Turn in In a Bind
    .accept 83935 >> Accept Clearing the Path
    .target Squire Cuthbert
step
    .goto Western Plaguelands,45.7,53.9
    >>Kill |cRXP_ENEMY_Blighted Zombies|r, |cRXP_ENEMY_Skeletal Terrors|r and |cRXP_ENEMY_Rotting Cadavers|r
    .complete 83935,1 --Blighted Zombie(5)
    .complete 83935,2 --Skeletal Terror(10)
    .complete 83935,3 --Rotting Cadaver(10)
    .mob Blighted Zombie
    .mob Skeletal Terror
    .mob Rotting Cadaver
step
    .goto Western Plaguelands,47.5,50.4
    >>Go back to the barn and |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r
    .turnin 83935 >> Turn in Clearing the Path
    .accept 83822,1 >> Accept The Fallen Knight, |cRXP_WARN_this is an escort quest|r
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>Escort |cRXP_FRIENDLY_Squire Cuthbert|r back to the Fallen Knight and help him burn the corpse
    .complete 83822,1
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r
    .turnin 83822 >> Turn in The Fallen Knight
    .accept 83936 >> Accept Dalton's Quest
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r and go through his dialogue
    .complete 83936,1
    .target Squire Cuthbert
step
    .goto Western Plaguelands,44.6,46.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Squire Cuthbert|r and go through his dialogue. Turning in this quest will train you on how to engrave |T236260:0|t[|cRXP_FRIENDLY_Righteous Vengeance|r]
    >>You will also receive |T237377:0|t[|cFF0070FFDalton's Horn|r] which you will need in order to unlock the rune of |T252188:0|t[|cRXP_FRIENDLY_Shock and Awe|r]
    .turnin 83936 >> Turn in Dalton's Quest
    .target Squire Cuthbert
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune & Books Guide
#subgroup Cloak
#name Shock and Awe - 60 (Western and Eastern Plaguelands)
#title Shock and Awe & Avenging Wrath

step
    #completewith next
    +|cRXP_WARN_In order to begin the quest for this rune you will need to have unlocked the rune of|r |T236260:0|t[|cRXP_FRIENDLY_Righteous Vengeance|r]. |cRXP_WARN_Go to the Righteous Vengeance guide to begin|r
    .train 440792,1 --Righteous Vengeance
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Use the|r |T237377:0|t[|cFF0070FFDalton's Horn|r] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Squire Cuthbert|r |cRXP_WARN_and kill mobs untill he levels up. Once he does he will give you a free turn-in quest|r
    .accept 83823 >> Accept a Lesson in Violence
    .turnin 83823 >> Turn in a Lesson in Violence
    .use 226122
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Use the|r |T237377:0|t[|cFF0070FFDalton's Horn|r] |cRXP_WARN_to summon|r |cRXP_FRIENDLY_Squire Cuthbert|r |cRXP_WARN_and keep killing mobs untill he levels up again. Once he does he will give you another free turn-in quest and another quest to find a lich named|r |cRXP_ENEMY_Arkonos the Cursed|r
    .accept 84008 >> Accept a Lesson in Grace
    .turnin 84008 >> Turn in a Lesson in Grace
    .accept 84017 >> Accept A Time to Kill
    .use 226523
step
    .goto Eastern Plaguelands,78.6,47.6
    >>|cRXP_WARN_Head to the Noxious Glade, an area just north of Light's Hope chapel. Once you're there summon your squire again. The quest to find Arkonos should complete and you will get another quest, accept it|r
    .turnin 84017 >> Turn in A Time to Kill
    .accept 84125 >> Accept Close Enough To Touch
    .use 226545
step
    .goto Eastern Plaguelands,83.7,41.9
    >>Kill |cRXP_ENEMY_Shadowmages|r and |cRXP_ENEMY_Dread Weavers|r in the Noxious Glade. Loot them for |T135482:0|t[|cRXP_LOOT_Scourge Shadow Scalpel|r]
    .complete 84125,1
    .mob Shadowmage
    .mob Dread Weaver
step
    >>Use the |T237377:0|t[|cFF0070FFDalton's Horn|r] to summon |cRXP_FRIENDLY_Squire Cuthbert|r if you lost him. Talk to him
    .turnin 84125 >> Turn in Close Enough To Touch
    .accept 84126 >> Accept Finish the Fight
    .use 226122
    .target Squire Cuthbert
step
    .goto Eastern Plaguelands,86.6,39.8
    >>Use the |T237490:0|t[|cRXP_LOOT_Modified Shadow Scalpel|r] you got to dispell |cRXP_ENEMY_Arkonos's|r shield. Kill him to complete the quest
    .complete 84126,1 --Arkonos the cursed slain
    .use 227685
step
    >>Use the |T237377:0|t[|cFF0070FFDalton's Horn|r] to summon |cRXP_FRIENDLY_Squire Cuthbert|r if you lost him. Talk to him
    >>Turning in this quest will train you on how to engrave |T252188:0|t[Shock and Awe] and also give you the |T133745:0|t[|cRXP_FRIENDLY_Testament of Avenging Wrath|r] which will teach you |T135875:0|t[Avenging Wrath]
    .turnin 84126 >> Turn in Finish the Fight
    .use 226122
    .target Squire Cuthbert
step
    .train 407788 >> Use the |T133745:0|t[|cRXP_FRIENDLY_Testament of Avenging Wrath|r] to train |T135875:0|t[Avenging Wrath]
    .use 226399
]])