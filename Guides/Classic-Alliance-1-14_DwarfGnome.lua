local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance !Hunter
#name 1-6 Coldridge Valley
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 6-11 Dun Morogh
step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step << Mage
    #completewith next
    +Note that you have selected the single target mage guide. Single target is a lot safer than AoE Mage, but a LOT slower
step << !Warlock
    #completewith next
    .destroy 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .goto Dun Morogh,29.927,71.201
    .accept 179 >> Accept Dwarven Outfitters
    .target Sten Stoutarm
step << Warrior
    .goto Dun Morogh,29.68,74.20,40,0
    >>Kill |cRXP_ENEMY_Ragged Young Wolves|r until you have 10c+ worth of vendor trash
    >>|cRXP_WARN_You will train|r |T132333:0|t[Battle Shout] |cRXP_WARN_which increases early leveling speeds|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .goto Dun Morogh,28.793,67.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .goto Dun Morogh,28.832,67.242
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
    .target Grundel Harkin
    .target Thran Khorman
step << Warlock
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Enter Anvilmar
    >>|cRXP_WARN_Unequip your Body Armor, Shirt, Pants and Boots en-route. You will vendor them|r
step << Warlock
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .vendor >> |cRXP_WARN_Vendor your Body Armor, Shirt, Pants and Boots along with the Food and Water in your bags. You need 10c total|r
    .target Durnan Furcutter
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .train 348 >> Train |T135817:0|t[Immolate]
    .accept 1599 >> Accept Beginnings
    .target Alamar Grimm
step
    .goto Dun Morogh,30.79,74.48,50,0
    .goto Dun Morogh,29.02,76.38,50,0
    .goto Dun Morogh,26.68,75.57
    >>Kill |cRXP_ENEMY_Ragged Young Wolves|r and |cRXP_ENEMY_Ragged Timber Wolves|r. Loot them for their |cRXP_LOOT_Tough Wolf Meat|r
    >>|cRXP_WARN_Equip any Cloth Armor you loot off the|r |cRXP_ENEMY_Young Wolves|r << Warlock
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .xp 2 >> Grind to 2
step << Warlock
    #hardcore
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 3115 >> Accept Tainted Memorandum << Gnome Warlock
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .target Sten Stoutarm
step << Warlock
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Accept A New Threat
    .target Balir Frosthammer
step << Warlock
    #hardcore
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water]|cRXP_BUY_. Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Warlock
    #softcore
    #completewith next
    .goto Dun Morogh,26.8,79.8,40,0
    .goto Dun Morogh,30.1,82.4,30 >> Kill some |cRXP_ENEMY_Wolves|r en route, then watch this video
    .link https://www.youtube.com/watch?v=iUvGsRbIVp8 >> CLICK HERE
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step << Warlock
    #hardcore
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Enter the Frostmane Cave
step << Warlock
    >>Kill |cRXP_ENEMY_Frostmane Novices|r inside the cave. Loot them for |cRXP_LOOT_Feather Charms|r
    >>|cRXP_BUY_Equip any Cloth Armor you loot off the|r |cRXP_ENEMY_Frostmanes|r
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #hardcore
    #completewith next
    .hs >> Hearth to Coldridge Valley
step << Warlock
    #softcore
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Warlock
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .goto Dun Morogh,28.650,66.145
    .turnin 1599 >> Turn in Beginnings
    .turnin 3115 >> Turn in Tainted Memorandum << Gnome Warlock
    .target Alamar Grimm
step << Warlock
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .goto Dun Morogh,28.650,66.145
    .turnin 1599 >> Turn in Beginnings
    .target Alamar Grimm
step << Priest/Mage
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water]|cRXP_BUY_. Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Adlin Pridedrift
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3106 >> Accept Simple Rune << Dwarf Warrior
    .accept 3107 >> Accept Consecrated Rune << Paladin
    .accept 3109 >> Accept Encrypted Rune << Dwarf Rogue
    .accept 3110 >> Accept Hallowed Rune << Priest
    .accept 3112 >> Accept Simple Memorandum << Gnome Warrior
    .accept 3113 >> Accept Encrypted Memorandum << Gnome Rogue
    .accept 3114 >> Accept Glyphic Memorandum << Mage
    .accept 3115 >> Accept Tainted Memorandum << Gnome Warlock
    .target Sten Stoutarm
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Accept A New Threat
    .target Balir Frosthammer
step
    #era
    #completewith Rockjaw
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.79,71.60
    >>Kill |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >> Turn in The Boar Hunter
step << Paladin/Mage/Warlock
    #era
    .xp 3+1130 >> Grind to 1130+/1400xp
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5,50,0
    .goto Dun Morogh,27.7,76.3,50,0
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5
step << Paladin/Mage/Warlock
    #som
    .xp 3+1022 >> Grind to 1022+/1400xp
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5,50,0
    .goto Dun Morogh,27.7,76.3,50,0
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
step << Paladin/Mage/Warlock
    .xp 4
step << Paladin/Mage/Warlock
    #era
    .goto Dun Morogh,31.37,75.63
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Accept Scalding Mornbrew Delivery
step << Paladin/Mage/Warlock
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Travel to Anvilmar
step << Paladin/Mage/Warlock
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r
    .target Bromos Grummner
    .goto Dun Morogh,28.833,68.332
    .turnin 3107 >> Turn in Consecrated Rune
    .trainer >> Train your class spells
step << Gnome Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r
    .target Marryk Nurribit
    .goto Dun Morogh,28.709,66.366
    .turnin 3114 >> Turn in Glyphic Memorandum
    .trainer >> Train your class spells
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r
    .target Alamar Grimm
    .goto Dun Morogh,28.650,66.145
    .turnin 3115 >> Turn in Tainted Memorandum
    .trainer >> Train your Corruption
step << Paladin/Mage/Warlock
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Turn in A New Threat
step << Mage/Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water]|cRXP_BUY_. Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Mage !Warlock
    #era
    #completewith next
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Mage/Warlock
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage
    #label TrollTroggs
    .goto Dun Morogh,28.7,77.5
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << !Paladin !Mage !Warlock
    .xp 4 >> Grind to 4
step << !Paladin !Mage !Warlock
    #era
    #requires TrollTroggs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << !Paladin !Mage !Warlock
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << Paladin/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step << Paladin/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Turn in Bring Back the Mug
step << !Paladin !Mage !Warlock
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Accept Scalding Mornbrew Delivery
step << !Paladin !Mage !Warlock
    #softcore
    #completewith next
    +You now have 5m to get the Journal, then turnin the Mornbrew. If you fail quest, pick it up again after dying
step
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Enter the Frostmane Cave
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r. Loot him for his |cRXP_LOOT_Journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Mage !Warlock
    #softcore
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at Spirit Healer
    .target Spirit Healer
step << !Paladin !Mage !Warlock
    #hardcore
    #completewith next
    +Exit the Frostmane Cave
step << !Paladin !Mage !Warlock
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Accept Scalding Mornbrew Delivery
step << !Paladin !Mage !Warlock
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step << !Paladin !Mage !Warlock
    .isOnQuest 3364
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    >>If you were too slow and failed this quest, abandon it and go accept it again from |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
step << !Paladin !Mage !Warlock
    .isQuestTurnedIn 3364
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
step << !Paladin !Mage !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Accept Scalding Mornbrew Delivery
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .target Solm Hargrin
    .goto Dun Morogh,28.4,67.5
    .turnin 3113 >> Turn in Encrypted Memorandum << Gnome Rogue
    .turnin 3109 >> Turn in Encrypted Rune << Dwarf Rogue
step << Dwarf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .target Branstock Khalder
    .goto Dun Morogh,28.600,66.385
    .turnin 3110 >> Turn in Hallowed Rune
    .trainer >> Train your class spells
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .target Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .turnin 3106 >> Turn in Simple Rune << Dwarf Warrior
    .turnin 3112 >> Turn in Simple Memorandum << Gnome Warrior
    .trainer >> Train your class spells
step << !Paladin !Mage !Warlock
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Turn in A New Threat
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water]
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step << !Paladin !Mage !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Turn in Bring Back the Mug
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Thalos|r
    .target Mountaineer Thalos
    .goto Dun Morogh,33.484,71.841
    .turnin 282 >> Turn in Senir's Observations
    .accept 420 >> Accept Senir's Observations
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .target Hands Springsprocket
    .goto Dun Morogh,33.847,72.236
    .accept 2160 >> Accept Supplies to Tannok
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Travel through Coldridge Pass
]])

RXPGuides.RegisterGuide([[
#era/som
#classic
<< Alliance !Hunter
#name 6-11 Dun Morogh
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 10-11 Elwynn (Dwarf/Gnome)
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |cRXP_LOOT_Chunks of Boar Meat|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Travel to Kharanos. Grind to 2145/+2800xp killing |cRXP_ENEMY_Crag Boars|r en-route << Priest
    .xp 5+2415 >> Travel to Kharanos. Grind to 2415/+2800xp killing |cRXP_ENEMY_Crag Boars|r en-route << !Priest
    .mob Crag Boar
    .mob Large Crag Boar
step
    #hardcore
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >> Travel to Kharanos. Kill |cRXP_ENEMY_Crag Boars|r en-route
    .mob Crag Boar
    .mob Large Crag Boar
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer, or run to Kharanos. Make sure your subzone is NOT Coldridge Pass
    .target Spirit Healer
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Train your class spells
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor >> |cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact (Rank 1)] |cRXP_BUY_if you can afford it. If not you will buy it later|r
    .target Dannie Fizzwizzle
    .money <0.0100
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Grind to 6
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >> Turn in Supplies to Tannok
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreg Bilmn|r
    .vendor >> |cRXP_BUY_Buy and equip a|r |T135426:0|t[Small Throwing Knife]
    .target Kreg Bilmn
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Train your class spells
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Train your class spells
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Train your class spells
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .accept 5625 >> Accept Garments of the Light
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on |cRXP_FRIENDLY_Mountaineer Dolf|r
    .target Mountaineer Dolf
    .goto Dun Morogh,45.805,54.568
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .turnin 5625 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Priest
    .xp 6 >> Grind to 6
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> |cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_as you can afford|r
step << !Mage !Priest !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Set your Hearthstone to Thunderbrew Distillery
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Train your class spells
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,45.8,51.8,20 >> Travel to the Blacksmith
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T132401:0|t[Large Axe]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T135641:0|t[Stiletto]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T133053:0|t[Wooden Mallet]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire|r
    .target Tognus Flintfire
    .goto Dun Morogh,45.3,51.9
    .trainer >> Train |T136241:0|t[Blacksmithing]
    >>|cRXP_WARN_This will allow you to make |T135248:0|t[Rough Sharpening Stones] which increase melee hits by +2 Damage. This is very significant early on|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make |T135255:0|t[Rough Weightstones] which increase melee hits by +2 Damage. This is very significant early on|r << Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >> Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Don't kill any |cRXP_ENEMY_Young Black Bears|r en-route|r
    .target Pilot Bellowfiz
    .accept 317 >> Accept Stocking Jetsteam
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .accept 313 >> Accept The Grizzled Den
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r
    .target Beldin Steelgrill
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >> Turn in Tools for Steelgrill
step
    #label BoarMeat44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loslor Rudge|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >> Accept Ammo for Rumbleshot
step << Warrior/Paladin/Rogue
    #completewith next
    .money <0.0091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loslor Rudge|r
    .goto Dun Morogh,50.084,49.420
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_if you trained|r |T136241:0|t[Blacksmithing]
    .collect 2901,1
    .target Loslor Rudge
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yarr Hammerstone|r
    .trainer >>Train |T134708:0|t[Mining]
    .target Yarr Hammerstone
step << Warrior/Paladin/Rogue
    .cast 2580 >> |cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]
step << Paladin/Warrior/Rogue
    #completewith BearFur
    >>Kill |cRXP_ENEMY_Young Black Bears|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Kill |cRXP_ENEMY_Young Black Bears|r. Loot them for their |cRXP_LOOT_Fur|r
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |cRXP_LOOT_Chunks of Boar Meat|r and |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Young Black Bear
step << !Paladin !Warrior !Rogue
    #completewith Ribs
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
step << Warrior
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .vendor >> |cRXP_BUY_Buy as much|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_as you can afford|r
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .vendor >> |cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_as you can afford|r
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,42.38,55.28,40 >> Travel to The Grizzled Den
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>Kill |cRXP_ENEMY_Wendigos|r and |cRXP_ENEMY_Young Wendigos|r. Loot them for their |cRXP_LOOT_Manes|r
    >>|cRXP_WARN_Remember to keep an eye out for|r |T134566:0|t[Copper Veins] |cRXP_WARN_which yield|r |T135232:0|t[Rough Stones] |cRXP_WARN_so you can craft|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Remember to keep an eye out for|r |T134566:0|t[Copper Veins] |cRXP_WARN_which yield|r |T135232:0|t[Rough Stones] |cRXP_WARN_so you can craft|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Open the |cRXP_PICK_Ammo Crate|r. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Turn in Ammo for Rumbleshot
step << !Paladin !Warrior !Rogue
    .xp 7 >> Grind to 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
    >>Kill |cRXP_ENEMY_Young Black Bears|r. Loot them for their |cRXP_LOOT_Fur|r
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |cRXP_LOOT_Chunks of Boar Meat|r and |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob Young Black Bear
    .mob Crag Boar
    .mob Large Crag Boar
step << Paladin/Warrior/Rogue
    #completewith Ribs
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Turn in The Grizzled Den
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> Buy a Mining Pick
step << Warrior/Paladin/Rogue
    #era
    .xp 7 >> Grind to 7
step << Warrior/Rogue
    #som
    .xp 8 >> Grind nearby mobs to 8
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Train your class spells
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Train your class spells
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Train your class spells
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T132401:0|t[Large Axe]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T135641:0|t[Stiletto]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T133053:0|t[Wooden Mallet]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .vendor >> |cRXP_BUY_Buy up to 20|r |T133968:0|t[Freshly Baked Bread] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Buy up to 10|r |T133968:0|t[Freshly Baked Bread] << Paladin
    .target Innkeeper Belm
step << Paladin/Warrior/Rogue
    #completewith next
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,37.9,50.8,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Travel toward |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Kill |cRXP_ENEMY_Boars|r, |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r en-route
step << Paladin/Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Paladin !Warrior !Rogue
    #completewith next
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Travel toward |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Kill |cRXP_ENEMY_Boars|r, |cRXP_ENEMY_Bears|r and |cRXP_ENEMY_Wolves|r en-route
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step
    #completewith next
    .goto Dun Morogh,30.5,46.0,50 >> Travel to Brewnall Village
step << !Mage !Priest
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_BUY_Buy up to 20|r |T132815:0|t[Ice Cold Milk]
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >> Accept Bitter Rivals
step
    #label Ribs
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r and |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Snow Leopard
step
    >>Kill |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    .complete 384,1 --Collect Crag Boar Rib (x6)
    .mob Elder Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
step
    #hardcore
    #completewith HCXPCheck
    .goto Dun Morogh,47.377,52.523,80 >> Grind en-route back to Kharanos
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>If you have already turned in the quest Beer Basted Boar Ribs, grind until 4360+/4500xp
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
    #label HCXPCheck
    .xp 7+3735 >>Grind until 3735+/4500xp
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
    #hardcore
    #completewith next
    .goto Dun Morogh,47.377,52.523,80 >> Travel to Kharanos
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Run to here and follow the arrow closely in the upcoming steps to deathskip to Wetlands
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Keep running straight north, jump down and die once the General Chat changes to Wetlands, then respawn at Menethil Harbor
    .target Spirit Healer
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Swim to shore
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shellei Brondir|r
    .fp Wetlands >> Get the Wetlands flight path
    .target Shellei Brondir
step
    #softcore
	#completewith next
    .hs >> Hearth to Kharanos
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_and a|r |T132800:0|t[Thunder Ale]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarven Thunderbrew|r downstairs
    .turnin 308 >> Turn in Distracting Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Click the |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >> Turn in Beer Basted Boar Ribs
step << !Paladin !Rogue !Warrior
    .xp 8 >> Grind to 8
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .target Gimrizz Shadowcog
    .trainer >> Train your class spells
    .train 5782 >> Train |T136183:0|t[Fear]
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .vendor >> |cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_BUY_if you can afford it. If not you will buy it later|r
    .target Gimrizz Shadowcog
    .money <0.100
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Train your class spells
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Train your class spells
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Train your class spells
step << Mage
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Train your class spells
    .train 118 >> Train |T136071:0|t[Polymorph]
step << Priest
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .trainer >> Train your class spells
step << Warrior/Rogue/Paladin
    .money <0.01
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Thamner Pol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T132401:0|t[Large Axe]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T135641:0|t[Stiletto]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy and equip a|r |T133053:0|t[Wooden Mallet]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Buy up to 30|r |T133968:0|t[Freshly Baked Bread] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Buy up to 15|r |T133968:0|t[Freshly Baked Bread] << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Buy up to 30|r |T132815:0|t[Ice Cold Milk]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Accept Frostmane Hold
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Turn in The Grizzled Den
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    >>|cRXP_WARN_Choose the|r |T135637:0|t[Camping Knife] |cRXP_WARN_reward. Save it for later|r << Rogue
    .turnin 320 >> Turn in Return to Bellowfiz
step
    #era << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Accept Operation Recombobulation
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Travel to Shimmer Ridge. Follow the arrow and run up the mountain
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for their |cRXP_LOOT_Shimmerweed|r
    >>|cRXP_LOOT_Shimmerweed|r can also be looted from |cRXP_PICK_Shimmerweed Baskets|r on the ground
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r. Loot it for |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Wait until |cRXP_ENEMY_Old Icebeard|r patrols out of the Cave. Once he patrols out of the Cave you can enter and loot|r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Click here for video reference|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Old Icebeard|r << Mage
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on|r |cRXP_ENEMY_Old Icebeard|r << Warlock
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r. Loot it for |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_BUY_Buy up to 10 more|r |T132815:0|t[Ice Cold Milk]
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Turn in Return to Marleth
step
    #era << Warlock
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Kill |cRXP_ENEMY_Leper Gnomes|r. Loot them for their |cRXP_LOOT_Gears|r and |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #era
    .xp 9 >> Grind to 9
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Enter Frostmane Hold
step
    #completewith next
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #hardcore
    >>|cRXP_WARN_Drop down to this location to explore Frostmane Hold. If there are mobs below, clear around normally and do NOT drop down|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    >>Jump down into the nook below
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #hardcore
	#completewith next
	.hs >> Hearth to Kharanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports
step << Rogue
    #level 10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .accept 2218 >> Accept Road to Salvation
step << !Paladin !Priest
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Thamner Pol
step
    #era << Warlock
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .turnin 412 >> Turn in Operation Recombobulation
step << Warrior
    #sticky
    #completewith next
    .money >0.1030
    +|cRXP_WARN_Grind until you have 10s30c, then run into Ironforge|r
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Travel to Ironforge
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r or |cFF00FF25Buliwyf Stonehand|r
    .trainer >> If you are in a party or have someone to help you kill |cRXP_ENEMY_Vagash|r now, train 2h Maces from |cFF00FF25Buliwyf Stonehand|r, otherwise train Thrown from |cRXP_FRIENDLY_Bixi Wobblebonk|r. If you aren't sure which to train, just train Thrown
    .target Bixi Wobblebonk
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Balanced Throwing Dagger] and equip it if you trained Thrown|r
    .target Brenwyn Wintersteel
