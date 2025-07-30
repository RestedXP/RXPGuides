
RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Alliance 1-20
#name 12-13 Dun Morogh SoD
#displayname 12-13 Dun Morogh
#next 13-16 Loch Modan SoD
#defaultfor !NightElf

step << Warrior
    #season 2
    >>|cRXP_WARN_Look for the|r |cRXP_FRIENDLY_Wandering Swordsman|r. |cRXP_WARN_He can be anywhere in the small area marked on your map|r
    >>Find him and challenge him to a duel. After beating him he will spanw a small chest which will award you with the rune of |T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    .goto Dun Morogh,52.6,45.0
    .goto Dun Morogh,52.4,47.4,0
    .goto Dun Morogh,52.6,48.8,0
    .goto Dun Morogh,53.6,47.6,0
    .goto Dun Morogh,53.0,46.2,0
    .goto Dun Morogh,55.0,46.6,0
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    #optional
    #completewith next
    .train 403474 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Blood Frenzy|r] |cRXP_WARN_to train|r |T136012:0|t[Blood Frenzy]
    .use 204441
    .itemcount 204441,1
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
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_CLICK HERE If you're struggling|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step << Warrior/Mage
    #season 2
    #sticky
    #optional
    #label rune1
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for the |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r << Warrior
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for the |T134939:0|t|cRXP_LOOT_[Spell Notes: RING SEFF OSTROF]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Kite him to the guard south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_Watch the video below before you attempt to kill |cRXP_ENEMY_Vagash|r. It can be soloed on any class|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Click here for video reference|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Click here for video reference|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Warrior
    #season 2
    #optional
    #requires rune1
    .train 403476 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r |cRXP_WARN_to train|r |T136048:0|t[Furious Thunder]
    .use 204809
    .itemcount 204809,1
step << Mage
    #optional
    #season 2
    #requires rune1
    #completewith GolBolarQuarry
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: RING SEFF OSTROF]|r |cRXP_WARN_to train|r |T236227:0|t[Fingers of Frost]
    .use 203753
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
    .target Rudra Amberstill
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >> Travel to Gol'Bolar Quarry
    .subzoneskip 134
step << !Hunter
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Buy up to 10|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him if needed|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Buy up to 5|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_and|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him if needed|r << !Warrior !Rogue
    .target Kazan Mogosh
--XX Mud slappers instead
step << Human Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dank Drizzlecut|r
    .goto Dun Morogh,69.3,55.5
    .train 2581 >>Train Mining, cast Find Minerals
    .target Dank Drizzlecut
    .skill mining,1
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r and |cRXP_FRIENDLY_Foreman Stonebrow|r
    .accept 433 >> Accept The Public Servant
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Accept Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
    .xp >12,1,QuarryEnd
