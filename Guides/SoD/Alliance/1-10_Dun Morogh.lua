local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Alliance 1-20
#name 1-7 Coldridge Valley
#next 6-11 Dun Morogh SoD
#displayname 1-7 Coldridge Valley
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +You have selected a guide meant for Gnomes and Dwarves. You should choose the same starter zone that you start in
step << !Gnome Mage
    #season 2
    #completewith next
    +In Season of Discovery, you should NOT start outside of your race's starter zone as a Mage, as you will be unable to get your first rune here (|T133816:0|t[Engrave Gloves - Ice Lance])
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Accept Dwarven Outfitters
    .target Sten Stoutarm
step << Warlock
#sticky
#label wlrune1
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r on the ground. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Haunting]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
#requires wlrune1
#sticky
    #season 2
    .train 403919 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Haunting]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Haunt]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
--XX Era Level 1 Warrior/Warlock training, Era Warlock imp accept start
step << Warrior/Warlock
    #season 0,1
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_Kill and loot |cRXP_ENEMY_Ragged Young Wolves|r until you have 10 copper or more of vendor trash|r
    >>|cRXP_WARN_Unequip your|r |T132665:0|t[Acolyte's Robe]|cRXP_WARN_,|r |T135005:0|t[Acolyte's Shirt]|cRXP_WARN_,|r |T134581:0|t[Acolyte's Pants]|cRXP_WARN_, and|r |T132535:0|t[Acolyte's Shoes] |cRXP_WARN_so you can vendor them for 4 copper|r << Warlock
    >>|cRXP_WARN_Unequip your|r |T135009:0|t[Recruit's Shirt]|cRXP_WARN_,|r |T134582:0|t[Recruit's Pants]|cRXP_WARN_, and|r |T132540:0|t[Recruit's Boots] |cRXP_WARN_so you can vendor them for 3 copper|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar
step << Warrior/Warlock
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r inside
    .vendor >> Vendor Trash
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348.1 << Warlock
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r inside
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Thran Khorman
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r inside
    .train 348 >> Train |T135817:0|t[Immolate]
    .accept 1599 >> Accept Beginnings
    .target Alamar Grimm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >> Hearth to Coldridge Valley
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Delete the |T134414:0|t[Hearthstone] from your bags, as it's no longer needed
--XX Era Warriors, Era Softcore Warlocks drop HS
step << Warlock
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >> Exit Anvilmar
    .subzoneskip 77,1
--XX Era Level 1 Warrior/Warlock training, warlock imp accept end
step
    #label WolfMeat
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
    #optional
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
    .xp 2 >> Grind to level 2
    .mob Ragged Young Wolf
step << Priest/Mage/Warlock
    #season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Mage
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
step << !Priest !Mage !Warlock
    #completewith next << !Hunter
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash << Hunter
    >>|cRXP_BUY_Buy 600|r |T132384:0|t[Light Shots] |cRXP_BUY_from him|r << Hunter
    .vendor >> |cRXP_WARN_Vendor trash|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    >>|cRXP_WARN_Make sure to equip the gloves you get from this quest so you can engrave a rune of them later|r
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3106 >> Accept Simple Rune << Dwarf Warrior
    .accept 3107 >> Accept Consecrated Rune << Dwarf Paladin
    .accept 3108 >> Accept Etched Rune << Dwarf Hunter
    .accept 3109 >> Accept Encrypted Rune << Dwarf Rogue
    .accept 3110 >> Accept Hallowed Rune << Dwarf Priest
    .accept 3112 >> Accept Simple Memorandum << Gnome Warrior
    .accept 3113 >> Accept Encrypted Memorandum << Gnome Rogue
    .accept 3114 >> Accept Glyphic Memorandum << Gnome Mage
    .accept 3115 >> Accept Tainted Memorandum << Gnome Warlock
    .target Sten Stoutarm
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Accept A New Threat
    .target Balir Frosthammer
--XX SoD level 2 Training/Rune quest accept start (-Paladin, they don't need to yet)
step << Priest/Mage/Warlock
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
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r on the ground. Loot it for the |T136222:0|t|cRXP_LOOT_[Memory of a Troubled Acolyte]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Mage
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r on the ground. Loot it for the |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r
    >>|cRXP_WARN_NOTE: You will be unable to train|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_here as you can only get a|r |T133736:0|t[Comprehension Primer] |cRXP_WARN_in your race's starting zone|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << !Paladin !Hunter
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >> Enter Anvilmar << Rogue/Warlock/Mage
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar << !Rogue !Warlock !Mage
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r upstairs
    .accept 1599 >> Accept Beginnings
    .turnin 3115 >> Turn in Tainted Memorandum << Gnome
    .accept 77666 >> Accept Stolen Power << Gnome
    .turnin 77666 >> Turn in Stolen Power << Gnome
    .train 348 >> Train |T135817:0|t[Immolate]
    .target Alamar Grimm
step << Warrior
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r inside
    .turnin 3106 >> Turn in Simple Rune << Dwarf
    .turnin 3112 >> Turn in Simple Memorandum << Gnome
    .accept 77655 >> Accept The Lost Rune << Dwarf
    .accept 77656 >> Accept The Lost Rune << Gnome
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .trainer >> Train your class spells
    .target Thran Khorman
step << Rogue
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r inside
    .turnin 3109 >> Turn in Encrypted Rune << Dwarf
    .turnin 3113 >> Turn in Encrypted Memorandum << Gnome
    .accept 77658 >> Accept Thrice Stolen << Dwarf
    .accept 77659 >> Accept Thrice Stolen << Gnome
    .train 1784 >>Train |T132320:0|t[Stealth]
    .target Solm Hargrin
step << Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r inside
    >>|cRXP_WARN_Train|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_as you'll need it for a class quest soon|r << Dwarf
    .turnin 3110 >> Turn in Hallowed Rune << Dwarf
    .accept 5626 >> Accept In Favor of the Light << Dwarf
    .accept 77661 >> Accept Meditation on the Light << Dwarf
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .target Branstock Khalder
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_Target the |cRXP_FRIENDLY_Altar of the Light|r inside to receive the|r |T135934:0|t[Meditation on the Light] |cRXP_WARN_buff|r
    >>|cRXP_WARN_If this doesn't work, type /kneel with the |cRXP_FRIENDLY_Altar of the Light|r targetted|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >> |cRXP_WARN_Use the|r |T136222:0|t|cRXP_LOOT_[Memory of a Troubled Acolyte]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Penance]
    .aura -410935
    .use 205951
step << Dwarf Priest
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r inside
    .turnin 77661 >> Turn in Meditation on the Light
    .target Branstock Khalder
    .isQuestComplete 77661
step << Gnome Warlock/Dwarf Priest
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equip the|r |T132961:0|t[Tattered Cloth Gloves]
    .use 711
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << Gnome Warlock/Dwarf Priest
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132961:0|t[Tattered Cloth Gloves] with|r |T133816:0|t[Engrave Gloves - Haunt] << Warlock
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132961:0|t[Tattered Cloth Gloves] with|r |T133816:0|t[Engrave Gloves - Penance] << Priest
    .train 402862,3 << Priest
    .train 403919,3 << Warlock
step << !Paladin !Hunter
    #season 2 << !Warlock --Only Warlock is inside Anvilmar in Era at this step
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
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step
#season 0,1
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
    .target Talin Keeneye
step
#season 2
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 234 >> Accept Coldridge Valley Mail Delivery
    .target Talin Keeneye
step
#season 0,1
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
#season 0,1
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Turn in The Boar Hunter
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Paladin/Warlock
    #xprate <1.5
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >> Grind to 1130+/1400xp
step << Paladin/Warlock
    #xprate >1.49
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+995 >> Grind to 995+/1400xp
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
    .target Grelin Whitebeard
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Grind to level 4
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_This will start a 5 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step << Warlock
#season 2
#completewith next
    .goto Dun Morogh,26.85,79.83,20 >> Enter the troll cave
step << Warlock
#loop
#season 2
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Kill |cRXP_ENEMY_Frostmane Novices|r inside the troll cave. Loot them for their |cRXP_LOOT_Feather Charms|r
    >>|cRXP_WARN_You're on a timer. Do NOT go AFK or log out|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock/Paladin/Hunter
    #season 2
    #completewith next
    >>|cRXP_WARN_Make sure you will have at least one silver after vendoring. You will need it to train|r |T132204:0|t[Serpent Sting] << Hunter
    >>|cRXP_WARN_Make sure you will have at least one silver after vendoring. You will need it to train|r |T135959:0|t[Judgement] << Paladin
    .hs >> Hearth to Anvilmar
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_You have 5 minutes to return to Anvilmar before|r |T132791:0|t[Duncan's Scalding Mornbrew] |cRXP_WARN_expires|r
    .goto 1426,28.939,68.387,20 >> Enter Anvilmar
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r inside
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 2
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Turn in Etched Rune << Dwarf
    .accept 77660 >> Accept Trek Through the Caves << Dwarf
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
step << Paladin
    #season 2
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r inside
    .turnin 3107 >> Turn in Consecrated Rune << Dwarf
    .accept 77657 >> Accept Relics of the Light << Dwarf
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Bromos Grummner
step << Warlock
    #season 0,1
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r upstairs
    .turnin 3115 >> Turn in Tainted Memorandum
    .train 172 >>Train |T136118:0|t[Corruption]
    .target Alamar Grimm
step << Warlock
    #season 2
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r upstairs
    .train 172 >>Train |T136118:0|t[Corruption]
    .turnin 1599 >> Turn in Beginnings
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #hardcore
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >> Exit Anvilmar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Turn in A New Threat
    .target Balir Frosthammer
step << Warlock
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob Rockjaw Trogg
    .mob Burly Rockjaw Trogg
step << Warrior/Paladin
    #season 2
    #completewith Observations
    #label Victory1 << Warrior
    #label Libram1 << Paladin
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .waypoint 1426,22.836,79.962,45,0
    .waypoint 1426,22.684,78.888,45,0
    .waypoint 1426,21.029,76.459,45,0
    .waypoint 1426,20.671,75.838,45,0
    .waypoint 1426,25.861,78.197,45,0
    .waypoint 1426,26.382,78.409,45,0
    .waypoint 1426,26.031,79.854,45,0
    .waypoint 1426,23.716,80.257,45,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r. Loot them for the |T134419:0|t|cRXP_LOOT_[Rune of Victory Rush]|r << Warrior
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r << Paladin
    .collect 204806,1 << Warrior --Rune of Victory Rush (1)
    .collect 205420,1 << Paladin -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 403470,1 << Warrior
    .train 410002,1 << Paladin
step << Warrior
    #season 2
    #completewith Observations
    #label Victory2
    #requires Victory1
    .train 403470 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Victory Rush]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Victory Rush]
    .use 204806
    .itemcount 204806,1
step << Warrior
    #season 2
    #completewith Observations
    #label Victory3
    #requires Victory2
    .equip 10 >>|cRXP_WARN_Equip a pair of|r |T132938:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_if you have a pair or you loot a pair|r
    .train 403470,3
step << Warrior
    #season 2
    #completewith Observations
    #requires Victory3
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132938:0|t|cRXP_LOOT_[Gloves]|r with|r |T133816:0|t[Engrave Gloves - Victory Rush]
    .train 403470,3
step << Paladin
    #season 2
    #completewith Observations
    #label Libram2
    #requires Libram1
    .equip 18,205420 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--  .itemStat 18,QUALITY,<2
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram3
    #requires Libram2
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,29.303,77.337,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,24.193,77.305,55,0
    .aura 408828 >>|cRXP_WARN_Cast|r |T135959:0|t[Judgement] |cRXP_WARN_10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram4
    #requires Libram3
    .cast 409920 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Judgement]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .use 205420
    .aura -408828
    .train 410002,1