step << Warrior
    #completewith next
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.90,35.62
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
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >> Travel to Gol'Bolar Quarry
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.6,54.7
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
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r and |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r and |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Turn in The Public Servant
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    #era
    .goto Dun Morogh,67.1,59.7
    .xp 10 >> Grind to 10
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
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
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Turn in A Pilot's Revenge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,200 >> Travel to Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r in the bunker
    .target Captain Rugelfuss
    .accept 267 >> Accept The Trogg Threat
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
    .turnin 414 >> Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
    .target Brock Stoneseeker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor >> |cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_if needed|r
    .target Yanni Stoutheart
step << !Paladin
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .home >> Set your Hearthstone to Thelsamar
    .target Innkeeper Hearthstove
step << skip
    #sticky
    #completewith next
    +Grind mobs until you have at least 33 Silver worth of money and vendorables
--N rogue money gate for cutlass+1h swords
step
    #completewith Thelsamar1
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_Save any|r |T133970:0|t[Chunks of Boar Meat] |cRXP_WARN_to use for leveling |T133971:0|t[Cooking] |cRXP_WARN_later|r
    >>|cRXP_WARN_Don't go out of your way to complete this right now. You'll come back to Loch Modan soon|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Travel north to the Algaz Station
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .accept 307 >> Accept Filthy Paws
    .target Mountaineer Stormpike
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    .isQuestComplete 418
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    #label Thelsamar1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bixi Wobblebonk|r and |cFF00FF25Buliwyf Stonehand|r
    >>Train Thrown and 2h Maces if you didn't earlier
    .train 2567 >> Train Thrown
    .goto Ironforge,62.237,89.628
    .train 199 >> Train 2h Maces
    .goto Ironforge,61.177,89.508
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Brenwyn Wintersteel|r down stairs
    >>|cFFFCDC00Buy a|r |T135641:0|t[Balanced Throwing Dagger]
    .collect 2946,1 -- setting it to a count of 1 incase they already have/used some for vagash earlier
    .target Brenwyn Wintersteel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Turn in The Reports
step
    >>|cRXP_WARN_Do NOT fly anywhere|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    #completewith next
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_Enter the Deeprun Tram|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform
    .target Monty
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    .use 17117 >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute] |cRXP_WARN_on|r |cRXP_ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >> Accept Me Brother, Nipsy
step
    #completewith next
    .zone Stormwind City >> Take the Tram to Stormwind
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_if needed while waiting for the Tram|r << !Priest !Paladin
    >>|cRXP_WARN_You will need your|r |T135966:0|t[First Aid] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nipsy|r when you get off the Tram
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_is on the center platform|r
    .turnin 6662 >> Turn in Me Brother, Nipsy
    .target Nipsy
step
    .zone Stormwind City >> Enter Stormwind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> Accept Stormpike's Delivery
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Turn in Stormpike's Order
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .turnin 5634 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .train 13908 >> Train Desperate Prayer
    .target High Priestess Laurena
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    .trainer >> Train your class spells
    .accept 1638 >> Accept A Warrior's Training
    .target Ilsa Corbin
step << Warrior
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Enter the Tavern
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
    .accept 1688 >> Accept Surena Caledon
    .target Gakin the Darkbinder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Train 1h Swords << Rogue/Mage
    .trainer >>Train Staves << Priest
    .trainer >>Train 1h Swords and Staves << Warlock
    .trainer >>Train 2h Swords << Warrior/Paladin
step << Dwarf Paladin
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind
    .target Innkeeper Allison
step << Rogue
    .money <0.2000
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    .target Gunther Weller
    .vendor >> |cRXP_WARN_Buy a|r |T135346:0|t[Cutlass] |cRXP_WARN_and equip it in your Main-Hand. Equip the|r |T135641:0|t[|cRXP_FRIENDLY_Craftsman's Dagger|r] |cRXP_WARN_from earlier in your Off-Hand|r
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.80
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.79
step << Rogue skip
    #completewith next
    +|cRXP_WARN_Equip the|r |T135346:0|t[Craftsman's Dagger]
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.75
    --step skipped. cant equip into OH slot
step << Rogue
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
    .vendor >> |cRXP_BUY_Buy a|r |T135425:0|t[Keen Throwing Knife]|cRXP_BUY_. Equip it when you're level 11|r
    .target Thurman Mullby
]])

RXPGuides.RegisterGuide([[
#era/som
#classic
<< Alliance !Hunter
#name 10-11 Elwynn (Dwarf/Gnome)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf
#next 11-14 Loch Modan (Dwarf/Gnome)
--#era << !Warlock

step << Warlock
    #softcore
    #completewith next
    +Cast |T136126:0|t[Life Tap] repeatedly until you have <10% health while on the way to |cRXP_FRIENDLY_Dungar Longdrink|r
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Get the Stormwind City flight path
    .target Dungar Longdrink
step << Warlock
    #softcore
    #completewith next
    >>Cast |T136126:0|t[Life Tap] repeatedly until you have <10% health then jump down the ledge (NOT into the water) next to the flight master and die intentionally
    .deathskip >> Respawn at the Spirit Healer
    .target Spirit Healer
step
    #hardcore
    #completewith next
    .subzone 87 >> Travel to Goldshire
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .accept 62 >> Accept The Fargodeep Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Accept Kobold Candles
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Travel upstairs in the Inn
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >> Accept A Fishy Peril
    .accept 47 >> Accept Gold Dust Exchange
step << Warlock
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 176 >> Accept Wanted: "Hogger"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    #completewith next
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] |cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_a rare spawn, does have a 100% drop chance|r
    .use 1307 >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Gold Pickup Schedule|r] to start the quest|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
    .unitscan Gruff Swiftbite
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
    >>|cRXP_WARN_This quest is difficult. Find a group for him if needed. Skip this step if you're unable to find a group or solo him|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r and |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .target Ma Stonefield
    .target "Auntie" Bernice Stonefield
    .accept 88 >> Accept Princess Must Die!
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_The level 5 mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Enter and explore Fargodeep Mine|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for their |cRXP_LOOT_Candles|r and |cRXP_LOOT_Dust|r
    >>|cRXP_WARN_The level 5 mobs may turn gray during this quest. Still finish it as you need to complete this quest to unlock the follow up's|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #softcore
    #completewith GoldshireTurnins
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >> Travel to Goldshire
step
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 60|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Turn in Gold Dust Exchange
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 176,3 >> Turn in Wanted: "Hogger" << Warlock
    .isQuestComplete 176 << Warlock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
step
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> Turn in The Collector
    .isOnQuest 123
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 147 >> Accept Manhunt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    >>|cRXP_WARN_Do NOT vendor the|r |T133581:0|t[Bag of Marbles] |cRXP_WARN_reward. This is an incredibly valuable item all the way through to level 60|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Turn in Gold Dust Exchange
step
    #completewith next
    +Travel east to |cRXP_FRIENDLY_Guard Thomas|r
step
    >>Talk to |cFF00FF25Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.90,72.30
    .turnin 35 >> Turn in Further Concerns
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
step
    #era
    #completewith Prowlers
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_Prioritize killing any |cRXP_ENEMY_Young Forest Bears|r you see|r
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Prowler
    .mob Young Forest Bear
step
    #era
    >>Click |cRXP_PICK_A half-eaten body|r on the ground
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Accept A Bundle of Trouble
step
    #era
    #completewith Bundles
    >>Loot the |cRXP_LOOT_Bundle of Wood|r on the ground. |cRXP_WARN_They are found beneath the trees|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_WARN_Be careful as nearby |cRXP_ENEMY_Murlocs|r may agro once you click|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_will cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_which heals themselves for 61-68|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    #era
    #label Bundles
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
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Loot the |cRXP_LOOT_Bundle of Wood|r on the ground. |cRXP_WARN_They are found beneath the trees|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Turn in A Bundle of Trouble
step
    #era
    #label Bears
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Accept Red Linen Goods
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Kill |cRXP_ENEMY_Surena Caledon|r. Loot her for her |cRXP_LOOT_Choker|r
    >>Kill |cRXP_ENEMY_Morgan the Collector|r. Loot him for |cRXP_LOOT_The Collector's Ring|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_Surena Caledon|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .complete 147,1 -- The Collector's Ring (1)
    .mob Surena Caledon
    .mob Morgan the Collector
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Kill |cRXP_ENEMY_Surena Caledon|r. Loot her for her |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_Surena Caledon|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #era
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    .goto Elwynn Forest,69.3,79.0
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for her |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princess|r |cRXP_WARN_will agro with both of her|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princess|r |cRXP_WARN_will also cast|r |T132368:0|t[Rushing Charge] |cRXP_WARN_which deals heavy damage|r
    .complete 88,1
    .mob Princess
step
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r]
    .use 1972>>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] to start the quest|r
    >>|cRXP_WARN_The|r |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] |cRXP_WARN_is a very rare drop. Ignore this step if you don't get it|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    #era
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
    #era
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Die and respawn at the Spirit Healer if you're low health, otherwise just run back and handin
    .target Spirit Healer
step
    #era
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Turn in Red Linen Goods
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Travel to Redridge Mountains
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Accept Encroaching Gnolls
step
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    >>|cRXP_WARN_Be careful of high level mobs en route|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
    >>|cRXP_WARN_We choose the|r |T132383:0|t[Explosive Rockets] |cRXP_WARN_as the reward. It deals decent damage, and can be used for "Split pulling" which is incredibly useful|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling". It is a short video and invaluable to learn|r
    .target Morgan Pestle
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for a faster turn in at Loch Modan shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T134342:0|t[Boar Intestines]
    >>|T134027:0|t[Bear Meat]
    >>|T134437:0|t[Spider Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Jaxon
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
    #softcore
    #completewith next
    +Start casting |T136126:0|t[Life Tap] on your way back up to |cRXP_FRIENDLY_Gakin the Darkbinder|r as you will do a deathskip momentarily
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Turn in The Binding
step << Warlock
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer by using |T136126:0|t[Life Tap] and standing on the Bonfire next to you
    .target Spirit Healer
step
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Exit Stormwind. Travel to Goldshire
step << Warlock
    #era
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 147 >> Turn in Manhunt
    .turnin 39 >> Turn in Deliver Thomas' Report
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 147 >> Turn in Manhunt
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .target Marshal Dughan
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer >> Train your class spells
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Travel upstairs in the Inn
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
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .target Priestess Josetta
    .trainer >> Train your class spells
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .target Ma Stonefield
    .turnin 88 >> Turn in Princess Must Die!
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    >>|cRXP_WARN_Skip the turn in for now if you don't have enough [Chunks of Boar Meat]|r
    .target "Auntie" Bernice Stonefield
    .turnin 86 >> Turn in Pie for Billy
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >> Abandon Pie for Billy
step << Dwarf Paladin
    >>Kill |cRXP_ENEMY_Riverpaw Runts|r and |cRXP_ENEMY_Riverpaw Outrunners|r. Loot them for |T132889:0|t[Linen Cloth]
    >>|cRXP_WARN_Ensure you have 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your upcoming Paladin class quest|r
    .collect 2589,10,1648,1 -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >> Turn in Westfall Stew
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer or run to Sentinel Hill
    .target Spirit Healer
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 12 >> Accept The People's Militia
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 102 >> Accept Patrolling Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Accept Red Leather Bandanas
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .fly Stormwind >> Fly to Stormwind << Dwarf Paladin
    .target Thor
step << !Paladin
    .hs >> Hearth to Loch Modan
step << Dwarf Paladin
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Do a logout skip inside the Tram. Click here for video reference|r
]])