step << !Human Rogue
    #season 2
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Rockjaw Skullthumpers|r and |cRXP_ENEMY_Rockjaw Bonesnappers|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Top-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Dark Iron Spies|r. Loot them for |T134331:0|t[Blackrat's Note] and the |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208205,1 --Blackrat's Note (1)
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 400094,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Dark Iron Spies|r. Loot them for |T134331:0|t[Blackrat's Note]
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208205,1
    .mob Dark Iron Spy
    .train 400094,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Pick Pocket] |cRXP_ENEMY_Dark Iron Spies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Left Map Piece]|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step <<< !Human Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Use any of the|r |T134327:0|t[|cRXP_LOOT_Map Pieces]|r |cRXP_WARN_to combine them into the|r |T134269:0|t[|cRXP_LOOT_Dun Morogh Treasure Map|r]
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << !Human Rogue
    #season 2
    #softcore
    #optional
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Use the|r |T134269:0|t[|cRXP_LOOT_Dun Morogh Treasure Map|r] |cRXP_WARN_under the small bridge. This will cause a |cRXP_PICK_Buried Treasure|r to pop up|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    >>Open the |cRXP_PICK_Buried Treasure|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << !Human Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r] |cRXP_WARN_to train|r |T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Talk to |cRXP_FRIENDLY_Blackrat|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << !Human Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
step << Dwarf Paladin
    #sticky
    #label PalaCloth
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r and |cRXP_ENEMY_Rockjaw Bonesnappers|r. Loot them for their |T132889:0|t[Linen Cloth] << Dwarf Paladin
    >>|cRXP_WARN_Save the|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for a quest later|r << Dwarf Paladin
    .collect 2589,10,1648,1 --Linen Cloth (10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r in or outside the mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Enter the Gol'Bolar Quarry Mine
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the mine
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step << Mage
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_Look for other Mages or Warlocks near the |cRXP_ENEMY_Frozen Trogg|r or in General Chat (Type /1 into chat). You can still solo this if no one is there|r
    >>|cRXP_WARN_Cast|r |T135812:0|t[Fireball] |cRXP_WARN_on the |cRXP_ENEMY_Frozen Trogg|r to apply a stack of|r |T135805:0|t[Applying Heat]|cRXP_WARN_. Apply 5 stacks at once together to kill the |cRXP_ENEMY_Frozen Trogg|r. Loot it for the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r
    >>|cRXP_WARN_If there is no one there to help you, walk into meele range of the Trogg and use|r |T135820:0|t[Living Flame] |cRXP_WARN_on him. Stay in meele range to keep yourself in combat and keep using|r |T135820:0|t[Living Flame] |cRXP_WARN_on cooldown. It will kill the trogg after 5-6 casts.|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step << Mage
    .train 401759 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Spell Notes: Burnout]|r |cRXP_WARN_to learn|r |T132686:0|t[Engrave Chest - Burnout]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
step << Dwarf Paladin
    #optional
    #label RockjawEnd
    #requires PalaCloth
step
    #label RockjawEnd << !Paladin
    #requires Skullthumpers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Stonebrow|r and |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Turn in The Public Servant
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    #optional
    #completewith next
    #label QuarryEnd
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >> Travel toward |cRXP_FRIENDLY_Pilot Hammerfoot|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step << Warrior/Mage
    #season 2
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for the |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r << Warrior
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for the |T134939:0|t|cRXP_LOOT_[Spell Notes: RING SEFF OSTROF]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto Dun Morogh,78.97,37.14
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for his |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Rune of Furious Thunder]|r |cRXP_WARN_to train|r |T136048:0|t[Furious Thunder]
    .use 204809
    .itemcount 204809,1
step << Mage
    #season 2
    #completewith next
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: RING SEFF OSTROF]|r |cRXP_WARN_to train|r |T236227:0|t[Fingers of Frost]
    .use 203753
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    >>|cRXP_WARN_Choose the|r |T135641:0|t[Craftsman's Dagger]|cRXP_WARN_. Save it for later|r << Rogue
    .turnin 417 >> Turn in A Pilot's Revenge << !Rogue
    .turnin 417,1 >> Turn in A Pilot's Revenge << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    >>|cRXP_WARN_Choose the|r |T135641:0|t[Craftsman's Dagger]
    .turnin 417,1 >> Turn in A Pilot's Revenge
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_Equip the|r |T135641:0|t[Craftsman's Dagger] |cRXP_WARN_in your mainhand|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #label enterloch
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >>Go through the tunnel to Loch Modan
    .zoneskip Loch Modan
step
    #optional
    #completewith lochstart1
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    >>Save any |cRXP_LOOT_Crisp Spider Meat|r you find for a quest later
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Save any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_to use for leveling|r |T133971:0|t[Cooking] |cRXP_WARN_later|r
step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_Look for |cRXP_FRIENDLY_Greishan Ironstove|r patroling on the road through Loch Modan. His patrol path is marked on your map|r
    >>|cRXP_BUY_Buy a|r |T237359:0|t[Malevolent Pie] |cRXP_BUY_from him|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_Use the|r |T237359:0|t[Malevolent Pie] |cRXP_WARN_to eat it. Once the|r |T132108:0|t[Hellish Indigestion] |cRXP_WARN_debuff drops off you, you will receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r] |cRXP_WARN_to train|r |T136168:0|t[Master Channeler]
    .use 208750
    .itemcount 208750,1
step << Dwarf Paladin
    .xp 12
step
    #label lochstart1
    #optional
    .goto 1432,34.405,48.276
    .subzone 144 >> Travel to Thelsamar