step << Paladin
    #season 2
    #completewith Observations
    #label Libram5
    #requires Libram4
    .equip 10 >>|cRXP_WARN_Equip a pair of|r |T132938:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_if you have a pair or you loot a pair|r
    .train 410002,3
step << Paladin
    #season 2
    #completewith Observations
    #requires Libram5
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132938:0|t|cRXP_LOOT_[Gloves]|r with|r |T133816:0|t[Engrave Gloves - Crusader Strike]
    .train 410002,3
step
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Warrior/Paladin
    #season 2
    #optional
    #requires Victory2 << Warrior
    #requires Libram4 << Paladin
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_This will start a 5 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #softcore
    #completewith next
    +|cRXP_WARN_You have 5 minutes to get |cRXP_LOOT_Grelin Whitebeard's Journal|r and return to Anvilmar before|r |T132791:0|t[Duncan's Scalding Mornbrew] |cRXP_WARN_expires|r
    >>|cRXP_WARN_If you fail the quest don't worry as you can get it again later|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Enter the Frostmane Cave
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Travel towards |cRXP_ENEMY_Grik'nir the Cold|r inside
step
    #sticky << Rogue/Hunter
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r inside. Loot him for |cRXP_LOOT_Grelin Whitebeard's Journal|r
    >>|cRXP_WARN_Try to make sure you will have 2 silver after vendoring. You will need it to train spells soon|r << Warrior
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
--XXSOD xpgate for early 6 training?
step << Rogue/Hunter
    #season 2
    .goto Dun Morogh,30.773,80.063
    >>Open the |cRXP_PICK_Frostmane Loot Cache|r on the ground inside. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r << Rogue
    >>Open the |cRXP_PICK_Frostmane Loot Cache|r on the ground inside. Loot it for the |T134419:0|t|cRXP_LOOT_[Rune of the Chimera]|r << Hunter
    >>|cRXP_WARN_Watch out, |cRXP_ENEMY_Grik'nir the Cold|r respawns very quickly! You might have to kill him again to loot the chest|r
    .collect 204795,1 << Rogue --Rune of Shadowstrike (1)
    .collect 206168,1 << Hunter -- Rune of the Chimera (1)
    .train 400105,1 << Rogue
    .train 410121,1 << Hunter