RXPGuides.RegisterGuide([[
#era/som
#classic
<< Alliance !Hunter
#name 11-14 Loch Modan (Dwarf/Gnome)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf
#next 13-15 Westfall

step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >>Accept Tome of Divinity
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >> Travel toward |cRXP_FRIENDLY_Tiza Battleforge|r upstairs
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 2999 >>Turn in Tome of Divinity
    .accept 1645 >>Accept The Tome of Divinity
    .turnin 1645 >>Turn in The Tome of Divinity
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Use the |T133464:0|t[|cRXP_LOOT_The Tome of Divinity|r] to start the quest|r
    .accept 1646 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1646 >>Turn in The Tome of Divinity
    .accept 1647 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrols the outer ring of Ironforge near the Auction House|r
    .turnin 1647 >>Turn in The Tome of Divinity
    .accept 1648 >>Accept The Tome of Divinity
    .turnin 1648 >>Turn in The Tome of Divinity
    .accept 1778 >>Accept The Tome of Divinity
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r up stairs
    .target Tiza Battleforge
    .turnin 1778 >>Turn in The Tome of Divinity
    .accept 1779 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .target Muiredon Battleforge
    .turnin 1779 >>Turn in The Tome of Divinity
    .accept 1783 >>Accept The Tome of Divinity
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Fly to Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor >> |cRXP_BUY_Buy|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_if needed|r
    .target Yanni Stoutheart
step
    #completewith next
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .vendor >> |cRXP_BUY_Buy some|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_if needed|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Buy some|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_if needed|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Turn in Return to Brock
    .target Brock Stoneseeker
step
    #completewith next
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
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Enter the Silver Stream Mine
step
    .goto Loch Modan,35.93,22.55
    >>Open the |cRXP_PICK_Miners' League Crates|r. Loot them for the |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_The |cRXP_PICK_Miners' League Crates|r can be found all throughout the Mine|r
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
    >>|cRXP_ENEMY_Tunnel Rats|r |cRXP_WARN_can spawn throughout Loch Modan. Check your World Map for their locations|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vendor and repair if needed|r
    .target Gothor Brumn
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .turnin 353 >> Turn in Stormpike's Delivery
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
    >>|cRXP_BUY_Buy a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_along with 2|r |T135435:0|t[Simple Wood]|cRXP_BUY_. Buy any|r|T133634:0|t[Small Brown Pouches] |cRXP_BUY_if needed|r
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,40,0
    .goto Loch Modan,31.54,74.96,40,0
    .goto Loch Modan,33.88,76.58
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #era
    .goto Loch Modan,27.4,48.4
    .xp 13+9600 >> Grind until 9600+/11400xp
step
    #som
    .goto Loch Modan,27.4,48.4
    .xp 14-2300 >> Grind until you are 2300xp away from level 14 (9100/11400)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .target Captain Rugelfuss
    .goto Loch Modan,23.233,73.675
    .turnin 267 >> Turn in The Trogg Threat
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Fly to Ironforge
    .target Thorgrum Borrelson
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,86.09,51.15
    .zone Dun Morogh >> Travel to Dun Morogh
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>|cRXP_WARN_Use the|r |T133439:0|t[Symbol of Life] |cRXP_WARN_on|r |cRXP_FRIENDLY_Narm Faulk|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm Faulk|r
    .use 6866
    .turnin 1783 >>Turn in The Tome of Divinity
    .accept 1784 >>Accept The Tome of Divinity
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r. Loot them for the |cRXP_LOOT_Dark Iron Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
	#completewith next
    .hs >> Hearth to Stormwind
step << Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Train your class spells
    .target Bilban Tosslespanner
step << Mage
    .goto Ironforge,26.295,6.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Juli Stormkettle|r
    .trainer >> Train your class spells
    .target Juli Stormkettle
step << Mage/Priest/Warlock
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy a|r |T135144:0|t[Greater Magic Wand] |cRXP_BUY_if it costs less than 33s 40c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Mage/Priest/Warlock
    #ah
    #completewith next
    +|cRXP_WARN_Equip the|r |T135144:0|t[Greater Magic Wand]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harick Boulderdrum|r downstairs
    >>|cRXP_WARN_If you aren't able to acquire a|r |T135144:0|t[Greater Magic Wand] |cRXP_WARN_buy a|r |T135468:0|t[Smoldering Wand] |cRXP_WARN_and equip it when you are 15|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Train your class spells
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Consume Shadows (Rank 1)] |cRXP_BUY_and|r |T133738:0|t[Grimoire of Sacrifice (Rank 1)] |cRXP_BUY_if you can afford it|r
    .target Jubahl Corpseseeker
step << Rogue
    .goto Ironforge,51.919,14.490,10,0
    .goto Ironforge,50.727,16.380,8,0
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r downstairs
    .turnin -2218 >> Turn in Road to Salvation
    .trainer >> Train your class spells
    .target Hulfdan Blackbeard
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Train your class spells
    .target Toldren Deepiron
step << !Paladin !Warrior !Rogue !Warlock
    #completewith next
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Click here for video reference|r
    .zoneskip Ironforge,1
step << !Paladin
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the Tram to Stormwind City
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_if needed while waiting for the tram|r
    >>|cRXP_WARN_You will need your|r |T135966:0|t[First Aid] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
step
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Westfall shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T133972:0|t[Stringy Vulture Meat]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk Liver]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .target Auctioneer Jaxon
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance Hunter
#name 1-6 Coldridge Valley (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf
#next 6-11 Dun Morogh (Hunter)
step << NightElf Hunter
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +You have selected a guide meant for Dwarf Hunters. You should choose the same starter zone that you start in
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .goto Dun Morogh,29.927,71.201
    .accept 179 >> Accept Dwarven Outfitters
    .target Sten Stoutarm
step
    .goto Dun Morogh,30.79,74.48,50,0
    .goto Dun Morogh,29.02,76.38,50,0
    .goto Dun Morogh,26.68,75.57
    >>Kill |cRXP_ENEMY_Ragged Young Wolves|r and |cRXP_ENEMY_Ragged Timber Wolves|r. Loot them for their |cRXP_LOOT_Tough Wolf Meat|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3108 >>Accept Etched Rune
    .target Sten Stoutarm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Accept A New Threat
    .target Balir Frosthammer
step
    #completewith Rockjaw
    .goto Dun Morogh,29.20,76.08,0
    .goto Dun Morogh,26.38,73.07,0
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.79,71.60
    >>Kill |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >> Turn in The Boar Hunter
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
step
    #completewith next
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #label Rockjaw
    .xp 4 >> Grind to 4
step
    .goto Dun Morogh,29.20,76.08,70,0
    .goto Dun Morogh,26.38,73.07
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Accept Scalding Mornbrew Delivery
step
    #completewith next
    .hs >> Hearth to Anvilmar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Turn in A New Threat
step
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_WARN_Buy 2 stacks of|r |T132384:0|t[Light Shots]
    .collect 2516,400 -- Light Shot (400)
    .target Adlin Pridedrift
step
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Turn in Etched Rune
    .train 1978 >> Train Serpent Sting
step
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
step
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Enter the Frostmane Cave
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r. Loot him for his |cRXP_LOOT_Journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step
    #completewith next
    .goto Dun Morogh,28.4,79.7,35,0
    .goto Dun Morogh,26.8,79.6,25 >>Run back out the cave
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Thalos|r
    .target Mountaineer Thalos
    .goto Dun Morogh,33.484,71.841
    .turnin 282 >> Turn in Senir's Observations
    .accept 420 >> Accept Senir's Observations
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket|r
    .target Hands Springsprocket
    .goto Dun Morogh,33.847,72.236
    .accept 2160 >> Accept Supplies to Tannok
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Travel through Coldridge Pass
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance Hunter
#name 6-11 Dun Morogh (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf Hunter
#next 11-13 Loch Modan (Hunter)
step
    #completewith ribs1
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |cRXP_LOOT_Chunks of Boar Meat|r and |cRXP_LOOT_Crag Boar Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >> Travel to Kharanos
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
    .target Senir Whitebeard
step
    #label ribs1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >> Turn in Supplies to Tannok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >> Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Don't kill any |cRXP_ENEMY_Young Black Bears|r en-route|r
    .target Pilot Bellowfiz
    .accept 317 >> Accept Stocking Jetsteam
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .accept 313 >> Accept The Grizzled Den
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r
    .target Beldin Steelgrill
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >> Turn in Tools for Steelgrill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loslor Rudge|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >> Accept Ammo for Rumbleshot
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Kill |cRXP_ENEMY_Young Black Bears|r. Loot them for their |cRXP_LOOT_Fur|r
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |cRXP_LOOT_Chunks of Boar Meat|r and |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Young Black Bear
step
    #completewith BoarRibs2
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
step
    .xp 6
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Train your class spells
    .train 3044 >> Train Arcane Shot
    .target Grif Wildheart
step
    .goto Dun Morogh,44.13,56.95
    >>Open the |cRXP_PICK_Ammo Crate|r. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Turn in Ammo for Rumbleshot
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .goto Dun Morogh,40.682,65.130
    >>|cRXP_BUY_Buy and equip a|r |T135611:0|t[Ornate Blunderbuss]|cRXP_BUY_. Skip this step if you can't afford it|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step << Hunter
    #completewith next
    +|cRXP_WARN_Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.94
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>Kill |cRXP_ENEMY_Wendigos|r and |cRXP_ENEMY_Young Wendigos|r. Loot them for their |cRXP_LOOT_Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .xp 7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,38.517,53.927
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r. Loot it for |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Wait until |cRXP_ENEMY_Old Icebeard|r patrols out of the Cave. Once he patrols out of the Cave you can enter and loot|r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Click here for video reference|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    #label BoarRibs2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >> Accept Bitter Rivals
step
    #completewith next
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r and |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Snow Leopard
step << Hunter
    #era
    .goto Dun Morogh,46.726,53.826
    .complete 384,1
    .xp 8-1400 >>Grind until you are 1400 xp away from level 8.
step << Hunter
    #som
    .goto Dun Morogh,46.726,53.826
    .complete 384,1
    .xp 8-1950 >>Grind until you are 1950 xp away from level 8.
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #hardcore
    #completewith next
    .goto Dun Morogh,49.622,48.612,60 >> Travel to Kharanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_and a|r |T132800:0|t[Thunder Ale]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarven Thunderbrew|r downstairs
    .turnin 308 >> Turn in Distracting Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Click the |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Set your Hearthstone to Kharanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >> Turn in Beer Basted Boar Ribs
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Accept Frostmane Hold
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Train your class spells
    .train 5116>> Train Concussive Shot
    .target Grif Wildheart
step
    #completewith FinishShimmerweed
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r and |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Snow Leopard
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
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
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Turn in A Pilot's Revenge
step
    #hardcore
    .hs >> Hearth to Kharanos
step
    #softcore
    .goto Dun Morogh,47.11,55.01
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Accept Operation Recombobulation
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Travel to Shimmer Ridge. Follow the arrow and run up the mountain
step
    #label FinishShimmerweed
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for their |cRXP_LOOT_Shimmerweed|r
    >>|cRXP_LOOT_Shimmerweed|r can also be looted from |cRXP_PICK_Shimmerweed Baskets|r on the ground
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r and |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Snow Leopard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Turn in Return to Marleth
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Enter Frostmane Hold
step
    #completewith next
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #hardcore
    >>|cRXP_WARN_Drop down to this location to explore Frostmane Hold. If there are mobs below, clear around normally and do NOT drop down|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #era
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Kill |cRXP_ENEMY_Leper Gnomes|r. Loot them for their |cRXP_LOOT_Gears|r and |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #hardcore
    #completewith KharanosTurnins
    .goto Dun Morogh,46.7,53.7,200 >> Travel to Kharanos. Grind en-route
step
    #era
    .xp 10-1470 >> Grind until you are 1450xp away from level 10
step
    #som
    .xp 10-2050 >> Grind until you are 2050xp away from level 10
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Run to here and follow the arrow closely in the upcoming steps to deathskip to Wetlands
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Keep running straight north, jump down and die once the General Chat changes to Wetlands, then respawn at Menethil Harbor
    .target Spirit Healer
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Swim to shore
step
    #softcore
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shellei Brondir|r
    .fp Wetlands >> Get the Wetlands flight path
    .target Shellei Brondir
step
    #softcore
	#completewith next
    .hs >> Hearth to Kharanos
step
    #label KharanosTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports
step
    #era
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .turnin 412 >> Turn in Operation Recombobulation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 320 >> Turn in Return to Bellowfiz
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Accept Taming the Beast
step << Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Turn in Taming the Beast
    .target Grif Wildheart
    .accept 6084 >>Accept Taming the Beast
step << Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Snow Leopard|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Turn in Taming the Beast
    .target Grif Wildheart
    .accept 6085 >>Accept Taming the Beast
step << Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Turn in Taming the Beast
    .target Grif Wildheart
    .accept 6086 >>Accept Training the Beast
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >> Travel to Gol'Bolar Quarry
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r and |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Accept The Public Servant
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Accept Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r and |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r and |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Turn in The Public Servant
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step << skip
    .goto Dun Morogh,68.4,54.5
    .train 2550 >> Train Cooking from Ghilm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#era/som
<< Alliance Hunter
#name 11-13 Loch Modan (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf
#next 14-16 Darkshore

step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,200 >> Travel to Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r in the bunker
    .target Captain Rugelfuss
    .accept 267 >> Accept The Trogg Threat
step
    #sticky
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
    .turnin -414 >> Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .home >> Set your Hearthstone to Thelsamar
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
    .target Brock Stoneseeker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Turn in The Reports
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .turnin 6086 >> Turn in Training the Beast
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Fly to Loch Modan
    .target Gryth Thurden
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Turn in Return to Brock
    .target Brock Stoneseeker
step << Hunter
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vrok Blunderblast|r
    >>|cRXP_BUY_Buy a|r |T135613:0|t[Hunter's Boomstick] |cRXP_BUY_if you can afford it|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +|cRXP_WARN_Equip the|r |T135613:0|t[Hunter's Boomstick]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #completewith BraveSoul
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
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Travel north to the Algaz Station
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .accept 307 >> Accept Filthy Paws
    .target Mountaineer Stormpike
step
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Enter the Silver Stream Mine
step
    .goto Loch Modan,35.93,22.55
    >>Open the |cRXP_PICK_Miners' League Crates|r. Loot them for the |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_The |cRXP_PICK_Miners' League Crates|r can be found all throughout the Mine|r
    >>|cRXP_WARN_You will be able to do this quest at a higher level if you wish to skip it for now|r
    .complete 307,1 -- Miners' Gear (4)
step
    #completewith RatEar
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
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .target Mountaineer Stormpike
step
    #label RatEar
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
    >>|cRXP_ENEMY_Tunnel Rats|r |cRXP_WARN_can spawn throughout Loch Modan. Check your World Map for their locations|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
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
    #sticky
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
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,40,0
    .goto Loch Modan,31.54,74.96,40,0
    .goto Loch Modan,33.88,76.58
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .target Captain Rugelfuss
    .goto Loch Modan,23.233,73.675
    .turnin 267 >> Turn in The Trogg Threat
step
    #completewith next
    .goto Loch Modan,64.89,66.66,80 >> Travel to Ironband's Excavation Site
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >> Accept Excavation Progress Report
    .target Prospector Ironband
step
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Travel to The Farstrider Lodge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .accept 257 >> Accept A Hunter's Boast
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>Kill |cRXP_ENEMY_Mountain Buzzards|r
    >>|cRXP_WARN_You must complete this quest and return to |cRXP_FRIENDLY_Daryl the Youngling|r within 15 minutes. If you fail the quest, abandon it and pick it up again|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Turn in A Hunter's Boast
    .target Daryl the Youngling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xandar Goodbeard|r
    .goto Loch Modan,82.496,63.369
    .vendor >>|cFFFCDC00Buy a|r |T135237:0|t[Flint and Tinder] |cFFFCDC00and|r |T135435:0|t[Simple Wood]
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Xandar Goodbeard
step
    #hardcore
    .hs >> Hearth to Thelsamar
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
    .target Jern Hornhelm
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step
    .goto Ironforge,60.072,36.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl Riknussun|r
    .target Daryl Riknussun
    .train 2550 >> Train |T133971:0|t[Cooking]
step
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >> Turn in Report to Ironforge
    .target Prospector Stormpike
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_Enter the Deeprun Tram|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform
    .target Monty
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    .use 17117 >>|cRXP_WARN_Use the|r |T133942:0|t[Rat Catcher's Flute] |cRXP_WARN_on|r |cRXP_ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >> Accept Me Brother, Nipsy
step
    #completewith next
    .zone Stormwind City >> Take the Tram to Stormwind
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_if needed while waiting for the Tram|r
    >>|cRXP_WARN_You will need your|r |T135966:0|t[First Aid] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nipsy|r when you get off the Tram
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_is on the center platform|r
    .turnin 6662 >> Turn in Me Brother, Nipsy
    .target Nipsy
step
    .zone Stormwind City >> Enter Stormwind
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> Accept Stormpike's Delivery
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Turn in Stormpike's Order
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Train Staves
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for instant turn ins at Darkshore shortly. Skip this step if you wish to not buy any
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
step
    #softcore
    .hs >> Hearth to Loch Modan
step
    #softcore
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Travel north to the Algaz Station
step
    #softcore
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
    .target Mountaineer Stormpike
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #softcore
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum|r
    .fly Wetlands >> Fly to Wetlands
    .target Thorgrum Borrelson
step
    #hardcore
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Do a logout skip inside the Tram. Click here for video reference|r
step
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the Dun Morogh -> Wetlands skip spot
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
    >>|cRXP_WARN_Watch the video guide for a reference on how to do the skip first!|r
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Wetlands Crocolisks|r and |cRXP_ENEMY_Murlocs|r when crossing the water|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Click here for a video guide|r
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
step
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Samor Festivus|r upstairs
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cFF00FF25Samor Festivus|r doesn't have any|r
    .target Samor Festivus
step
    #hardcore
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Get the Wetlands flight path
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
    .target Dewin Shimmerdawn
step
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the Menethil Harbor docks. Wait for the boat to Darkshore
step
    .zone Darkshore >> Take the boat to Darkshore
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the boat to Darkshore|r
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance !Hunter
#name 1-7 Coldridge
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 6-12 Dun Morogh
step << !Gnome !Dwarf
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step << Mage
    #completewith next
    +Note that you have selected the single target mage guide. Single target is a lot safer than AoE Mage, and a lot faster with the new 100% Quest xp change
step
    >>Delete your Hearthstone << !Warlock
    .goto Dun Morogh,29.927,71.201
.target Sten Stoutarm
>>Talk to |cFF00FF25Sten Stoutarm|r
    .accept 179 >> Accept Dwarven Outfitters
step << Warrior/Warlock
    #sticky
    #completewith next
    .goto Dun Morogh,28.6,72.2,20,0
    +Kill Wolves for 10c+ of vendor trash, then enter the building
step << Warrior/Warlock
    .goto Dun Morogh,28.8,69.2,30 >>Enter the building
step << Warrior
    .goto Dun Morogh,28.7,67.7
    .vendor >> vendor trash
step << Warrior
    .goto Dun Morogh,28.8,67.2
    .trainer >>Train Battle Shout
step << Warlock
    .goto Dun Morogh,28.8,66.2
    .vendor >> Go to the back, upstairs, then talk to the Demon Trainer. Vendor trash
step << Warlock
    .goto Dun Morogh,28.6,66.1
    .trainer >>Train Immolate
.target Alamar Grimm
>>Talk to |cFF00FF25Alamar Grimm|r
    .accept 1599 >> Accept Beginnings
step
    >>Kill Wolves. Loot them for Meat
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >> Grind to 2
step << Warlock
    #softcore
    #sticky
    #completewith next
    .goto Dun Morogh,26.8,79.8,40,0
    .goto Dun Morogh,30.1,82.4,30 >> Kill some Wolves en route, then watch this
    .link https://www.youtube.com/watch?v=iUvGsRbIVp8 >> CLICK HERE
step << Warlock
    >>Kill Frostmane Novices inside the cave. Loot them for Feather Charms
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
step << Warlock
    #softcore
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at the Spirit Healer
step << Warlock
    #hardcore
    .hs >> Hearth back to Coldridge Valley
step << Warlock
    >>Go back to the Warlock Trainer
    .goto Dun Morogh,28.6,66.1
.target Alamar Grimm
>>Talk to |cFF00FF25Alamar Grimm|r
    .turnin 1599 >> Turn in Beginnings
step << Priest/Mage/Warlock
    .goto Dun Morogh,30.0,71.5
    >>Summon your Imp and rebuff Demon Skin en route << Warlock
    .vendor >>vendor trash, repair. Buy 15 Water. Grind extra wolves if you don't have enough money
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step << Paladin/Warrior
    .goto Dun Morogh,30.0,71.5
    .vendor >>vendor trash
step
    .goto Dun Morogh,29.927,71.201
>>Talk to |cFF00FF25Sten Stoutarm|r
    .turnin 179 >> Turn in Dwarven Outfitters
.target Sten Stoutarm
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3106 >> Accept Simple Rune << Dwarf Warrior
    .accept 3107 >> Accept Consecrated Rune << Paladin
    .accept 3109 >> Accept Encrypted Rune << Dwarf Rogue
    .accept 3110 >> Accept Hallowed Rune << Priest
    .accept 3112 >> Accept Simple Memorandum << Gnome Warrior
    .accept 3113 >> Accept Encrypted Memorandum << Gnome Rogue
    .accept 3114 >> Accept Glyphic Memorandum << Mage
    .accept 3115 >> Accept Tainted Memorandum << Gnome Warlock
step
    .goto Dun Morogh,22.601,71.433
>>Talk to |cFF00FF25Talin Keeneye|r
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
.target Talin Keeneye
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
step
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0,100,0
    .goto Dun Morogh,22.8,69.6,100,0
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>Talk to |cFF00FF25Talin Keeneye|r
    .turnin 183 >> Turn in The Boar Hunter
step << Paladin/Mage/Warlock
    .xp 3+860 >> Grind to 860+/1400xp
    .goto Dun Morogh,23.0,75.0,100,0
    .goto Dun Morogh,24.2,72.5,100,0
    .goto Dun Morogh,27.7,76.3,100,0
    .goto Dun Morogh,23.0,75.0,100,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>Talk to |cFF00FF25Grelin Whitebeard|r
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
.target Grelin Whitebeard
    .accept 182 >> Accept The Troll Cave
step << Paladin/Mage/Warlock
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Talk to |cFF00FF25Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >> Once accepted, a 5 minute timer will start. Relax and follow the guide
step << Paladin/Mage/Warlock
    #sticky
    #completewith Scalding1
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
.target Nori Pridedrift
>>Talk to |cFF00FF25Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
.target Durnan Furcutter
>>Talk to |cFF00FF25Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << Paladin/Mage/Warlock
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
>>Talk to |cFF00FF25Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
.target Durnan Furcutter
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << Paladin/Mage/Warlock
    .goto Dun Morogh,28.55,67.64
.target Felix Whindlebolt
>>Talk to |cFF00FF25Felix Whindlebolt|r
    .accept 3361 >>Accept A Refugee's Quandary
step << Dwarf Paladin
    .goto Dun Morogh,28.8,68.3
.target Bromos Grummner
>>Talk to |cFF00FF25Bromos Grummner|r
    .turnin 3107 >> Turn in Consecrated Rune
    .trainer >> Train your class spells
step << Gnome Mage
    .goto Dun Morogh,28.709,66.366
.target Marryk Nurribit
>>Talk to |cFF00FF25Marryk Nurribit|r
    .turnin 3114 >> Turn in Glyphic Memorandum
    .trainer >> Train your class spells
step << Warlock
    .goto Dun Morogh,28.6,66.1
    .trainer >> Go Upstairs. Train your Corruption
.target Alamar Grimm
>>Talk to |cFF00FF25Alamar Grimm|r
    .turnin 3115 >> Turn in Tainted Memorandum
step << Mage/Warlock
    .goto Dun Morogh,30.0,71.5
    .vendor >>Vendor, buy 10 water
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << Paladin/Mage/Warlock
    #completewith FelixB
    .goto Dun Morogh,20.9,75.7,0
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step << Paladin/Mage/Warlock
    >>Loot the bucket on the ground
    .goto Dun Morogh,26.33,79.28
    .complete 3361,3 --Felix's Bucket of Bolts (1)
step << Paladin/Mage/Warlock
    >>Loot the chest on the ground
    .goto Dun Morogh,22.78,80.00
    .complete 3361,2 --Felix's Chest (1)
step << Paladin/Mage/Warlock
    #label FelixB
    >>Loot the box on the ground
    .goto Dun Morogh,20.88,76.07
    .complete 3361,1 --Felix's Box (1)
step << Paladin/Mage/Warlock
    .goto Dun Morogh,26.3,79.2,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3,90,0
    .goto Dun Morogh,20.9,75.7,90,0
    .goto Dun Morogh,22.7,79.3
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,25.0,76.0
    .abandon 3364 >> Abandon Scalding Mornbrew Delivery - You don't need it yet
step << !Paladin !Mage !Warlock
    .xp 4 >> Grind to 4
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,25.076,75.713
>>Talk to |cFF00FF25Grelin Whitebeard|r
    .turnin 182 >> Turn in The Troll Cave
.target Grelin Whitebeard
    .accept 218 >> Accept The Stolen Journal
step << Paladin/Mage/Warlock
    .goto Dun Morogh,25.076,75.713
>>Talk to |cFF00FF25Grelin Whitebeard|r
    .turnin 182 >> Turn in The Troll Cave
.target Grelin Whitebeard
    .accept 218 >> Accept The Stolen Journal
step << !Paladin !Mage !Warlock
    #softcore
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Talk to |cFF00FF25Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    >>You now have 5m to get the Journal, then turnin the Mornbrew. If you fail quest, pick it up again after dying
step << Paladin/Mage/Warlock
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Talk to |cFF00FF25Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
step
    #softcore
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    >>After killing Grik'nir, prepare to die and respawn at the Spirit Healer
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    #hardcore
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step << !Paladin !Mage !Warlock
    #hardcore
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Talk to |cFF00FF25Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
step << !Paladin !Mage !Warlock
    #hardcore
    .goto Dun Morogh,25.1,75.8
>>Talk to |cFF00FF25Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
.target Grelin Whitebeard
    .accept 282 >> Accept Senir's Observations
step
    #softcore
    .goto Dun Morogh,29.5,69.8,100 >> Die and respawn at Spirit Healer
step << !Paladin !Mage !Warlock
    #sticky
    #completewith Scalding2
    >>If you were too slow and failed the timed quest, go and pick it up again
    .goto Dun Morogh,25.0,76.0,0
.target Nori Pridedrift
>>Talk to |cFF00FF25Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,28.8,66.4
.target Durnan Furcutter
>>Talk to |cFF00FF25Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
step << !Paladin !Mage !Warlock
    #label Scalding2
    .goto Dun Morogh,28.8,66.4
>>Talk to |cFF00FF25Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
.target Durnan Furcutter
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> vendor trash
step << Paladin/Mage/Warlock
    .goto Dun Morogh,28.55,67.64
    >>Go inside the building
.target Felix Whindlebolt
>>Talk to |cFF00FF25Felix Whindlebolt|r
    .turnin 3361 >>Turn in A Refugee's Quandary
step << Rogue
    .goto Dun Morogh,28.4,67.5
.target Solm Hargrin
>>Talk to |cFF00FF25Solm Hargrin|r
    .turnin 3113 >> Turn in Encrypted Memorandum << Gnome Rogue
    .turnin 3109 >> Turn in Encrypted Rune << Dwarf Rogue
step << Dwarf Priest
    .goto Dun Morogh,28.600,66.385
.target Branstock Khalder
>>Talk to |cFF00FF25Branstock Khalder|r
    .turnin 3110 >> Turn in Hallowed Rune
    .trainer >> Train your class spells
step << Warrior
    .goto Dun Morogh,28.8,67.2
.target Thran Khorman
>>Talk to |cFF00FF25Thran Khorman|r
    .turnin 3106 >> Turn in Simple Rune << Dwarf Warrior
    .turnin 3112 >> Turn in Simple Memorandum << Gnome Warrior
    .trainer >> Train your class spells
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.0,71.5
    .vendor >> Buy up to 10 water
step
    .goto Dun Morogh,25.1,75.8
>>Talk to |cFF00FF25Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
.target Grelin Whitebeard
    .accept 282 >> Accept Senir's Observations
step << !Paladin !Mage !Warlock
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>Talk to |cFF00FF25Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
step
    .goto Dun Morogh,33.484,71.841
>>Talk to |cFF00FF25Mountaineer Thalos|r
    .turnin 282 >> Turn in Senir's Observations
.target Mountaineer Thalos
    .accept 420 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.9,72.2
.target Hands Springsprocket
>>Talk to |cFF00FF25Hands Springsprocket|r
    .accept 2160 >> Accept Supplies to Tannok
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,0
    .goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance !Hunter
#name 6-12 Dun Morogh
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 11-12 Elwynn Warlock << Warlock
#next 11-14 Loch Modan << !Warlock
step << Paladin/Warrior/Rogue
    #sticky
    #completewith BearFur
    >> Kill Boars to get 4 Boar Meat for later
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step << !Paladin !Warrior !Rogue
    #sticky
    #completewith BoarMeat44
    >> Kill boars to get 4 Boar Meat for later
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >> Kill boars to get 6 Boar Ribs for later
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step << Priest
    >>grind boars north-east to Kharanos
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2145 >> Grind to 2145/+2800xp
step << !Priest
    >>grind boars north-east to Kharanos
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >> Grind to 2415/+2800xp
step
    #completewith next
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer, or run to Kharanos. Make sure your subzone is NOT Coldridge Pass
step
    #softcore
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cFF00FF25Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
    .vendor >>vendor trash
step
    #hardcore
    >>Grind boars en route to Kharanos
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cFF00FF25Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
    .vendor >>vendor trash
step << Warlock
    .goto Dun Morogh,47.3,53.7
    .trainer >> Train your class spells from Gimrizz
    .vendor >> Buy the Blood Pact book if you have money after training from Dannie (otherwise buy it later)
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Grind to 6
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Talk to |cFF00FF25Ragnar Thunderbrew|r
    .accept 384 >> Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>Talk to |cFF00FF25Tannok Frosthammer|r
    .turnin 2160 >> Turn in Supplies to Tannok
step << Rogue
    .goto Dun Morogh,47.2,52.4
    .vendor >> Buy the level 3 thrown from Kreg. Equip it
step << Rogue
    .goto Dun Morogh,47.6,52.6
    .trainer >> Train your class spells
step << Mage
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
step << Paladin
    .goto Dun Morogh,47.6,52.1
    .trainer >> Train your class spells
step << Priest
    .goto Dun Morogh,47.3,52.2
.target Maxan Anvol
>>Talk to |cFF00FF25Maxan Anvol|r
    .accept 5625 >> Accept Garments of the Light
step << Priest
    >>Use Lesser Heal Rank 2 and then Power Word: Fortitude on Mountaineer Dolf
    .goto Dun Morogh,45.8,54.6
     .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.3,52.2
.target Maxan Anvol
>>Talk to |cFF00FF25Maxan Anvol|r
    .turnin 5625 >> Turn in Garments of the Light
    .trainer >> Train your class spells
step << Priest
    .xp 6 >> Grind to 6
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> Buy as much level 5 drink as you can
step << !Mage !Priest !Warlock
    .goto Dun Morogh,47.4,52.5
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> vendor trash
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .trainer >> Train your class spells
step << Paladin/Warrior
    .goto Dun Morogh,45.8,51.8,20 >> Go into the building
step << Gnome Warrior
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
     >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue
    .goto Dun Morogh,45.3,51.9
    .trainer >> Train Blacksmithing. This will allow you to make +2 damage sharpening stones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step << Paladin
    .goto Dun Morogh,45.3,51.9
    .trainer >> Train Blacksmithing. This will allow you to make +2 damage weightstones for your weapon which are very strong.
    >> If you want to go for your own professions, skip this step
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>Talk to |cFF00FF25Tharek Blackstone|r
    .accept 400 >> Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.426,48.410
    >>DON'T kill bears en route
.target Pilot Bellowfiz
>>Talk to |cFF00FF25Pilot Bellowfiz|r
    .accept 317 >> Accept Stocking Jetsteam
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cFF00FF25Pilot Stonegear|r
    .accept 313 >> Accept The Grizzled Den
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>Talk to |cFF00FF25Beldin Steelgrill|r
    .turnin 400 >> Turn in Tools for Steelgrill
step
    #label BoarMeat44
    .goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>Talk to |cFF00FF25Loslor Rudge|r
    .accept 5541 >> Accept Ammo for Rumbleshot
step << Warrior/Paladin/Rogue
    .money <0.0091
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> Buy a Mining Pick if you trained Blacksmithing
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    .trainer >>Go inside the house. Train Mining, cast Find Minerals
step
    #sticky
    #completewith BearFur
    >>Get the Bear Fur for Stocking Jetsteam as you quest
    .complete 317,2 --Collect Thick Bear Fur (x2)
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.426,48.410
>>Talk to |cFF00FF25Pilot Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
.target Pilot Bellowfiz
    .accept 318 >> Accept Evershine
step << Warrior
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 food as you can afford
step << Priest/Mage/Warlock
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy as much level 5 drink as you can afford
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >> Go into the cave. Kill Wendigos. Loot them for their Manes << !Warrior !Rogue !Paladin
    >> Kill Wendigos. Loot them for their Manes. Keep an eye out for Veins to get rough stones for Sharpening stones for your weapon << Warrior/Rogue
    >> Kill Wendigos. Loot them for their Manes. Keep an eye out for Veins to get rough stones for Weightstones for your weapon << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>Loot the crate
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>Talk to |cFF00FF25Hegnar Rumbleshot|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor and repair
step << !Paladin !Warrior !Rogue
    .xp 7 >> Grind to 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
    >>Kill Bears and Boars. Loot them for Fur and Meat
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.426,48.410
>>Talk to |cFF00FF25Pilot Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
.target Pilot Bellowfiz
    .accept 318 >> Accept Evershine
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cFF00FF25Pilot Stonegear|r
    .turnin 313 >> Turn in The Grizzled Den
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> Buy a Mining Pick
step << Warrior/Rogue/Paladin
    .xp 8 >> Grind nearby mobs to 8
step << Rogue
    .goto Dun Morogh,47.6,52.6
    .trainer >> Train your class spells
step << Paladin
    .goto Dun Morogh,47.60,52.07
    .trainer >> Train your class spells
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .trainer >> Train your class spells
step << Rogue
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto (1)
step << Gnome Warrior
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
     >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe (1)
step << Paladin
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 20 level 5 food
step << Paladin
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 10 level 5 food
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,43.0,47.4,100,0
    .goto Dun Morogh,39.6,48.9,100,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cFF00FF25Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cFF00FF25Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Mage !Priest
    #completewith next
    .goto Dun Morogh,30.5,46.0
    .vendor >> vendor trash
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.5,46.0
    .vendor >> Vendor. Buy up to 20 level 5 drink
step
    .goto Dun Morogh,30.2,45.8
>>Talk to |cFF00FF25Rejold Barleybrew|r
    .turnin 318 >> Turn in Evershine
.target Rejold Barleybrew
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cFF00FF25Marleth Barleybrew|r
    .accept 310 >> Accept Bitter Rivals
step
    #label Ribs
    .goto Dun Morogh,31.5,38.9,100,0
    .goto Dun Morogh,28.3,39.9,100,0
    .goto Dun Morogh,28.7,43.7,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,30.0,51.8,100,0
    .goto Dun Morogh,31.5,38.9,100,0
    .goto Dun Morogh,28.3,39.9,100,0
    .goto Dun Morogh,28.7,43.7,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,25.8,47.2,100,0
    .goto Dun Morogh,30.0,51.8,100,0
    .goto Dun Morogh,28.7,43.7
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>Finish off getting the Boar Ribs
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.189,45.725
>>Talk to |cFF00FF25Rejold Barleybrew|r
    .turnin 319 >> Turn in A Favor for Evershine
.target Rejold Barleybrew
    .accept 320 >> Accept Return to Bellowfiz
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Run to here
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4
    .deathskip >>Keep running straight north, jump down and die once the General Chat changes to Wetlands, then respawn at Menethil Harbor
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Swim to shore
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Wetlands>> Get the Menethil Harbor flight path
step
    .hs >> Hearth to Kharanos
step
    .goto Dun Morogh,47.4,52.5
    >> Buy a Rhapsody Malt and Thunder Ale from Belm
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,15,0
    >>Go into the room behind the Innkeeper. Go downstairs, then talk to Jarven, and give him the Thunder Ale
    >>Wait for the barrel mouseover to become "unguarded", then handin
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Talk to |cFF00FF25Ragnar Thunderbrew|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
     >>Sell the recipe when you next vendor
step << Warlock
    .goto Dun Morogh,47.3,53.7
    >>Talk to Gimrizz
    .trainer >> Train your class spells
    .vendor >> Buy the Firebolt book if you have money after training (otherwise buy it later)
step << Mage
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
step << Priest
    .goto Dun Morogh,47.3,52.2
    .trainer >> Train your class spells
step << Warrior/Rogue/Paladin
    .money <0.01
    .goto Dun Morogh,47.2,52.6
    .trainer >> Train First Aid for bandages
step << Rogue
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (4s 1c) buy a Stiletto from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (7s 1c) buy a Wooden Mallet from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Gnome Warrior
    .goto Dun Morogh,45.3,52.2
    >>Repair your weapon. If you have enough money (5s 36c) buy a Gladius from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    .goto Dun Morogh,45.3,52.2
     >>Repair your weapon. If you have enough money (4s 84c) buy a Large Axe from Grawn. Otherwise, skip this step (you'll come back later)
    .collect 2491,1 --Collect Large Axe (1)
step << Warrior/Rogue
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 30 level 5 food from the innkeeper
step << Paladin
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy up to 15 level 5 food from the innkeeper
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.4,52.5
    .vendor >> Buy buy up to 30 level 5 drink from the innkeeper
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cFF00FF25Senir Whitebeard|r
    .accept 287 >> Accept Frostmane Hold
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>Talk to |cFF00FF25Pilot Stonegear|r
    .turnin 313 >> Turn in The Grizzled Den
step
    .goto Dun Morogh,49.426,48.410
    >>Choose the Camping Knife. Save it for later << Rogue
.target Pilot Bellowfiz
>>Talk to |cFF00FF25Pilot Bellowfiz|r
    .turnin 320 >> Turn in Return to Bellowfiz
step << Warrior
    >>Inside the building
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Talk to |cFF00FF25Razzle Sprysprocket|r
    .accept 412 >> Accept Operation Recombobulation
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.5,43.0
    .goto Dun Morogh,41.5,36.0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    >>Loot baskets on the ground
    >>Make Weightstones if you loot linen here << Paladin
    .complete 315,1 --Collect Shimmerweed (x6)
step << !Mage !Warlock
    .goto Dun Morogh,38.5,54.0
    >>Wait until Old Icebeard leaves the cave so you can sneak in and loot the chest, or do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>Click here for video reference
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    >> Polymorph Old Icebeard, then loot the meats << Mage
    >> Fear Old Icebeard, then loot the meats << Warlock
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cFF00FF25Tundra MacGrann|r
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.4,45.8
    .vendor >> Buy up to 10 more level 5 drink
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.4,45.8
    .vendor >> vendor trash
step
    .goto Dun Morogh,30.189,45.725
>>Talk to |cFF00FF25Rejold Barleybrew|r
    .turnin 315 >> Turn in The Perfect Stout
.target Rejold Barleybrew
    .accept 413 >> Accept Shimmer Stout
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cFF00FF25Marleth Barleybrew|r
    .turnin 311 >> Turn in Return to Marleth
step << Warrior
    .goto Dun Morogh,27.2,43.0,80,0
    .goto Dun Morogh,24.8,39.3,80,0
    .goto Dun Morogh,25.6,43.4,80,0
    .goto Dun Morogh,24.3,44.0,80,0
    .goto Dun Morogh,25.4,45.4,80,0
    .goto Dun Morogh,25.00,43.50
    >>Kill Leper Gnomes. Loot them for Gears and Cogs
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step << Paladin
    #completewith EndDM
    >>Keep 10 Linen Cloth in your bags for your paladin quest later
    .collect 2589,10 --Linen Cloth (10)
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Kill Headhunters inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>Go back up the cave
step
    #softcore
    >>Jump down into the nook below
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at Kharanos
step
    #hardcore
    >>Carefully grind down into this nook in the cave
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #hardcore
   .goto Dun Morogh,46.726,53.826,150 >> Hearth if its up, otherwise grind back to Kharanos
step
    .goto Dun Morogh,46.726,53.826
>>Talk to |cFF00FF25Senir Whitebeard|r
    .turnin 287 >> Turn in Frostmane Hold
.target Senir Whitebeard
    .accept 291 >> Accept The Reports
step
    #completewith EndDM
    >>Kill boars en route to other quests for 8 Boar Meat for a quest later. Don't focus hard on this now
    .collect 769,8 --Collect Chunk of Boar Meat (x8)
step << Rogue
    .goto Dun Morogh,47.6,52.6
.target Hogral Bakkan
>>Talk to |cFF00FF25Hogral Bakkan|r
    .accept 2218 >> Accept Road to Salvation
    .trainer >> Train your class spells
    >>Equip your Camping Knife from earlier
step << Warlock
    .goto Dun Morogh,47.3,53.7
    >>Talk to Gimrizz
    .trainer >> Train your class spells
step << Mage
    .goto Dun Morogh,47.5,52.1
    .trainer >> Train your class spells
step << Priest
    .goto Dun Morogh,47.3,52.2
    .trainer >> Train your class spells
step << Paladin
    .goto Dun Morogh,47.60,52.07
    .trainer >> Train your class spells
step << Warrior
    .goto Dun Morogh,47.4,52.6
    .trainer >> Train your class spells
step << !Paladin !Priest
    .goto Dun Morogh,47.2,52.6
    .train 3273 >> Train First Aid
step << Warrior
    >>Inside the building
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>Talk to |cFF00FF25Razzle Sprysprocket|r
    .turnin 412 >> Turn in Operation Recombobulation
step << Warrior
    #sticky
    #completewith next
    .money >0.1000
    +Start grinding until you have 10s of vendorables, then run into Ironforge
step << Warrior
    .goto Dun Morogh,53.5,34.9,30 >> Run into Ironforge
step << Warrior
    >>Go into the building
    .goto Ironforge,61.2,89.5
    .trainer >>Train 2h Maces
step << Warrior
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Run out of Ironforge
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Run up this part of the mountain
step
    >>Kill Vagash. Loot him for his Fang
    >>Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him
    >>Be careful as this quest is HARD
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> CLICK HERE for a guide on how to solo Vagash
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
step
    >>Grind a little en route
    .goto Dun Morogh,68.6,54.7
    .vendor >>vendor trash. Buy some food if needed << Warrior/Rogue
    .vendor >>vendor trash. Buy some food/water if needed << !Warrior !Rogue
step
    .goto Dun Morogh,68.4,54.5
    .train 2550 >> Train Cooking from Ghilm
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .accept 433 >> Accept The Public Servant
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Kill Troggs inside the cave
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >> vendor trash, repair
step
    .goto Dun Morogh,68.7,56.0
.target Senator Mehr Stonehallow
>>Talk to |cFF00FF25Senator Mehr Stonehallow|r
    .turnin 433 >> Turn in The Public Servant
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
step
    #label EndDM
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
step
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>Talk to |cFF00FF25Mountaineer Barleybrew|r
    .turnin 413 >> Turn in Shimmer Stout
.target Mountaineer Barleybrew
    .accept 414 >> Accept Stout to Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance Warlock
#name 11-12 Elwynn Warlock
#version 1
#group RestedXP Alliance 1-20
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan
step
    >>Run through the tunnel into Loch
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Talk to |cFF00FF25Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.233,73.675
    >>Go into the bunker from behind
.target Captain Rugelfuss
>>Talk to |cFF00FF25Captain Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
>>Talk to |cFF00FF25Mountaineer Kadrell|r
    .turnin 414 >> Turn in Stout to Kadrell
.target Mountaineer Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    >>Go inside the building, then go downstairs. Talk to Brock
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>Talk to |cFF00FF25Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
step
    .goto Loch Modan,34.82,49.28
.target Vidra Hearthstove
>>Talk to |cFF00FF25Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >>Buy a 6 slot bag
step
    .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Thelsamar
step
    #sticky
    #completewith Thelsamar1
    >>Kill Boars, Bears and Spiders in the zone for Intestines, Meat and Ichor
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    >>Run up to the northern bunker
    .goto Loch Modan,24.764,18.397
.target Mountaineer Stormpike
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .accept 307 >> Accept Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
step
    #label Thelsamar1
    .deathskip >> Die and respawn in Thelsamar
step
    .goto Loch Modan,33.938,50.954
>>Talk to |cFF00FF25Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students
.target Thorgrum Borrelson
    .accept 6391 >> Accept Ride to Ironforge
step
    .goto Loch Modan,33.938,50.954
    .fly Ironforge >> Fly to Ironforge
step
    .goto Ironforge,51.521,26.311
>>Talk to |cFF00FF25Golnir Bouldertoe|r
    .turnin 6391 >> Turn in Ride to Ironforge
.target Golnir Bouldertoe
    .accept 6388 >> Accept Gryth Thurden
step
    .goto Ironforge,39.550,57.490
.target Senator Barin Redstone
>>Talk to |cFF00FF25Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
step
    >>do NOT fly anywhere
    .goto Ironforge,55.501,47.742
>>Talk to |cFF00FF25Gryth Thurden|r
    .turnin 6388 >> Turn in Gryth Thurden
.target Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    #completewith next
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
     >> Enter the Deeprun Tram, speak with the gnome at the middle platform
.target Monty
>>Talk to |cFF00FF25Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step
>>Talk to |cFF00FF25Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
.target Monty
    .accept 6662 >> Accept Me Brother, Nipsy
step
     .isOnQuest 6662
    >> Take the tram to Stormwind, turn in when you arrive on the other side of the tram
.target Nipsy
>>Talk to |cFF00FF25Nipsy|r
    .turnin 6662 >> Turn in Me Brother, Nipsy
    >>Train first aid while wating/riding the tram, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
step
    #completewith next
    .goto StormwindClassic,60.5,12.3
    .zone Stormwind City >>Exit the tram into Stormwind
step
    .goto StormwindClassic,51.6,12.2
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step
    .goto StormwindClassic,58.1,16.5
.target Furen Longbeard
>>Talk to |cFF00FF25Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
step
    #sticky
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step
    .goto StormwindClassic,26.12,77.20
    .trainer >> Train your class spells
step
    .goto StormwindClassic,25.2,78.5
.target Gakin the Darkbinder
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .accept 1688 >> Accept Surena Caledon
step
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train Staves. Train 1h Swords if you have spare money
step
     #softcore
    #completewith next
     +Start life tapping on your way to the flight master
step
    .goto StormwindClassic,66.20,62.40
    .fp Stormwind City >> Get the Stormwind City flight path
step
     #softcore
    #completewith next
     >> Jump down the ledge (NOT the water) next to the flight master and kill yourself, make sure to life tap before jumping
    .deathskip >>Spirit rez at Goldshire
step
    .goto Elwynn Forest,42.10,65.90
     >>Head to Goldshire
.target Marshal Dughan
>>Talk to |cFF00FF25Marshal Dughan|r
    .accept 62 >> Accept The Fargodeep Mine
step
    >>On your close left as you go in
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>Talk to |cFF00FF25William Pestle|r
    .accept 60 >> Accept Kobold Candles
step
    .goto Elwynn Forest,42.10,67.30
.target Remy "Two Times"
>>Talk to |cFF00FF25Remy "Two Times"|r
    .accept 40 >> Accept A Fishy Peril
    .accept 47 >> Accept Gold Dust Exchange
step
    >>Click any of the wanted posters around
    .goto Elwynn Forest,24.6,74.7
    .accept 176 >> Accept Wanted:   "Hogger"
step
    #sticky
    #completewith collector
    >>Keep an eye out for the gold pickup schedule (lucky drop), or a 100% Drop from Gruff Swiftbite (rare). extra 210xp
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Accept The Collector
step
    #label Hogger
    .unitscan Hogger
    .goto Elwynn Forest,27.0,86.7,100,0
    .goto Elwynn Forest,26.1,89.9,100,0
    .goto Elwynn Forest,25.2,92.7,100,0
    .goto Elwynn Forest,27.0,93.9,100,0
    .goto Elwynn Forest,27.0,86.7,100,0
    .goto Elwynn Forest,26.1,89.9,100,0
    .goto Elwynn Forest,25.2,92.7,100,0
    .goto Elwynn Forest,27.0,93.9,100,0
    .goto Elwynn Forest,27.0,86.7,100,0
    .goto Elwynn Forest,26.1,89.9,100,0
    .goto Elwynn Forest,25.2,92.7,100,0
    .goto Elwynn Forest,27.0,93.9,100,0
    .goto Elwynn Forest,25.9,93.9
    >>Hogger can be in multiple spots in the area. Keep him fear chained, and/or kite him at <60% hp to the tower at 24,80. Loot him for his Claw
    >>Be careful as this can be difficult
    .complete 176,1 --Huge Gnoll Claw (1)
step
.target Ma Stonefield
>>Talk to |cFF00FF25Ma Stonefield|r
    .accept 88 >> Accept Princess Must Die!
    .goto Elwynn Forest,34.60,84.50
.target "Auntie" Bernice Stonefield
>>Talk to |cFF00FF25"Auntie" Bernice Stonefield|r
    .accept 85 >> Accept Lost Necklace
    .goto Elwynn Forest,34.40,84.2
step
    .goto Elwynn Forest,43.0,85.8
>>Talk to |cFF00FF25Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
.target Billy Maclure
    .accept 86 >> Accept Pie for Billy
step
    #sticky
    #label Fargodeep
    >>Loot Candles and Dust from the Kobolds in the area
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
step
    .goto Elwynn Forest,40.5,82.3
    >>Go into the mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #softcore
    #requires Fargodeep
    #completewith next
    .deathskip >> Die and respawn in Goldshire
step
    #requires Fargodeep
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
.target Marshal Dughan
    .accept 35 >> Accept Further Concerns
    .turnin 123 >> Turn in The Collector
    .isOnQuest 123
step
    #requires Fargodeep
    .goto Elwynn Forest,42.105,65.927
    >>Choose the Staff then equip it
>>Talk to |cFF00FF25Marshal Dughan|r
    .turnin 176 >> Turn in Wanted:    "Hogger"
    .turnin 62 >> Turn in The Fargodeep Mine
    .turnin 40 >> Turn in A Fishy Peril
.target Marshal Dughan
    .accept 35 >> Accept Further Concerns
step
    .goto Elwynn Forest,43.30,65.70
>>Talk to |cFF00FF25William Pestle|r
    .turnin 60 >> Turn in Kobold Candles
.target William Pestle
    .accept 61 >> Accept Shipment to Stormwind
step
    .goto Elwynn Forest,42.20,67.20
.target Remy "Two Times"
>>Talk to |cFF00FF25Remy "Two Times"|r
    .turnin 47 >> Turn in Gold Dust Exchange
step
    .goto Elwynn Forest,73.90,72.30
.target Guard Thomas
>>Talk to |cFF00FF25Guard Thomas|r
    .turnin 35 >> Turn in Further Concerns
step
    >>Kill the mobs inside the house, keep Morgan feared (he gouges and kills pet), nuke Surena. Loot her for her Choker
    .goto Elwynn Forest,71.0,80.8
    .complete 1688,1 --Surena's Choker (1)
step
    .goto Elwynn Forest,69.3,79.0
    >>Kill Princess, be careful, she has 2 adds and her charge hits hard
    .complete 88,1
step << skip
    #completewith next
    >>Keep an eye out for Westfall Deed from the Defias (lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Accept Furlbrow's Deed
step
    >>Head east to Redridge
    >>The guard patrols around the stumps a bit
    .goto Elwynn Forest,91.7,72.3,150,0
    .goto Redridge Mountains,17.4,69.6
.target Guard Parker
>>Talk to |cFF00FF25Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
step
    >>Be careful of the high level mobs mobs en route
    .goto Redridge Mountains,30.733,59.996
.target Deputy Feldon
>>Talk to |cFF00FF25Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
step
    .goto Redridge Mountains,30.6,59.4
    .fly Stormwind >> Fly to Stormwind
step
    .goto Elwynn Forest,26.21,39.66
    >>Choose the Rockets as the reward. These have very good damage, and can be used for splitpulling
.target Morgan Pestle
>>Talk to |cFF00FF25Morgan Pestle|r
    .turnin 61 >> Turn in Shipment to Stormwind
step << Warlock
    >>Go back to the Warlock Trainer
    .goto StormwindClassic,25.2,78.5
    .trainer >> Train your class spells
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1688 >> Turn in Surena Caledon
.target Gakin the Darkbinder
    .accept 1689 >> Accept The Binding
step << Warlock
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.5,78.1
    >>Go to the bottom of the crypt. Summon the Voidwalker using the Bloodstone Choker and kill it
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
step << Warlock
     #softcore
    >>Life tap on your way back to the warlock trainer
    .goto StormwindClassic,25.2,78.5
.target Gakin the Darkbinder
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1689 >> Turn in The Binding
step << Warlock
     #hardcore
    .goto StormwindClassic,25.2,78.5
.target Gakin the Darkbinder
>>Talk to |cFF00FF25Gakin the Darkbinder|r
    .turnin 1689 >> Turn in The Binding
step << Warlock
    #softcore
    #completewith next
    .goto StormwindClassic,25.2,78.5
    .deathskip >> Die and respawn at the Spirit Healer by using Life Tap and standing on the Bonfire next to you
step
.target Ma Stonefield
>>Talk to |cFF00FF25Ma Stonefield|r
    .turnin 88 >> Turn in Princess Must Die!
    .goto Elwynn Forest,34.66,84.48
step
.target "Auntie" Bernice Stonefield
>>Talk to |cFF00FF25"Auntie" Bernice Stonefield|r
    .turnin 86 >> Turn in Pie for Billy
    .goto Elwynn Forest,34.40,84.2
    .isQuestComplete 86
step
    .hs >> Hearth to Thelsamar
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance !Hunter
#name 12-14 Loch Modan
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf/Gnome
#next 14-19 Darkshore

step << Paladin
    #completewith TroggT
    >>Keep 10 Linen Cloth in your bags for your paladin quest later
    .collect 2589,10,1644,1 << Human --Linen Cloth (10)
    .collect 2589,10,1648,1 << Dwarf --Linen Cloth (10)
step
    #completewith EndLoch
    >>Grind boars for 8 Boar Meat for a quest later
    .collect 769,8 --Collect Chunk of Boar Meat (x8)
step
    >>Run through the tunnel into Loch
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>Talk to |cFF00FF25Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
    >>Go into the bunker from behind
.target Captain Rugelfuss
>>Talk to |cFF00FF25Captain Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
step << Paladin
    .goto Loch Modan,27.4,48.4
    >>Grind Troggs to get 10 Linen Cloth in your bags for your paladin quest later
    .collect 2589,10,1644,1 << Human --Linen Cloth (10)
    .collect 2589,10,1648,1 << Dwarf --Linen Cloth (10)
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
>>Talk to |cFF00FF25Mountaineer Kadrell|r
    .turnin 414 >> Turn in Stout to Kadrell
.target Mountaineer Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
    >>Go inside the building, then go downstairs. Talk to Brock
    .goto Loch Modan,37.2,46.9,15,0
    .goto Loch Modan,37.019,47.806
.target Brock Stoneseeker
>>Talk to |cFF00FF25Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
step
    .goto Loch Modan,34.82,49.28
.target Vidra Hearthstove
>>Talk to |cFF00FF25Vidra Hearthstove|r
    .accept 418 >> Accept Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy 1 Flint and Tinder, and 1 Simple Wood. Buy a 6 slot bag if needed
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
step << Mage
    .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Thelsamar
step << Mage/Paladin
    #completewith next
    >>Kill Boars, Bears and Spiders in the zone for Intestines, Meat and Ichor
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step << Mage/Paladin
    .xp 11+6615 >> Grind to 6615+/8800xp
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
step << Mage/Paladin
    .goto Loch Modan,33.938,50.954
>>Talk to |cFF00FF25Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students
.target Thorgrum Borrelson
    .accept 6391 >> Accept Ride to Ironforge
    .fp Thelsamar >> Get the Thelsamar Flight Path
    .fly Ironforge >> Fly to Ironforge
step << Mage/Paladin
    .goto Ironforge,51.521,26.311
>>Talk to |cFF00FF25Golnir Bouldertoe|r
    .turnin 6391 >> Turn in Ride to Ironforge
.target Golnir Bouldertoe
    .accept 6388 >> Accept Gryth Thurden
step << Mage/Paladin
    .goto Ironforge,39.550,57.490
.target Senator Barin Redstone
>>Talk to |cFF00FF25Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
step << Mage/Paladin
    .goto Ironforge,27.17,8.57 << Mage
    .goto Ironforge,23.131,6.143 << Paladin
     .trainer >> Train your class spells
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
.target Brandur Ironhammer
>>Talk to |cFF00FF25Brandur Ironhammer|r
    .accept 2999 >>Accept Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.4,12.1
    >>Go upstairs and speak to Tiza Battleforge
>>Talk to |cFF00FF25Tiza Battleforge|r
    .turnin 2999 >>Turn in Tome of Divinity
.target Tiza Battleforge
    .accept 1645 >>Accept The Tome of Divinity
    .turnin 1645 >>Turn in The Tome of Divinity
    .accept 1646 >>Accept The Tome of Divinity
    .turnin 1646 >>Turn in The Tome of Divinity
    .accept 1647 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,18.15,51.45
    .home >> Set your Hearthstone to Ironforge
step << Dwarf Paladin
    .goto Ironforge,21.40,50.25,60,0
    .goto Ironforge,45.40,84.65
    .unitscan John Turner
    >>Speak to John Turner, he walks around the outer ring of the city
>>Talk to |cFF00FF25John Turner|r
    .turnin 1647 >>Turn in The Tome of Divinity
.target John Turner
    .accept 1648 >>Accept The Tome of Divinity
    .turnin 1648 >>Turn in The Tome of Divinity
    .accept 1778 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>Return to Tiza Battleforge
>>Talk to |cFF00FF25Tiza Battleforge|r
    .turnin 1778 >>Turn in The Tome of Divinity
.target Tiza Battleforge
    .accept 1779 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Ironforge,23.6,8.6
    >>Speak to Muiredon Battleforge
>>Talk to |cFF00FF25Muiredon Battleforge|r
    .turnin 1779 >>Turn in The Tome of Divinity
.target Muiredon Battleforge
    .accept 1783 >>Accept The Tome of Divinity
step << Mage/Paladin
    .goto Ironforge,55.501,47.742
>>Talk to |cFF00FF25Gryth Thurden|r
    .turnin 6388 >> Turn in Gryth Thurden
.target Gryth Thurden
    .accept 6392 >> Accept Return to Brock
    .fly Thelsamar >> Fly to Thelsamar
step << skip
    #sticky
    #completewith next
    +Grind mobs until you have at least 33 Silver worth of money and vendorables
--N rogue money gate for cutlass+1h swords
step
    #sticky
    #completewith Tunnel
    >>Kill Boars, Bears and Spiders in the zone for Intestines, Meat and Ichor
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    >>Run up to the northern bunker
    .goto Loch Modan,24.764,18.397
.target Mountaineer Stormpike
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .accept 307 >> Accept Filthy Paws
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order << !Warlock !Mage
    .turnin 353 >> Turn in Stormpike's Delivery << Warlock
step
    #label Tunnel
    #completewith next
    .goto Loch Modan,35.46,18.78,50 >>Grind some mobs for Boar Intestines, Bear Meat and Spider Ichor en route
step
    .goto Loch Modan,35.75,22.42
    >>Go to the Kobold Cave. Collect the crates you find inside.
    >>Crates can spawn behind you near the mouth of the cave after looting one, be sure to check after you've looted 2 or 3
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,35.46,18.78
    >> Kill Kobolds. Loot them for their Ears
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #completewith next
    .goto Loch Modan,24.1,18.2
    .vendor >>Run back to the bunker. Vendor and repair
step
    .goto Loch Modan,24.76,18.39
.target Mountaineer Stormpike
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
step
    #sticky
    #label Meat9
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
    >>Kill Bears. Loot them for Meat
    .collect 3173,3,418,1 --Bear Meat (3)
step
    #sticky
    #label Ichor9
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
    >>Kill Spiders. Loot them for Ichor
    .collect 3174,3,418,1 --Spider Ichor (3)
step
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
    >>Kill Boars. Loot them for Intestines
    .collect 3172,3,418,1 --Boar Intestines (3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>Find Kadrell. He patrols along the Thelsamar road
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
    .turnin 416 >> Turn in Rat Catching
step
    #requires RatCatching
    .goto Loch Modan,34.82,49.28
.target Vidra Hearthstove
>>Talk to |cFF00FF25Vidra Hearthstove|r
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step
    .goto Loch Modan,34.8,48.6
    .vendor >> Buy more 6 slot bags if needed
step
    .goto Loch Modan,27.4,48.4
    >>Kill Stonesplinter Troggs. Loot them for their Teeth
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << !Mage !Paladin
    .goto Loch Modan,27.4,48.4
    .xp 13+5615 >> Grind until 5615+/11400xp
step << Mage/Paladin
    .goto Loch Modan,27.4,48.4
    .xp 13+7800 >> Grind until 7800+/11400xp
step << Rogue
    .goto Loch Modan,27.4,48.4
    .money >0.4315
    >>Grind until you have 43s 15c+ worth of money/vendorables. This is for Sinister Strike rank 3, 1h weapon skill training, Cutlass (weapon), and flying to Ironforge
step
    .goto Loch Modan,22.07,73.12
.target Mountaineer Cobbleflint
>>Talk to |cFF00FF25Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    .goto Loch Modan,23.23,73.67
.target Captain Rugelfuss
>>Talk to |cFF00FF25Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,87.1,51.1
    .zone Dun Morogh >> Head to Dun Morogh
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>Use the Symbol of Life on Narm Faulk
>>Talk to |cFF00FF25Narm Faulk|r
    .turnin 1783 >>Turn in The Tome of Divinity
.target Narm Faulk
    .accept 1784 >>Accept The Tome of Divinity
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5
    >>Kill Dark Iron Spies
    .complete 1784,1 --Dark Iron Script (1)
step << Dwarf Paladin
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    >>Perform a logout skip in the trogg cave to teleport back to Ironforge
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >> CLICK HERE for reference
step << Mage
    .hs >> Hearth to Thelsamar
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
>>Talk to |cFF00FF25Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students << !Mage
.target Thorgrum Borrelson
    .accept 6391 >> Accept Ride to Ironforge << !Mage
    .fp Thelsamar >> Get the Thelsamar Flight Path << !Mage
    .fly Ironforge >> Fly to Ironforge
step << !Mage !Paladin
    .goto Ironforge,51.521,26.311
>>Talk to |cFF00FF25Golnir Bouldertoe|r
    .turnin 6391 >> Turn in Ride to Ironforge
.target Golnir Bouldertoe
    .accept 6388 >> Accept Gryth Thurden
step << !Mage !Paladin !Warlock
    .goto Ironforge,18.15,51.45
    .home >> Set your Hearthstone to Ironforge
step << !Mage !Paladin
    .goto Ironforge,39.550,57.490
.target Senator Barin Redstone
>>Talk to |cFF00FF25Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
step << !Mage !Paladin
    .goto Ironforge,55.501,47.742
.target Gryth Thurden
>>Talk to |cFF00FF25Gryth Thurden|r
    .turnin 6388 >> Turn in Gryth Thurden
-- .accept 6392 >> Accept Return to Brock
step << Warrior
    .goto Ironforge,62.0,89.6
    .train 176 >>Train Thrown
step << Mage/Priest/Warlock
    #softcore
    #sticky
    #label Wand1
    #completewith Wand2
     >>Try to buy a Greater Magic Wand from the AH if it costs <33s 40c
    .goto Ironforge,25.74,75.43
    .collect 11288,1 --Greater Magic Wand (1)
step << Mage/Priest/Warlock
    #softcore
    #label Wand2
    #completewith Wand1
     >>If you can't find a Greater Magic Wand for a good price, buy a Smoldering Wand from the wand vendor
    .goto Ironforge,24.09,16.63,14,0
    .goto Ironforge,23.13,15.96
    .collect 5208,1 --Smoldering Wand (1)
step << Mage/Priest/Warlock
    #hardcore
     >>Go in the building. Buy a Smoldering Wand if you have 33s 40c+
    .goto Ironforge,24.09,16.63,14,0
    .goto Ironforge,23.13,15.96
    .collect 5208,1 --Smoldering Wand (1)
step << Warlock
    #softcore
    #requires Wand2
    .goto Ironforge,51.1,8.7,15,0 >> Enter the building
    .goto Ironforge,50.4,6.3
    .trainer >> Train your class spells
step << Warlock
    #hardcore
    .goto Ironforge,51.1,8.7,15,0 >> Enter the building
    .goto Ironforge,50.4,6.3
    .trainer >> Train your class spells
step << Warlock
    .goto Ironforge,53.2,7.8,15,0 >> Enter the building
    .goto Ironforge,53.0,6.4
    .vendor >> Buy Consume Shadows r1, then Sacrifice r1 books (if you have money)
step << Rogue
    #sticky
    #completewith next
    .isOnQuest 2218
    .goto Ironforge,51.50,15.34
.target Hulfdan Blackbeard
>>Talk to |cFF00FF25Hulfdan Blackbeard|r
    .turnin 2218 >> Turn in Road to Salvation
step << !Druid !Warlock
    .goto Ironforge,65.90,88.41 << Warrior
    .goto Ironforge,51.50,15.34 << Rogue
    .goto Ironforge,25.21,10.75 << Priest
    .goto Ironforge,27.17,8.57 << Mage
    .goto Ironforge,24.55,4.46 << Paladin
     .trainer >> Train your class spells
step << !Warlock
    #completewith next
    +Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLICK HERE
step << !Warlock
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
     >> Enter the Deeprun Tram, speak with the gnome at the middle platform
.target Monty
>>Talk to |cFF00FF25Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step << !Warlock
    >>Use your flute on the rats scattered around
    .complete 6661,1 --Rats Captured (x5)
step << !Warlock
>>Talk to |cFF00FF25Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
.target Monty
    .accept 6662 >> Accept Me Brother, Nipsy << !Mage
    >>You can skip Nipsy if you don't need money (5s 60c) and the tram has arrived << !Mage
step << !Warlock !Mage
     .isOnQuest 6662
    >> Take the tram to Stormwind, turn in when you arrive on the other side of the tram
.target Nipsy
>>Talk to |cFF00FF25Nipsy|r
    .turnin 6662 >> Turn in Me Brother, Nipsy
    >>Train first aid while wating/riding the tram, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
step << !Warlock !Mage
    #completewith next
    .goto StormwindClassic,60.5,12.3
    .zone Stormwind City >>Exit the tram into Stormwind
step << skip
    .goto StormwindClassic,51.6,12.2
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step << !Warlock !Mage
    .goto StormwindClassic,58.1,16.5
.target Furen Longbeard
>>Talk to |cFF00FF25Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
step << Priest
    #completewith next
    >>Go into the Cathedral
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
.target High Priestess Laurena
>>Talk to |cFF00FF25High Priestess Laurena|r
    .turnin 5634 >> Turn in Desperate Prayer
step << Priest
    .goto StormwindClassic,38.62,26.10
    .train 13908 >> Train Desperate Prayer
step << Warrior
    #completewith next
    .goto StormwindClassic,74.91,51.55,20 >> Enter the Command Center
step << Warrior
    .goto StormwindClassic,78.67,45.80
    .trainer >> Go upstairs. Train your class spells
.target Ilsa Corbin
.target Lyria Du Lac
>>Talk to |cFF00FF25Lyria Du Lac|r
-->>Talk to |cFF00FF25Ilsa Corbin|r
    .accept 1638 >> Accept A Warrior's Training
step << Warrior
    #sticky
    #completewith next
    .goto StormwindClassic,71.7,39.9,20 >>Enter the tavern
step << Warrior
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
step << !Warlock !Mage
    .goto StormwindClassic,57.1,57.7
    .trainer >>Train 1h Swords << Rogue
    .trainer >>Train Staves << Priest
    .trainer >>Train Staves. Train 1h swords if you have spare money << Warlock/Mage
    .trainer >>Train 2h Swords << Warrior/Paladin
step << Rogue
    .goto StormwindClassic,57.6,57.1
    .vendor >> If you have money, buy a Scimitar from Gunther and equip it. Equip the Craftsman's Dagger from earlier in your off-hand
step << Rogue/Warrior
    >>Go inside the building
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Buy the level 11 thrown from Thurman. Equip it
step << !Warlock !Mage
    .hs >> Hearth to Ironforge
step
    #softcore
    #completewith next
    .goto Ironforge,55.501,47.742
    .fly Wetlands>> Fly to Wetlands
step
    #hardcore
    .goto Dun Morogh,52.6,36.0
    .zone Dun Morogh >> Leave Ironforge and head out to Dun Morogh
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
    +Open this link and follow it on another screen.
    >>Do the Deathless Dun Morogh -> Wetlands skip
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> CLICK HERE for reference
    .goto Wetlands,9.5,59.7,80 >> Travel to Menethil Harbor
step
    #hardcore
	#label EndLoch
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step
    .goto Wetlands,4.6,57.2
    .zone Darkshore >>Head to the Menethil Harbor docks and take the boat to Darkshore
	>>Make a campfire with the items from earlier and start cooking your Boar Meat until you have 10+ skill
    >>Train first aid while waiting for the boat, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance Hunter
#name 1-7 Coldridge Valley (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf
#next 6-12 Dun Morogh (Hunter)
step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step
    .goto Dun Morogh,29.927,71.201
    >>Speak to Sten Stoutarm
.target Sten Stoutarm
>>Talk to |cFF00FF25Sten Stoutarm|r
    .accept 179 >>Accept Dwarven Outfitters
step
    .goto Dun Morogh,29.0,74.4
    .complete 179,1 --Tough Wolf Meat (8)
step
    .goto Dun Morogh,29.9,71.3
>>Talk to |cFF00FF25Sten Stoutarm|r
    .turnin 179 >>Turn in Dwarven Outfitters
.target Sten Stoutarm
    .accept 233 >>Accept Coldridge Valley Mail Delivery
    .accept 3108 >>Accept Etched Rune
step
    .goto Dun Morogh,29.7,71.3
    >>Speak to Balir Frosthammer
.target Balir Frosthammer
>>Talk to |cFF00FF25Balir Frosthammer|r
    .accept 170 >>Accept A New Threat
step
    #sticky
    #label Rockjaw
    >>Kill Rockjaw Troggs
    .goto Dun Morogh,29.20,76.08,0
    .goto Dun Morogh,26.38,73.07,0
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
    >>Speak to Talin Keeneye
>>Talk to |cFF00FF25Talin Keeneye|r
    .turnin 233 >>Turn in Coldridge Valley Mail Delivery
.target Talin Keeneye
    .accept 234 >>Accept Coldridge Valley Mail Delivery
    .accept 183 >>Accept The Boar Hunter
step
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0,100,0
    .goto Dun Morogh,22.8,69.6,100,0
    .goto Dun Morogh,22.2,72.5,100,0
    .goto Dun Morogh,20.5,71.4,100,0
    .goto Dun Morogh,21.1,69.0
    >>Kill Boars in the area
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>Talk to |cFF00FF25Talin Keeneye|r
    .turnin 183 >>Turn in The Boar Hunter
step
    .goto Dun Morogh,25.076,75.713
    >>Speak to Grelin Whitebeard
>>Talk to |cFF00FF25Grelin Whitebeard|r
    .turnin 234 >>Turn in Coldridge Valley Mail Delivery
.target Grelin Whitebeard
    .accept 182 >>Accept The Troll Cave
step
    .xp 4 >> Grind to 4
step
    .goto Dun Morogh,25.0,75.9
.target Nori Pridedrift
>>Talk to |cFF00FF25Nori Pridedrift|r
    .accept 3364 >>Accept Scalding Mornbrew Delivery
step
    #requires Rockjaw
    .goto Dun Morogh,29.7,71.3
    >>Speak to Balir Frosthammer
.target Balir Frosthammer
>>Talk to |cFF00FF25Balir Frosthammer|r
    .turnin 170 >>Turn in A New Threat
step
    #completewith next
    .goto Dun Morogh,30.09,71.58
    >>Buy 2 stacks of ammo
    .collect 2516,400
step
    .goto Dun Morogh,29.1,67.5
    >>Speak to Thorgas Grimson
.target Thorgas Grimson
>>Talk to |cFF00FF25Thorgas Grimson|r
    .turnin 3108 >>Turn in Etched Rune
        .train 1978 >> Train Serpent Sting
step
    .goto Dun Morogh,28.8,66.5
    >>Speak to Durnan Furcutter
>>Talk to |cFF00FF25Durnan Furcutter|r
    .turnin 3364 >>Turn in Scalding Mornbrew Delivery
.target Durnan Furcutter
    .accept 3365 >>Accept Bring Back the Mug
step
    .goto Dun Morogh,25.0,75.9
.target Nori Pridedrift
>>Talk to |cFF00FF25Nori Pridedrift|r
    .turnin 3365 >>Turn in Bring Back the Mug
step
    .goto Dun Morogh,22.7,79.3
    .goto Dun Morogh,20.9,75.7,0
    .goto Dun Morogh,27.3,79.7,0
    >>Kill Frostmane Troll Whelps
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .goto Dun Morogh,25.076,75.713
step
    .goto Dun Morogh,25.0,75.9
>>Talk to |cFF00FF25Grelin Whitebeard|r
    .turnin 182 >>Turn in The Troll Cave
.target Grelin Whitebeard
    .accept 218 >>Accept The Stolen Journal
step
    .goto Dun Morogh,26.8,79.9,40,0
    .goto Dun Morogh,29.0,79.0,25,0
    .goto Dun Morogh,30.6,80.3
    >>Enter the Troll cave. Kill Grik'nir, then loot him for Grelin's journal
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    #completewith next
    .goto Dun Morogh,28.4,79.7,35,0
    .goto Dun Morogh,26.8,79.6,25 >>Run back out the cave
step
    .goto Dun Morogh,25.076,75.713
>>Talk to |cFF00FF25Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
.target Grelin Whitebeard
    .accept 282 >> Accept Senir's Observations
step
    .goto Dun Morogh,33.484,71.841
    >>Speak to Mountaineer Thalos
>>Talk to |cFF00FF25Mountaineer Thalos|r
    .turnin 282 >>Turn in Senir's Observations
.target Mountaineer Thalos
    .accept 420 >>Accept Senir's Observations
step
    .goto Dun Morogh,33.8,72.2
    >>Speak to Hands Springsprocket
.target Hands Springsprocket
>>Talk to |cFF00FF25Hands Springsprocket|r
    .accept 2160 >>Accept Supplies to Tannok
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,0
    .goto Dun Morogh,35.7,66.0,20 >>Go through the tunnel
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance Hunter
#name 6-12 Dun Morogh (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf Hunter
#next 11-14 Loch Modan (Hunter)
step
    #completewith ribs1
    >> Kill Boars to get some Boar Meat/Ribs for later
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>Talk to |cFF00FF25Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
step
    #label ribs1
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>Talk to |cFF00FF25Ragnar Thunderbrew|r
    .accept 384 >>Accept Beer Basted Boar Ribs
step
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>Talk to |cFF00FF25Tannok Frosthammer|r
    .turnin 2160 >>Turn in Supplies to Tannok
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>Talk to |cFF00FF25Tharek Blackstone|r
    .accept 400 >>Accept Tools for Steelgrill
step
    .goto Dun Morogh,49.5,48.3
.target Pilot Bellowfiz
>>Talk to |cFF00FF25Pilot Bellowfiz|r
    .accept 317 >>Accept Stocking Jetsteam
step << skip
    .goto Dun Morogh,49.6,48.5
.target Pilot Stonegear
>>Talk to |cFF00FF25Pilot Stonegear|r
    .accept 313 >>Accept The Grizzled Den
step
    .goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>Talk to |cFF00FF25Loslor Rudge|r
    .accept 5541 >>Accept Ammo for Rumbleshot
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>Talk to |cFF00FF25Beldin Steelgrill|r
    .turnin 400 >>Turn in Tools for Steelgrill
step
    #sticky
    #completewith BoarRibs2
    >> Kill boars to get Boar Ribs for later
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,100,0
    .goto Dun Morogh,51.5,53.9,100,0
    .goto Dun Morogh,50.1,53.9,100,0
    .goto Dun Morogh,49.9,50.9,100,0
    .goto Dun Morogh,48.0,49.5,100,0
    .goto Dun Morogh,48.2,46.9,100,0
    .goto Dun Morogh,43.5,52.5,100,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Get the items for Stocking Jetsteam
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
    >>Speak to Pilot Bellowfiz
>>Talk to |cFF00FF25Pilot Bellowfiz|r
    .turnin 317 >>Turn in Stocking Jetsteam
.target Pilot Bellowfiz
    .accept 318 >>Accept Evershine
step
    .xp 6
step << Hunter
    .goto Dun Morogh,45.8,53.1
    .train 3044 >> Train Arcane Shot
step
    >>Loot the crate
.goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Rumbleshot's Ammo (1)
step
    .goto Dun Morogh,40.682,65.130
    >>Speak to Hegnar Rumbleshot
.target Hegnar Rumbleshot
>>Talk to |cFF00FF25Hegnar Rumbleshot|r
    .turnin 5541 >>Turn in Ammo for Rumbleshot
step << Hunter
    .goto Dun Morogh,40.682,65.130
    >>Buy the level 4 gun upgrade, skip this step if you don't have the money for it
    .collect 2509,1
step << skip
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >> Go into the cave. Kill Wendigos. Loot them for their Manes
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    .xp 7
step
    >>Grind some mobs en route
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>Talk to |cFF00FF25Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
step << !Mage
    .goto Dun Morogh,38.5,54.0
    >>Wait until Old Icebeard leaves the cave so you can sneak in and loot the chest, or do this
        .link https://www.youtube.com/watch?v=o55Y3LjgKoE >>CLICK HERE
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.6,51.6
.target Tundra MacGrann
>>Talk to |cFF00FF25Tundra MacGrann|r
    .turnin 312 >>Turn in Tundra MacGrann's Stolen Stash
step
    .goto Dun Morogh,30.4,45.8
    .vendor >> vendor trash
step
    .goto Dun Morogh,30.2,45.8
    >>Speak to Rejold Barleybrew
>>Talk to |cFF00FF25Rejold Barleybrew|r
    .turnin 318 >>Turn in Evershine
.target Rejold Barleybrew
    .accept 319 >>Accept A Favor for Evershine
    .accept 315 >>Accept The Perfect Stout
step
    #label BoarRibs2
    .goto Dun Morogh,30.2,45.4
    >>Speak to Marleth Barleybrew
.target Marleth Barleybrew
>>Talk to |cFF00FF25Marleth Barleybrew|r
    .accept 310 >>Accept Bitter Rivals
step
    #completewith next
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step << Hunter
	#hardcore
    .goto Dun Morogh,46.726,53.826
    .complete 384,1
    .xp 8-1540 >>Grind until you are 1540 xp away from level 8.
step << Hunter
	#softcore
    .goto Dun Morogh,30.9,35.1
    .complete 384,1
    .xp 8-1540 >>Grind until you are 1540 xp away from level 8.
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Run up the mountain north
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Follow it up to here
step
    #softcore
    .goto Dun Morogh,33.0,27.2,25,0
    .goto Dun Morogh,33.0,25.2,25,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Keep running straight north, Jump down and die once the General Chat changes to Wetlands, then respawn at Menethil Harbor
step
    #completewith next
    #softcore
    .goto Wetlands,12.7,46.7,80,0 >> Swim to shore
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Menethil>> Get the Menethil Harbor flight path
step
    #softcore
    #completewith next
    .hs >> Hearth back to Kharanos
step << skip
    .goto Dun Morogh,49.6,48.5
.target Pilot Stonegear
>>Talk to |cFF00FF25Pilot Stonegear|r
    .turnin 313 >>Turn in The Grizzled Den
step
    .goto Dun Morogh,47.4,52.5
    >>Buy the following items from the innkeeper:
    .complete 384,2 --Rhapsody Malt (1)
    .collect 2686,1,311 --Thunder Ale
step
    .goto Dun Morogh,47.7,52.6
    >>Head downstairs, give the Thunder Ale to Jarven and then click on the Unguarded Barrel
    .turnin 310 >>Turn in Bitter Rivals
    .accept 311 >>Accept Return to Marleth
step
    .goto Dun Morogh,47.3,52.5
    .home >> Set your Hearthstone to Kharanos
step
    .goto Dun Morogh,46.9,52.4
    >>Speak to Ragnar Thunderbrew
.target Ragnar Thunderbrew
>>Talk to |cFF00FF25Ragnar Thunderbrew|r
    .turnin 384 >>Turn in Beer Basted Boar Ribs
step
    .goto Dun Morogh,46.7,53.9
.target Senir Whitebeard
>>Talk to |cFF00FF25Senir Whitebeard|r
    .accept 287 >>Accept Frostmane Hold
step  << skip
    .goto Dun Morogh,49.6,48.5
.target Pilot Stonegear
>>Talk to |cFF00FF25Pilot Stonegear|r
    .turnin 313 >>Turn in The Grizzled Den
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .train 5116>> Train Concussive Shot
step
    #sticky
    #label favor
    >> Kill Bears, Boars and Leopards
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Run up the ramp to Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.5,43.0
    .goto Dun Morogh,41.5,36.0
    >>Clear mobs in this area. Be careful if you need to clear the middle camp. You can pull the mobs in the huts and line of sight (LoS) them behind the huts if you need 2 more mobs. If you get unlucky, run to the other area
    .complete 315,1 --Collect Shimmerweed (x6)
step
    #sticky
    #requires favor
    #label return
    .goto Dun Morogh,30.189,45.725
    >>Speak to Rejold Barleybrew
>>Talk to |cFF00FF25Rejold Barleybrew|r
    .turnin 319 >>Turn in A Favor for Evershine
.target Rejold Barleybrew
    .accept 320 >>Accept Return to Bellowfiz
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>Talk to |cFF00FF25Marleth Barleybrew|r
    .turnin 311 >>Turn in Return to Marleth
>>Talk to |cFF00FF25Rejold Barleybrew|r
    .turnin 315 >>Turn in The Perfect Stout
.target Rejold Barleybrew
    .accept 413 >>Accept Shimmer Stout
step
    #requires return
    >>Enter the troll cave
    >>Be very careful not to die here
    .goto Dun Morogh,22.3,50.7,30,0
    .goto Dun Morogh,22.5,51.5,30,0
    .goto Dun Morogh,22.7,52.0
    .complete 287,1 --Fully explore Frostmane Hold (1)
    .complete 287,2 --Frostmane Headhunter (5)
step
    #hardcore
    #completewith next
    .goto Dun Morogh,46.3,52.1,200 >> Start running back to Kharanos
step
    #era
    .xp 10-1470 >> Grind until you are 1450xp away from level 10
step
    #som
	#phase 1-2
    .xp 10-2050 >> Grind until you are 2050xp away from level 10
step
	#som
	#phase 3-6
	.xp 10-2950 >> Grind until you are 2950xp away from level 10
step
	#completewith next
	#hardcore
	.hs >> Hearth to Kharanos
step
	#completewith next
	#softcore
	.deathskip >> Die and respawn at Kharanos
step
    .goto Dun Morogh,46.7,53.7
>>Talk to |cFF00FF25Senir Whitebeard|r
    .turnin 287 >>Turn in Frostmane Hold
.target Senir Whitebeard
    .accept 291 >>Accept The Reports
step
    .goto Dun Morogh,49.4,48.3
.target Pilot Bellowfiz
>>Talk to |cFF00FF25Pilot Bellowfiz|r
    .turnin 320 >>Turn in Return to Bellowfiz
step
    .goto Dun Morogh,45.810,53.039
.target Grif Wildheart
>>Talk to |cFF00FF25Grif Wildheart|r
    .accept 6064 >>Accept Taming the Beast
step
    .goto Dun Morogh,48.3,56.9
    >>Click the taming rod in your bag on a Large Crag Boar. Try to do it at max range (30 yards)
    .complete 6064,1 --Tame a Large Crag Boar (1)
step
    .goto Dun Morogh,45.810,53.039
>>Talk to |cFF00FF25Grif Wildheart|r
    .turnin 6064 >>Turn in Taming the Beast
.target Grif Wildheart
    .accept 6084 >>Accept Taming the Beast
step
    .goto Dun Morogh,49.4,59.4
    >>Click the taming rod in your bag on a Snow Leopard. Try to do it at max range (30 yards)
    .complete 6084,1 --Tame a Snow Leopard (1)
step
    .goto Dun Morogh,45.810,53.039
>>Talk to |cFF00FF25Grif Wildheart|r
    .turnin 6084 >>Turn in Taming the Beast
.target Grif Wildheart
    .accept 6085 >>Accept Taming the Beast
step
    .goto Dun Morogh,50.4,59.7
    >>Click the taming rod in your bag on an Ice Claw Bear. Try to do it at max range (30 yards)
    .complete 6085,1 --Tame an Ice Claw Bear (1)
step
    .goto Dun Morogh,45.810,53.039
>>Talk to |cFF00FF25Grif Wildheart|r
    .turnin 6085 >>Turn in Taming the Beast
.target Grif Wildheart
    .accept 6086 >>Accept Training the Beast
step
    .goto Dun Morogh,63.1,49.8
    >>Speak to Rudra Amberstill
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
    .accept 314 >>Accept Protecting the Herd
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,12,0
    .goto Dun Morogh,62.2,49.4,8 >>Run up this part of the mountain
step
    .goto Dun Morogh,62.6,46.1
    >>Kill Vagash. Loot him for his Fang, this quest is HARD, try to kite him to the guard parked at the intersection
    .complete 314,1 --Collect Fang of Vagash (x)
    .link https://www.youtube.com/watch?v=6PfhYU-9hoA >> Click here for video reference
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>Talk to |cFF00FF25Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
    .isQuestComplete 314
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .accept 432 >> Accept Those Blasted Troggs!
step
    .goto Dun Morogh,70.7,56.4,50,0
    .goto Dun Morogh,70.62,52.39
    >>Kill Troggs in the cave and around the quarry
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    --.complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>Talk to |cFF00FF25Foreman Stonebrow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
step << skip
    .goto Dun Morogh,68.4,54.5
    .train 2550 >> Train Cooking from Ghilm
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    >>Kill Mangeclaw. Loot him for his Claw, this quest can be hard, kite him to the guard parked next to the quest giver
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>Talk to |cFF00FF25Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge

step
    .goto Dun Morogh,86.278,48.812
>>Talk to |cFF00FF25Mountaineer Barleybrew|r
    .turnin 413 >> Turn in Shimmer Stout
.target Mountaineer Barleybrew
    .accept 414 >> Accept Stout to Kadrell
]])

RXPGuides.RegisterGuide([[
#classic
#som
#phase 3-6
<< Alliance Hunter
#name 11-14 Loch Modan (Hunter)
#version 1
#group RestedXP Alliance 1-20
#defaultfor Dwarf
#next 14-16 Darkshore

step
    .goto Loch Modan,22.07,73.12
    >>Head to Loch Modan
.target Mountaineer Cobbleflint
>>Talk to |cFF00FF25Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
step
    .goto Loch Modan,23.23,73.67
.target Captain Rugelfuss
>>Talk to |cFF00FF25Captain Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
step
    #sticky
    #label ratcatching
     >> Talk to the guard patrolling Thelsamar
    --.accept 416 >> Accept Rat Catching
.target Mountaineer Kadrell
>>Talk to |cFF00FF25Mountaineer Kadrell|r
    .turnin -414 >> Turn in Stout to Kadrell
    .accept 1339 >> Accept Mountaineer Stormpike's Task
step
       .goto Loch Modan,35.5,48.4
    .home >> Set your Hearthstone to Loch Modan
step
    .goto Loch Modan,37.01,47.80
.target Brock Stoneseeker
>>Talk to |cFF00FF25Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
step
    #requires ratcatching
    .goto Loch Modan,33.93,50.95
>>Talk to |cFF00FF25Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students
.target Thorgrum Borrelson
    .accept 6391 >> Accept Ride to Ironforge
step
     #completewith next
    .fly Ironforge>> Fly to Ironforge
step
    .goto Ironforge,51.52,26.31
>>Talk to |cFF00FF25Golnir Bouldertoe|r
    .turnin 6391 >> Turn in Ride to Ironforge
.target Golnir Bouldertoe
    .accept 6388 >> Accept Gryth Thurden
step
    .goto Dun Morogh,57.42,30.31
.target Senator Barin Redstone
>>Talk to |cFF00FF25Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
step <<  Hunter
    .goto Ironforge,70.86,85.83
.target Belia Thundergranite
>>Talk to |cFF00FF25Belia Thundergranite|r
    .turnin 6086 >> Turn in Training the Beast
step
    .goto Ironforge,55.50,47.74
>>Talk to |cFF00FF25Gryth Thurden|r
    .turnin 6388 >> Turn in Gryth Thurden
.target Gryth Thurden
    .accept 6392 >> Accept Return to Brock
step
    #completewith next
    .fly Loch Modan>> Fly to Loch Modan
step
    .goto Loch Modan,37.019,47.806
    >>Go inside the building, then go downstairs. Talk to Brock
.target Brock Stoneseeker
>>Talk to |cFF00FF25Brock Stoneseeker|r
    .turnin 6392 >> Turn in Return to Brock
step << Hunter
    .goto Loch Modan,35.8,43.5
    >>Buy a level 9 gun upgrade from Vrok Blunderblast if you have 13s to spare, skip this step otherwise
    .collect 2511,1
step
    .goto Loch Modan,32.55,74.61
    >>Kill Troggs
    .complete 224,1
    .complete 224,2
    .complete 267,1
step
    .goto Loch Modan,22.07,73.12
.target Mountaineer Cobbleflint
>>Talk to |cFF00FF25Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
step
    .goto Loch Modan,23.23,73.67
.target Captain Rugelfuss
>>Talk to |cFF00FF25Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
step
    .goto Loch Modan,24.76,18.39
.target Mountaineer Stormpike
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
step
    .goto Loch Modan,24.76,18.39
.target Mountaineer Stormpike
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .accept 1338 >> Accept Stormpike's Order
step
	#softcore
    #completewith next
    .deathskip >> Pull mobs and die on purpose, respawn at Thelsamar
step
    .goto Loch Modan,33.93,50.95
    .fly Ironforge>> Fly to Ironforge
step
    .goto Ironforge,60.0,36.8
    .train 2550 >> Make sure to train cooking in Ironforge
step
    .goto Ironforge,74.64,11.74
.target Prospector Stormpike
>>Talk to |cFF00FF25Prospector Stormpike|r
    .turnin 301 >> Turn in Report to Ironforge
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
     >> Enter the Deeprun Tram, speak with the gnome at the middle platform
.target Monty
>>Talk to |cFF00FF25Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
step
    >>Use the flute provided on the rats around the station
    .complete 6661,1
step
>>Talk to |cFF00FF25Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
.target Monty
    .accept 6662 >> Accept Me Brother, Nipsy
step
     >> Ride to the other side of the tram and turn in
.target Nipsy
>>Talk to |cFF00FF25Nipsy|r
    .turnin 6662 >> Turn in Me Brother, Nipsy
step
    #completewith next
    .goto StormwindClassic,60.5,12.3
    .zone Stormwind City >>Exit the tram into Stormwind
step
    #softcore
    .goto StormwindClassic,51.75,12.06
.target Grimand Elmore
>>Talk to |cFF00FF25Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
step
    .goto StormwindClassic,58.08,16.52
.target Furen Longbeard
>>Talk to |cFF00FF25Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
step
    .goto StormwindClassic,57.23,57.29
    .trainer >> Train Staves
step
	#completewith next
    .hs >> Hearth back to Thelsamar, take the tram to Ironforge and fly to Loch Modan if your hearthstone is still on cooldown
step
    .goto Loch Modan,24.76,18.39
.target Mountaineer Stormpike
>>Talk to |cFF00FF25Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
step
	#softcore
     #completewith next
     .deathskip >> Die and respawn at the graveyard
step
    #softcore
    #completewith next
    .goto Loch Modan,33.93,50.95
    .fly Wetlands>> Fly to Wetlands
step
    #hardcore
    .goto Dun Morogh,52.6,36.0
    .zone Dun Morogh >> Take the tram back to Ironforge and head out to Dun Morogh
step
    #hardcore
    #label skip1
    #completewith fp
	+Do the Loch Modan - Wetlands run, you can save a lot of time by doing a series of mountain jumps, see the video below
    .link https://www.youtube.com/watch?v=q-yHviS7baQ >> This skip is hard, click here for video reference
step
    #hardcore
    #label fp
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
step << Hunter
	.goto Wetlands,11.4,59.6
	>>Buy the level 16 weapon upgrade from Murndan Deth inside the blacksmith, skip this step if you don't have enough money
	.collect 3023,1
step
    .goto Wetlands,4.6,57.2
    .zone Darkshore >>Head to the Menethil Harbor docks and take the boat to Darkshore
    >>Make a campfire and level cooking while you wait
    >>Train first aid while waiting for the boat, you'll need 80 points in first aid for a level 24 quest later down the road << Rogue
]])