step
    #completewith lochpatrol3
    .abandon 1338 >> Abandon the quest |cRXP_FRIENDLY_Stormpike's Task|r if you have it, otherwise you won't be able to accept a quest later
step
    #label lochpatrol1
    #completewith lochpatrol2
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Enter the Stoutlager Inn
    .subzoneskip 2101
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r inside
    .accept 418 >> Accept Thelsamar Blood Sausages
    .target Vidra Hearthstove
step << Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r inside
    .vendor >> |cRXP_BUY_Vendor trash, buy up to four|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_if you still need|r
    .target Yanni Stoutheart 
step << Dwarf/Gnome
    #label ThelsaHS
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r inside
    .home >> Set your Hearthstone to Thelsamar
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
    .target Brock Stoneseeker
step
    #optional
    #label lochpatrol2
step
    #label lochpatrol3
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

step << Dwarf/Gnome
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
    .target Thorgrum Borrelson
step << Hunter
    #sticky
	.goto Loch Modan,33.9,54.0
    .goto Loch Modan,36.6,53.2,0
    .goto Loch Modan,30.0,53.5,0
    .train 172551 >> Tame a Forest Lurker 
    >>|cRXP_WARN_It's the highest DPS pet easily available to dwarven hunters, you will eventually aim to replace it with a raptor from Wetlands|r
    .unitscan Forest Lurker
step << Human
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Get the Thelsamar Flight Path
step << Dwarf/Gnome
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Priest Dwarf
    #season 2
    #completewith end
    .train 402852 >> |cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs by typing /pray next to an Altar of Light at the Stormwind Cathedral, Loch Modan or the Mystic Ward in Ironforge|r
    >>|cRXP_WARN_The |T136057:0|t|cRXP_PICK_Meidtation on Elune|r buff has to come from another priest player, by using the /pray emote on you while you are kneeling down with /kneel, if you see another priest with another meditation buff, ask them for it|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Rogue !Human
    #optional
    #completewith next
    .goto 1455,22.283,79.620,30,0
    .goto 1455,27.315,82.828,30,0
    .goto 1455,38.913,71.447,30,0
    .goto 1455,46.624,53.683,30,0
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Travel toward |cRXP_FRIENDLY_Hulfdan Blackbeard|r inside downstairs
step << Rogue !Human
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hulfdan Blackbeard|r downstairs
    .turnin 2218 >> Turn in Road to Salvation
    .target Hulfdan Blackbeard
step << Rogue !Human
    #season 2
    .goto Ironforge,51.913,13.383
    >>Open the |cRXP_PICK_Dusty Chest|r outside. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_Doing this will spawn two level 10 |cRXP_ENEMY_Cut-throat Muggers|r which will attack you|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
    .zoneskip Ironforge,1
step << Rogue !Human
    #season 2
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1
---------pt1
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>Travel toward |cRXP_FRIENDLY_Senator Barin Redstone|r
step << Dwarf/Gnome
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
    .target Senator Barin Redstone
step << !Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    >>|cRXP_BUY_Buy a|r |135640:0|t[Jambyia] |cRXP_BUY_from her|r
    .collect 2207,1 --Jambyia
    .target Brenwyn Wintersteel
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.0
step << Dwarf/Gnome
    #label Ride
    .goto Ironforge,51.521,26.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r inside
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
    .target Golnir Bouldertoe
step << Dwarf/Gnome
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Do NOT fly anywhere|r
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
    .target Gryth Thurden
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,44.403,49.020,20,0
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,24.2,6.8,12 >>Travel toward |cRXP_FRIENDLY_Brandur Ironhammer|r
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 2999 >>Accept Tome of Divinity
    .trainer >> Train your class spells
    .target Brandur Ironhammer
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Travel toward |cRXP_FRIENDLY_Tiza Battleforge|r upstairs
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r upstairs
    .turnin 2999 >>Turn in Tome of Divinity
    .accept 1645 >>Accept The Tome of Divinity
    .turnin 1645 >>Turn in The Tome of Divinity
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Use the |T133739:0|t|cRXP_LOOT_[The Tome of Divinity]|r to start the quest|r
    .accept 1646 >>Accept The Tome of Divinity
    .use 6916
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r upstairs
    .turnin 1646 >>Turn in The Tome of Divinity
    .accept 1647 >>Accept The Tome of Divinity
    .target Tiza Battleforge