step << Rogue
    #season 2
    #hardcore
    .train 400105 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Shadowstrike]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
--XX HC as softcore have timed quest turnin in Anvilmar (softcore rogues do it after turnin)
step << Hunter
    #season 2
    .train 410121 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of the Chimera]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Chimera Shot]
    .use 206168
    .itemcount 206168,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Equip a pair of|r |T132952:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_if you have a pair or you loot a pair|r
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #label Chimera1
    .equip 10 >>|cRXP_WARN_Equip a pair of|r |T132952:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_if you have a pair or you loot a pair|r
    .train 410121,1
step << Rogue
    #season 2
    #hardcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132952:0|t|cRXP_LOOT_[Gloves]|r with|r |T133816:0|t[Engrave Gloves - Shadowstrike]
    .train 400105,3
step << Hunter
    #season 2
    #completewith Observations
    #requires Chimera1
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132952:0|t|cRXP_LOOT_[Gloves]|r with|r |T133816:0|t[Engrave Gloves - Chimera Shot]
    .train 410121,1
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    #completewith next
    >|cRXP_WARN_>Make sure you will have two silver after vendoring to be able to train level 4 spells|r << Warrior
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step
    #hardcore << !Paladin !Warlock !Hunter
    #optional
    #requires Grelin << Rogue/Hunter
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Exit the Frostmane Cave
    .subzoneskip 132
--XX HC only unless you're a Paladin, Warlock, or Hunter
step << !Paladin !Warlock !Hunter
    #hardcore
    #requires Grelin << Rogue
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter
    #requires Grelin << Rogue/Hunter
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    >>|cRXP_WARN_If you failed the quest, skip this step|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    #softcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Accept Bring Back the Mug
    .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Abandon Scalding Mornbrew Delivery. You'll pick it up again
step << Rogue
    #season 2
    #softcore
    .train 400105 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Shadowstrike]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Shadowstrike]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #label Shadowstrike1
    .equip 10 >>|cRXP_WARN_Equip a pair of|r |T132952:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_if you have a pair or you loot a pair|r
    .train 400105,3
step << Rogue
    #season 2
    #softcore
    #completewith Observations
    #requires Shadowstrike1
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132952:0|t|cRXP_LOOT_[Gloves]|r with|r |T133816:0|t[Engrave Gloves - Shadowstrike]
    .train 400105,3
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r and |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #softcore
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter
    #hardcore
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
--  .vendor >> Vendor Trash
    .target Durnan Furcutter
    .isQuestAvailable 317




----Start of >1.59x training section----




step << Mage
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .turnin 3114 >> Turn in Glyphic Memorandum << Gnome
    .trainer >> Train your class spells
    .target Marryk Nurribit
step << Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .turnin 3114 >> Turn in Glyphic Memorandum << Gnome
    .accept 77667 >> Accept Spell Research << Gnome
    .trainer >> Train your class spells
    .target Marryk Nurribit
step << Gnome Mage
    #xprate >1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .turnin 77667 >> Turn in Spell Research
    .target Marryk Nurribit
step << Gnome Mage
    #xprate >1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equip the|r |T132961:0|t[Tattered Cloth Gloves]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate >1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132961:0|t[Tattered Cloth Gloves] with|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .train 401760,3