step << Dwarf Paladin
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrols along the outer ring of Ironforge between just past the Stonefire Tavern and just past the Visitor's Center|r
    .turnin 1647 >>Turn in The Tome of Divinity
    .accept 1648 >>Accept The Tome of Divinity
    .turnin 1648 >>Turn in The Tome of Divinity
    --.accept 1778 >>Accept The Tome of Divinity
    .unitscan John Turner
step << Gnome Mage
    .goto Ironforge,27.0,8.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bink|r
    .trainer >> Train your class spells
    .target Bink   
step << Gnome Mage
    #season 2
    .goto Ironforge,19.197,56.094
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barim Jurgenstaad|r
    >>|cRXP_BUY_Buy at least 2|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from him|r
    >>|cRXP_WARN_These are needed for learning runes|r
    .collect 211779,2
    .target Barim Jurgenstaad
step << Dwarf/Gnome
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for a faster turn in at Loch Modan shortly:|r
    >>|T134342:0|t[Boar Intestines]
    >>|T134027:0|t[Bear Meat]
    >>|T134437:0|t[Spider Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r and |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Train Thrown and 2h Maces if you didn't earlier
    .train 2567 >> Train Thrown
    .goto Ironforge,62.237,89.628
    .train 199 >> Train 2h Maces
    .goto Ironforge,61.177,89.508
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior !Human
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r downstairs
    >>|cRXP_BUY_Buy the|r |T135425:0|t[Keen Throwing Knives] |cRXP_BUY_from her|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior !Human
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equip the|r |T135425:0|t[Keen Throwing Knives]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Travel toward |cRXP_FRIENDLY_Bruuk Barleybeard|r inside the Inn
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r inside
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Bruart|r to start a fight
    >>Defeat |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and use|r |T133688:0|t[Bandages] |cRXP_WARN_if you have them/if needed|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Defeat |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and use|r |T133688:0|t[Bandages] |cRXP_WARN_if you have them/if needed|r
    >>|cRXP_WARN_After defeating |cRXP_ENEMY_Bruart|r:|r
    >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r again to receive the |T134419:0|t[Rune of Frenzied Assault]
    >>|cRXP_WARN_If he doesn't give you the|r |T134419:0|t[Rune of Frenzied Assault]|cRXP_WARN_, you may need to fight |cRXP_ENEMY_Bruart|r again|r
    >>|cRXP_WARN_NOTE: This can be difficult to solo. You may need to look for help, otherwise you can do this again later in the guide|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Frenzied Assault] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Frenzied Assault]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Engrave your|r |T134596:0|t|cRXP_LOOT_[Pants]|r |cRXP_WARN_with|r |T134596:0|t[Engrave Pants - Frenzied Assault]
    .train 425447,3
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto Ironforge,70.86,85.83,15 >>Travel toward |cRXP_FRIENDLY_Belia Thundergranite|r
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .turnin 6086 >> Turn in Training the Beast
    .target Belia Thundergranite
step << Paladin Dwarf
    #season 2
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Travel toward |cRXP_FRIENDLY_Bruuk Barleybeard|r inside the Inn
    .train 425621,1
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r inside
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin Dwarf
    #season 2
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
step << Paladin Dwarf
    #season 2
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
step << Paladin Dwarf
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Rebuke] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Rebuke]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin Dwarf
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Engrave your|r |T134596:0|t|cRXP_LOOT_[Pants]|r with|r |T134596:0|t[Engrave Pants - Rebuke]
    >>|cRXP_WARN_Remember to put|r |T134919:0|t[Rebuke] |cRXP_WARN_onto your action bars|r
    .train 425621,3