step << Rogue
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Turn in Encrypted Memorandum << Gnome
    .turnin 3109 >> Turn in Encrypted Rune << Dwarf
    .train 1784 >>Train |T132320:0|t[Stealth]
    .trainer >>Train your class spells
    .target Solm Hargrin
step << Rogue
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 77658 >> Turn in Thrice Stolen << Dwarf
    .turnin 77659 >> Turn in Thrice Stolen << Gnome
    .train 921 >>Train |T133644:0|t[Pick Pocket]
    .trainer >>Train your class spells
    .target Solm Hargrin
step << Priest
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Train|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_and|r |T135929:0|t[Lesser Heal] (Rank 2) |cRXP_WARN_as you'll need them for a class quest soon|r << Dwarf
    .turnin 3110 >> Turn in Hallowed Rune << Dwarf
    .accept 5626 >> Accept In Favor of the Light << Dwarf
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 2052 >> Train |T135929:0|t[Lesser Heal] (Rank 2) << Dwarf
    .trainer >> Train your class spells
    .target Branstock Khalder
step << Priest
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Train|r |T135929:0|t[Lesser Heal] (Rank 2) |cRXP_WARN_as you'll need it for a class quest soon|r << Dwarf
    .accept 5626 >> Accept In Favor of the Light << Dwarf
    .train 2052 >> Train |T135929:0|t[Lesser Heal] (Rank 2) << Dwarf
    .trainer >> Train your class spells
    .target Branstock Khalder
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Turn in Simple Rune << Dwarf
    .turnin 3112 >> Turn in Simple Memorandum << Gnome
    .trainer >> Train your class spells
    .target Thran Khorman
step << Warrior
    #xprate >1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >> Turn in The Lost Rune << Dwarf
    .turnin 77656 >> Turn in The Lost Rune << Gnome
    .trainer >> Train your class spells
    .target Thran Khorman





----End of >1.59x training section----
----Start of <1.59x training section----





step << Mage
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .turnin 3114 >> Turn in Glyphic Memorandum << Gnome
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Marryk Nurribit
step << Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .turnin 3114 >> Turn in Glyphic Memorandum << Gnome
    .accept 77667 >> Accept Spell Research << Gnome
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #completewith next
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Gnome Mage
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .turnin 77667 >> Turn in Spell Research
    .target Marryk Nurribit
step << Gnome Mage
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equip the|r |T132961:0|t[Tattered Cloth Gloves]
    .use 711
    .train 401760,3
step << Gnome Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132961:0|t[Tattered Cloth Gloves] with|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .train 401760,3
step << Rogue
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Turn in Encrypted Memorandum << Gnome
    .turnin 3109 >> Turn in Encrypted Rune << Dwarf
    .train 1784 >>Train |T132320:0|t[Stealth]
    .target Solm Hargrin
step << Rogue
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 77658 >> Turn in Thrice Stolen << Dwarf
    .turnin 77659 >> Turn in Thrice Stolen << Gnome
    .target Solm Hargrin
step << Priest
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Train|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_and|r |T135929:0|t[Lesser Heal] (Rank 2) |cRXP_WARN_as you'll need them for a class quest soon|r << Dwarf
    .turnin 3110 >> Turn in Hallowed Rune << Dwarf
    .accept 5626 >> Accept In Favor of the Light << Dwarf
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 2052 >> Train |T135929:0|t[Lesser Heal] (Rank 2) << Dwarf
    .trainer >> Train your class spells
    .target Branstock Khalder
step << Priest
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .target Branstock Khalder
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Turn in Simple Rune << Dwarf
    .turnin 3112 >> Turn in Simple Memorandum << Gnome
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Thran Khorman
step << Warrior
    #xprate <1.59
    #season 2
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 77655 >> Turn in The Lost Rune << Dwarf
    .turnin 77656 >> Turn in The Lost Rune << Gnome
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Thran Khorman




----End of <1.59x training section----





step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Exit Anvilmar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #xprate <1.1
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Turn in A New Threat
    .target Balir Frosthammer
step << Priest/Mage
#season 0,1
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 5|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
    .xp >8,1
step << !Paladin !Warlock !Hunter
    #softcore
    #label Stolen
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
    .target Nori Pridedrift
step << Mage
    #completewith next
    .hs >> Use your Hearthstone and head back to Anvilmar