-- step << Dwarf/Gnome
--     #label Ride
--     .goto Ironforge,51.521,26.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r inside
--     .fly Loch >> Fly to Loch modan
--     .target Golnir Bouldertoe
step << Dwarf/Gnome
    #label DRT
    #completewith TramEnd
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Enter the Deeprun Tram
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform in the Deeprun Tram
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
step << Dwarf/Gnome
    >>Use the |T133942:0|t[Rat Catcher's Flute] on |cRXP_FRIENDLY_Deeprun Rats|r in the Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform in the Deeprun Tram
    >>He will roleplay for a couple seconds after turning in the first quest. |cRXP_WARN_Skip the follow-up if waiting would make you miss the tram|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >> Accept Me Brother, Nipsy
    .target Monty
step << Dwarf/Gnome
    #label TramEnd
    >>|cRXP_WARN_Take the Deeprun Tram to the Stormwind side|r
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the Tram to Stormwind City if needed|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_You will need your|r |T135966:0|t[First Aid] |cRXP_WARN_to be 80 for a quest at level 24|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nipsy|r on the middle platform on the Stormwind side of the Deeprun Tram
    .turnin 6662 >> Turn in Me Brother, Nipsy
    .isOnQuest 6662
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step << Dwarf/Gnome
    #optional
    #completewith Order
    .zone Stormwind City >> Enter Stormwind
    .isOnQuest 1338
step << !Human
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore
step << Dwarf Priest
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Priest Dwarf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .trainer >> Train your class spells
    .turnin 5634 >> Turn in Desperate Prayer
    .target High Priestess Laurena
step << Priest Dwarf
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .train 13908 >> Train Desperate Prayer
    .target High Priestess Laurena
step << Warrior !Human
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa Corbin|r
    .trainer >> Train your class spells
    .accept 1638 >> Accept A Warrior's Training
    .target Ilsa Corbin
step << Warrior !Human
    #optional
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Enter the Tavern
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Turn in A Warrior's Training
    .accept 1639 >> Accept Bartleby the Drunk
    .target Harry Burlguard
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Turn in Bartleby the Drunk
    .accept 1640 >> Accept Beat Bartleby
    .target Bartleby
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>Defeat |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >> Turn in Beat Bartleby
    .accept 1665 >> Accept Bartleby's Mug
    .target Bartleby
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Turn in Bartleby's Mug
    .target Harry Burlguard
step << Warlock !Human
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock !Human
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock !Human
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1688 >> Accept Surena Caledon
    .target Gakin the Darkbinder
step << Warlock !Human
    #softcore
    .deathskip >> Die and respawn at the Spirit Healer by using |T136126:0|t[Life Tap] and standing on the Bonfire next to you
    .target Spirit Healer
    .isOnQuest 1688
step << Warlock !Human
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Heat to Elwynn Forest
    .isOnQuest 1688
step << Warlock !Human
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Kill |cRXP_ENEMY_Surena Caledon|r. Loot her for her |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Focus on killing |cRXP_ENEMY_Surena Caledon|r very quickly|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_on |cRXP_ENEMY_Morgan the Collector|r continously|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock !Human
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Travel to Redridge Mountains
step << Warlock !Human
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
step << Warlock !Human
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    >>|cRXP_WARN_Be careful of high level mobs en route|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
step << Warlock !Human
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step << !Human
    .hs >> Hearth to Loch Modan
    .cooldown item,6948,>0,1 << !Warlock
step << !Warlock !Human
    #label end
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Fly to Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>Buy the |T133745:0|t|cRXP_LOOT_[Testament of Martyrdom]|r from him, use it to train |T135961:0|t[Seal of Martyrdom] << Paladin
    >>Buy the |T133739:0|t|cRXP_LOOT_[Treatise on the Heart of the Lion]|r from him, use it to train |T132185:0|t[Heart of the Lion] << Hunter
    .collect 226401,1 << Hunter
    .collect 226398,1 << Paladin
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>If you have a lot of spare money you can buy the other two Testaments from milton for later use << Paladin
    >>If you have a lot of spare money buy the |T133739:0|t|cRXP_LOOT_[Treatise on Aspect of the Viper]|r from him as well << Hunter
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .collect 216770,1 << Hunter -- Treatise on Aspect of the Viper
    .money <5
step << !Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yanni Stoutheart|r inside
    .vendor >> |cRXP_BUY_Vendor trash, buy up to four|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_if you still need|r
    .target Yanni Stoutheart 
]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Alliance 1-20
#name 13-16 Loch Modan SoD
#displayname 13-16 Loch Modan
#next 16-17 Westfall SoD
#defaultfor !NightElf

step << Hunter
#optional
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vrok Blunderblast|r
    >>|cRXP_BUY_Buy a|r |T135613:0|t[Hunter's Boomstick] |cRXP_BUY_if you can afford it|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Turn in Return to Brock
    .target Brock Stoneseeker
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Enter the Bunker. Go to the top floor
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss

step
#completewith next
    .goto Loch Modan,30.0,68.4,0
    .goto Loch Modan,30.0,68.4,30,0 >> Head to Stonesplinter Valley
    .subzoneskip 923
step << Warrior
    #season 2
    #sticky
    #label Geode
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .waypoint Loch Modan,27.01,48.74,50,0
    .waypoint Loch Modan,27.68,56.83,50,0
    .waypoint Loch Modan,33.35,71.59,50,0
    .waypoint Loch Modan,31.54,74.96,50,0
    .waypoint Loch Modan,33.88,76.58,50,0
    >>Kill |cRXP_ENEMY_Troggs|r. Loot them for a |cRXP_LOOT_Skull-Shaped Geode|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    #season 2
    #sticky
    #label geode2
    #requires Geode
    .goto Loch Modan,33.2,73.8,0,0
    >>Attack a |cRXP_ENEMY_Stonesplinter Skullthumper|r
    >>|cRXP_WARN_During combat it'll hit you, turning the |cRXP_LOOT_Skull-Shaped Geode|r into a|r |T236489:0|t[|cRXP_LOOT_Cracked Skull-Shaped Geode|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8,0,0
    #season 2
    #sticky
    #requires geode2
    .use 208848 >>|cRXP_WARN_Use the|r |T236489:0|t[|cRXP_LOOT_Cracked Skull-Shaped Geode|r] |cRXP_WARN_to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Mage
    #sticky
    #completewith next
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stonesplinter Scouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 14-20 damage)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Mage
    #season 2
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>Kill |cRXP_ENEMY_Stonesplinter Seers|r and loot them for |cRXP_LOOT_|T134939:0|t[Chewed Spell Notes]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step << Mage
    #season 2
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Chewed Spell Notes|r] to learn |T236220:0|t[Living Bomb]
    .train 415936,1
    .use 208854
step
#loop
    .goto Loch Modan,34.7,71.6,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stonesplinter Scouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 14-20 damage)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #requires geode2 << Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the bunker
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step << !Human
    #completewith Algaz
    .hs >> Hearth to Thelsamar
    .cooldown item,6948,>0
    .subzoneskip 924,1--valley of kings

step
    #optional
    #completewith Algaz2
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    >>Save any |cRXP_LOOT_Crisp Spider Meat|r you find for a quest later
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Save any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_to use for leveling |T133971:0|t[Cooking] |cRXP_WARN_later|r
    >>|cRXP_WARN_Don't go out of your way to complete this right now. You'll come back to Loch Modan soon|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Travel to Algaz Station
step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >> Enter the Bunker. Go to the top floor
step
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r inside the bunker
    .turnin -353 >> Turn in Stormpike's Delivery
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .accept 307 >> Accept Filthy Paws
    .target Mountaineer Stormpike
step
    #label Algaz2
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Enter the Silver Stream Mine
step
    .goto Loch Modan,35.93,22.55
    >>Open the |cRXP_PICK_Miners' League Crates|r. Loot them for the |cRXP_LOOT_Miners' Gear|r
    >>|cRXP_WARN_The |cRXP_PICK_Miners' League Crates|r can be found all throughout the Mine|r
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .disablecheckbox
    .complete 307,1 -- Miners' Gear (4)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #completewith RatEar
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Ichor|r
    >>Save any |cRXP_LOOT_Crisp Spider Meat|r you find for a quest later
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 307 >> Turn in Filthy Paws
    .target Mountaineer Stormpike
step << Mage
    #season 2
    #sticky
    #completewith next
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,35.48,16.82,0
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Ears|r
    >>|cRXP_ENEMY_Tunnel Rats|r |cRXP_WARN_can spawn throughout Loch Modan. Check your World Map for their locations|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
    #season 2
    #label Loch1
    .goto Loch Modan,50.7,23.9,200 >>Travel to the island on the northern part of the Loch
    .train 401767,1