step << Mage
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .train 143 >> Train |T135812:0|t[Fireball] (Rank2)
    .train 2136 >> Train |T135807:0|t[Fire Blast]
    .target Marryk Nurribit
step << Dwarf Paladin/Dwarf Hunter/Mage
    #season 2
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar
step << Mage
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy some more|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
step << Dwarf Paladin
    #season 2
    #optional
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r
    .turnin 77657 >> Turn in Relics of the Light
    .target Bromos Grummner
    .isQuestComplete 77657
    .equip 10 --Show step if you don't have gloves
step << Dwarf Hunter
    #season 2
    #optional
    .goto Dun Morogh,29.175,67.455
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 77660 >> Turn in Trek Through the Caves
    .target Thorgas Grimson
    .isQuestComplete 77660
    .equip 10 --Show step if you don't have gloves
step << Dwarf Paladin/Dwarf Hunter
    #season 2
    #optional
    #completewith ColdridgePass
    .abandon 77657 >> Abandon Relics of the Light as you already have a pair of |T132938:0|t[Gloves] equipped << Paladin
    .abandon 77660 >> Abandon Trek Through the Caves as you already have a pair of |T132952:0|t[Gloves] equipped << Hunter
step
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
    #label ColdridgePass
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Travel through Coldridge Pass
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#season 2
#classic
#version 1
<< Alliance --!Hunter
#group RestedXP Alliance 1-20
#name 6-11 Dun Morogh SoD
#displayname 7-12 Dun Morogh
#next 12-13 Dun Morogh SoD
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Kill |cRXP_ENEMY_Crag Boars|r as you travel towards Kharanos. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Save all the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you get for Stocking Jetsteam and then for leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_later|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Turn in Senir's Observations
    .accept 287 >> Accept Frostmane Hold--2.5x xp, should be lvl7 here
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Train your class spells
    .target Gimrizz Shadowcog
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .accept 384 >> Accept Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Enter the Thunderbrew Distillery
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160,1 >> Turn in Supplies to Tannok << Warrior/Rogue
    .turnin 2160,2 >> Turn in Supplies to Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Buy the|r |T135641:0|t[Balanced Throwing Daggers]
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equip the|r |T135641:0|t[Balanced Throwing Daggers]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Delete the |T135426:0|t[Small Throwing Knives] from your bags, as they're no longer needed
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r inside in the backroom
    .trainer >> Train your class spells
    .train 921 >> Make sure to train |T133644:0|t|cRXP_PICK_Pick Pocket|r, you'll need that for a rune later
    .target Hogral Bakkan
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r inside upstairs
    .trainer >> Train your class spells
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r inside upstairs
    .trainer >> Train your class spells
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r inside
    .accept 5625 >> Accept Garments of the Light
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>Cast |T135929:0|t[Lesser Heal] (Rank 2) and then |T135987:0|t[Power Word: Fortitude] on |cRXP_FRIENDLY_Mountaineer Dolf|r outside
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r inside
    .turnin 5625 >> Turn in Garments of the Light
    .trainer >> Train your class spells
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .vendor >> |cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_as you can afford|r << Mage
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r
    >>Buy a |T132800:0|t[|cRXP_LOOT_Rhapsody Malt|r] from him
    .collect 2894,1 --Rhapsody Malt (1)
    .itemcount 2886,6 --Crag Boar Ribs (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r inside
    .trainer >> Train your class spells
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Enter the Blacksmith building
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy a|r |T132401:0|t[Large Axe]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equip the|r |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Stiletto]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy a|r |T133053:0|t[Wooden Mallet]
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
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire|r
    >>|cRXP_WARN_This will allow you to make|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_which increase your melee damage by 2|r << Warrior/Rogue
    >>|cRXP_WARN_This will allow you to make|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_which increase your melee damage by 2|r << Paladin
    >>|cRXP_WARN_If you don't want to do this, skip this step|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Accept Tools for Steelgrill
    .target Tharek Blackstone
step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Get onto the roof of the Kharanos Inn, then jump on top of the massive keg. Follow the arrow|r
    >>Open the |cRXP_PICK_Rusty Lockbox|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r] |cRXP_WARN_to train|r |T236280:0|t[Slaughter from the Shadows]
    .use 203993
    .itemcount 203993,1
step
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #label StartStocking
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Don't kill any |cRXP_ENEMY_Young Black Bears|r en-route|r
    .accept 317 >> Accept Stocking Jetsteam
    .target Pilot Bellowfiz
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .accept 313 >> Accept The Grizzled Den
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r and |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Turn in Tools for Steelgrill
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Accept Ammo for Rumbleshot
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yarr Hammerstone|r inside downstairs
    >>|cRXP_WARN_If you can't afford it, skip this step|r
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >> |cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]
    .usespell 2580
    .train 2575,3 --Mining
step << Hunter
    #season 2
    #sticky
    #label pigmeat
    >>Kill |cRXP_ENEMY_Boars|r. Loot them for |T134026:0|t[Dun Morogh Pig Meat]
    .collect 208192,1
    .mob Crag Boar
    .mob Elder Crag Boar
    .mob Large Crag Boar
    .mob Scarred Crag Boar
    .train 425762,1
step
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>Kill |cRXP_ENEMY_Young Black Bears|r. Loot them for their |cRXP_LOOT_Thick Bear Fur|r
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r. Loot them for their |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Large Crag Boar
    .mob Crag Boar
step
    #optional
    #completewith EvershineEnd
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
    .target Pilot Bellowfiz
step << Mage
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Enter the Thunderbrew Distillery
step << Mage
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .vendor 1247 >> |cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him as you can afford|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step << Warlock
    .xp 8
    --should be 8.5 here with 2.5x
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Train your class spells
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Firebolt (Rank 2)] |cRXP_BUY_if you can afford it. If not you can buy it later|r
    .target Gimrizz Shadowcog
    .money <0.100
step << Priest
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
    --410935
step << Priest !NightElf
    #season 2
    #completewith end
    .train 402852 >> |cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs by typing /pray next to an Altar of Light at the Stormwind Cathedral, Loch Modan or the Mystic Ward in Ironforge|r
    >>|cRXP_WARN_The |T136057:0|t|cRXP_PICK_Meidtation on Elune|r buff has to come from another priest player, by using the /pray emote on you while you are kneeling down with /kneel, if you see another priest with another meditation buff, ask them for it|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Mage
    #season 2
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r
    .collect 203752,1
    .mob Frostmane Seer
    .train 401768,1
step << Mage
    #completewith end
    #season 2
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r
    .train 401768 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF]|r |cRXP_WARN_to train|r |T135820:0|t[Living Flame]
    .use 203752
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from him|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yarr Hammerstone|r inside downstairs
    .train 2575 >>Train |T134708:0|t[Mining]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Enter the Thunderbrew Distillery
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside
    .turnin 384 >> Turn in Beer Blasted Boar Ribs
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Enter the Blacksmith building
step << Gnome Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
#optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy a|r |T132401:0|t[Large Axe]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
#optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Stiletto]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
#optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
#optional
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Buy a|r |T133053:0|t[Wooden Mallet]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
#optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    #optional
    .xp 6 >> Grind to level 6