step << Mage
    #season 2
    #optional
    #completewith next
    .goto 1432,54.33,26.82,5 >> Enter the tent on the east side of the island
    .train 401767,1
step << Mage
    #season 2
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Open the |cRXP_PICK_Pile of Stolen Books|r inside. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step << Mage
    #season 2
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step << Paladin/Warrior
    #label BuyMace
    #optional
    #completewith RatEar
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Buy the|r |T133476:0|t[Heavy Spiked Mace] |cRXP_BUY_from him (if it's up)|r
    >>|cRXP_WARN_DON'T BUY THE|r |T133053:0|t[Ironwood Maul] |cRXP_WARN_if|r |T133476:0|t[Heavy Spiked Mace] |cRXP_WARN_is not there. You'll get a better weapon in stormwind shortly|r
    >>|cRXP_WARN_If you can't afford this, but you're not far off then grind money from the nearby |cRXP_ENEMY_Tunnel Rats|r until you have enough|r
    >>|cRXP_WARN_Do this quickly as another player may purchase it before you do|r
    >>|cRXP_WARN_If you don't wish to do this, skip this step|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
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
    .mob +Elder Black Bear
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
    .mob +Mountain Boar
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
    .mob +Forest Lurker
step
    #season 2
    .xp 16-4650
step
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step
    #label ratcatching
    #sticky
    #loop
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Kadrell|r
    >>|cRXP_FRIENDLY_Mountaineer Kadrell|r |cRXP_WARN_patrols the road through Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Turn in Rat Catching
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Turn in Thelsamar Blood Sausages
step << Human
    #requires ratcatching
    .hs >> Hearth to Stormwind
step << !Human
    #requires ratcatching
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >> Train your class spells
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Travel toward |cRXP_FRIENDLY_Bruuk Barleybeard|r inside the Inn
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r inside
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Bruart|r to start a fight
    >>Defeat |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and use|r |T133688:0|t[Bandages] |cRXP_WARN_if you have them/if needed|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior !Human
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Defeat |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Be careful as he casts|r |T132939:0|t[Backhand] |cRXP_WARN_(stuns you for 2 seconds)|r
    >>|cRXP_WARN_Kite him upstairs to the balcony, then drop down outside the inn and use|r |T133688:0|t[Bandages] |cRXP_WARN_if you have them/if needed|r
    >>|cRXP_WARN_After defeating |cRXP_ENEMY_Bruart|r:|r
    >>Talk to |cRXP_FRIENDLY_Bruuk Barleybeard|r again to receive the |T134419:0|t[Rune of Frenzied Assault]
    >>|cRXP_WARN_If he doesn't give you the|r |T134419:0|t[Rune of Frenzied Assault]|cRXP_WARN_, you may need to fight |cRXP_ENEMY_Bruart|r again|r
    >>|cRXP_WARN_NOTE: This can be difficult to solo. You may need to look for help, otherwise you can do this again later in the guide|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Frenzied Assault] |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Frenzied Assault]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Engrave your|r |T134596:0|t|cRXP_LOOT_[Pants]|r |cRXP_WARN_with|r |T134596:0|t[Engrave Pants - Frenzied Assault]
    .train 425447,3
step << !Human
    .goto Ironforge,78.00,51.40
    .zone Stormwind City >>Enter the Deeprun Tram and take the Tram to Stormwind
    .isQuestTurnedIn 6662
step << !Human
    .goto Ironforge,78.00,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the Ironforge side of the tram and then |cRXP_FRIENDLY_Nipsy|r on the Stormwind side
    .zone Stormwind City >>Enter the Deeprun Tram and take the Tram to Stormwind
    .accept 6662 >> Accept Me Brother, Nipsy from |cRXP_FRIENDLY_Monty|r before taking the tram
    .turnin 6662 >> Turn in Me Brother, Nipsy to |cRXP_FRIENDLY_Nipsy|r after taking the tram
    .isQuestAvailable 6662
    .target Monty
    .target Nipsy
]])