step << Hunter
    #season 2
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .train 1130 >> Train |T132212:0|t[Hunter's Mark]
    >>|cRXP_WARN_If you don't have enough money, farm mobs around Kharanos. You'll need this spell for a rune later|r
    .target Grif Wildheart

step
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Travel to The Grizzled Den
    .isOnQuest 313
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Kill |cRXP_ENEMY_Wendigos|r and |cRXP_ENEMY_Young Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Open the |cRXP_PICK_Ammo Crate|r. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Travel toward |cRXP_FRIENDLY_Hegnar Rumbleshot|r
step << Hunter
    #optional
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    >>|cRXP_BUY_Buy a|r |T135611:0|t[Ornate Blunderbuss]|cRXP_BUY_from him|r
    >>|cRXP_WARN_If you can't afford it, skip this step|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .target Hegnar Rumbleshot
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r. Loot it for |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Wait until |cRXP_ENEMY_Old Icebeard|r patrols out of the Cave. Once he patrols out of the Cave you can enter and loot|r |cRXP_PICK_MacGrann's Meat Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Click here for video reference|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,36.4,52.8
    >>Try to finish off looting |T133972:0|t[|cRXP_LOOT_Crag Boar Ribs|r] from the boars outside the cave. |cRXP_WARN_Skip this step if there's none there|r
    >>|cRXP_WARN_Make sure you have looted a |T134026:0|t[Dun Morogh Pig Meat]. |cRXP_WARN_You will need it to get a rune now|r << Hunter
    .collect 2886,6 --Crag Boar Rib (6)
    .collect 208192,1 << Hunter --Dun Morogh Pig Meat (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step << Hunter
    #season 2
    #requires pigmeat
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Use |T134026:0|t[Dun Morogh Pig Meat] near the corpse inside the cave to summon |cRXP_ENEMY_Jorul|r
    >>Kill |cRXP_ENEMY_Jorul|r. Loot him for the |T134419:0|t|cRXP_LOOT_[Rune of Flanking]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Flanking]|r |cRXP_WARN_to train|r |T132175:0|t[Flanking Strike]
    .use 205979
    .itemcount 205979,1
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >> Travel to Brewnall Village
step << Mage
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Buy up to 20|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r
    .turnin 318 >> Turn in Evershine
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
step << Hunter
    #season 2
    #sticky
    #label Marksmanship1
    .goto Dun Morogh,28.852,49.859
    >>Cast |T132212:0|t[Hunter's Mark] on the |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Razormane Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step << Hunter
    #season 2
    #sticky
    #label Marksmanship2
    #requires Marksmanship1
    .cast 402265 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .train 410113,1
step << Priest
    #season 2
    >>Kill |cRXP_ENEMY_Leper Gnomes|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Kill |cRXP_ENEMY_Leper Gnomes|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205940
step << Rogue
    #season 2
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Leper Gnomes|r. Loot them for the |T134269:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step
    #optional
    #requires ForceFavorRibYes
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Run up the side of the cave entrance. Jump down into Frostmane Hold
    .isOnQuest 287
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step << Rogue
    #season 2
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    #completewith ShimmerweedCollect
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Frostmane Trolls|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Right Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Seer
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .train 398196,1
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Drop down into the small dead-end room of the cave|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #completewith dm10end
    .deathskip >> Die and respawn at Kharanos
    .subzoneskip 131
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_and a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .itemcount 2886,6 --Crag Boar Rib (6)
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew|r outside
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #label dm10end
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports
    .target Senir Whitebeard
step << Hunter
    #label dm10end
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Train your class spells
    .accept 6064 >>Accept Taming the Beast << Dwarf
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Large Crag Boar|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .use 15911
    .mob Large Crag Boar
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Turn in Taming the Beast
    .accept 6084 >>Accept Taming the Beast
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Snow Leopard|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .use 15913
    .mob Snow Leopard
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Turn in Taming the Beast
    .accept 6085 >>Accept Taming the Beast
    .target Grif Wildheart
step << Dwarf Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Use the|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Ice Claw Bear|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .use 15908
    .mob Ice Claw Bear
step << Dwarf Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Turn in Taming the Beast
    .accept 6086 >>Accept Training the Beast
    .target Grif Wildheart
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hogral Bakkan|r inside in the backroom
    >>|cRXP_WARN_Only train|r |T132147:0|t[Dual Wield] |cRXP_WARN_and|r |T132307:0|t[Sprint]|cRXP_WARN_. Do not train other spells to save your money for later|r
    .train 674 >> Train |T132147:0|t[Dual Wield]
    .train 2983 >> Train |T132307:0|t[Sprint]
    .accept 2218 >> Accept Road to Salvation
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azar Stronghammer|r inside upstairs
    .trainer >> Train your class spells
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Granis Swiftaxe|r inside
    .trainer >> Train your class spells
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magis Sparkmantle|r inside upstairs
    .train 118 >> Train |T136071:0|t[Polymorph]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol|r inside
    .trainer >> Train your class spells
    .target Maxan Anvol
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Train |T135966:0|t[First Aid]
    .target Thamner Pol
    .money <0.01
step
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear|r
    .turnin 313 >> Turn in The Grizzled Den
    .target Pilot Stonegear
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Grind until you have 10s30c worth of vendorables|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Travel to Ironforge
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r or |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> If you are in a party or have someone to help you kill |cRXP_ENEMY_Vagash|r now, train 2h Maces from |cRXP_FRIENDLY_Buliwyf Stonehand|r, otherwise train Thrown from |cRXP_FRIENDLY_Bixi Wobblebonk|r. If you aren't sure which to train, just train Thrown
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r downstairs
    >>|cRXP_BUY_Buy the|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_from her|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r downstairs
    >>|cRXP_BUY_Buy the|r |T135641:0|t[Balanced Throwing Daggers] |cRXP_BUY_from her|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equip the|r |T135425:0|t[Keen Throwing Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equip the|r |T135641:0|t[Balanced Throwing Daggers]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0

]])
