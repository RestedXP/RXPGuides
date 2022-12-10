RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Pandaren Starting Zones
#name 2Retail-Panda_The Wandering Isle
#displayname Panda The Wandering Isle
#next RestedXP Alliance 10-60\1A_Elwynn Forest << Alliance
#next RestedXP Horde 10-60\1 BfA Intro << Horde
#defaultfor Pandaren

<<!DK Pandaren

step
    #completewith next
    +Welcome to the Pandaren Starting Zone Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than Exiles Reach. For faster leveling recreate your character and choose Exiles Reach instead.
    *With consumables/heirlooms this route is just as fast
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .accept 30034 >>Accept The Lesson of the Iron Bough << Hunter
    .accept 30027 >>Accept The Lesson of the Iron Bough << Priest/Monk
    .accept 30033 >>Accept The Lesson of the Iron Bough << Mage
    .accept 30037 >>Accept The Lesson of the Iron Bough << Shaman
    .accept 30038 >>Accept The Lesson of the Iron Bough << Warrior
    .accept 30036 >>Accept The Lesson of the Iron Bough << Rogue
	.target Master Shang Xi
step << Hunter
    .goto 378,57.22,19.22
    >>Loot the |cFFDB2EEFWeapon Rack|r for the |T537025:0|t[Trainee's Crossbow]. Equip it
    .collect 73211,1,30034,1 --Trainee's Crossbow (1)
    .complete 30034,1 --1/1 Loot and Equip a Trainee's Crossbow
    .use 73211 --Trainee's Crossbow
step << Mage
    .goto 378,57.22,19.22
    >>Loot the |cFFDB2EEFWeapon Rack|r for the |T537771:0|t[Trainee's Spellblade] and |T654237:0|t[Trainee's Hand Fan]. Equip them
    .collect 76390,1,30033,1 --Trainee's Spellblade (1)
    .collect 76392,1,30033,1 --Trainee's Hand Fan (1)
    .complete 30033,1 --Loot and Equip a Trainee's Spellblade (1)
    .complete 30033,2 --Loot and Equip a Trainee's Hand Fan (1)
    .use 76390 --Trainee's Spellblade
    .use 76392 --Trainee's Hand Fan
step << Monk/Priest
    .goto 378,57.22,19.22
    >>Loot the |cFFDB2EEFWeapon Rack|r for the |T537770:0|t[Trainee's Staff]. Equip it
    .collect 73209,1,30027,1 --Trainee's Staff (1)
    .complete 30027,1 --Loot and Equip a Trainee's Staff
    .use 73209
step << Shaman
    .goto 378,57.22,19.22
    >>Loot the |cFFDB2EEFWeapon Rack|r for the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield]. Equip them
    .collect 76391,1,30037,1,1  --Trainee's Axe (1)
    .collect 73213,1,30037,2,1  --Trainee's Shield (1)
    .complete 30037,1 --Loot and Equip a Trainee's Axe
    .complete 30037,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Warrior
    .goto 378,57.22,19.22
    >>Loot the |cFFDB2EEFWeapon Rack|r for the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield]. Equip them
    .collect 76391,1,30038,1,1  --Trainee's Axe (1)
    .collect 73213,1,30038,2,1  --Trainee's Shield (1)
    .complete 30038,1 --Loot and Equip a Trainee's Axe
    .complete 30038,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Rogue
    .goto 378,57.22,19.22
    >>Loot the |cFFDB2EEFWeapon Rack|r for the |T537767:0|t[Trainee's Daggers]. Equip them
    .collect 73208,1,30036,1,1 --Trainee's Dagger (ID 1)
    .collect 73212,1,30036,1,1 --Trainee's Dagger (ID 2)
    .complete 30036,1 --Loot and Equip a Trainee's Dagger
    .complete 30036,2 --Loot and Equip a Second Trainee's Dagger
    .use 73208 --Trainee's Dagger (ID 1)
    .use 73212 --Trainee's Dagger (ID 2)
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 30034 >>Turn in The Lesson of the Iron Bough << Hunter
    .turnin 30033 >>Turn in The Lesson of the Iron Bough << Mage
    .turnin 30027 >>Turn in The Lesson of the Iron Bough << Priest/Monk
    .turnin 30037 >>Turn in The Lesson of the Iron Bough << Shaman
    .turnin 30038 >>Turn in The Lesson of the Iron Bough << Warrior
    .turnin 30036 >>Turn in The Lesson of the Iron Bough << Rogue
    .accept 29406 >>Accept The Lesson of the Sandy Fist
	.target Master Shang Xi
step
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.31,18.97
    >>Kill |cFFFF5722Training Targets|r
    .complete 29406,1 --5/5 Training Targets destroyed
	.target Training Target
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29406 >>Turn in The Lesson of the Sandy Fist
    .accept 29524 >>Accept The Lesson of Stifled Pride
	.target Master Shang Xi
step
    .goto 378,59.53,19.03,15,0
    .goto 378,60.30,19.00,10,0
    .goto 378,60.13,19.77,10,0
    .goto 378,60.44,19.47
    >>Go inside the building. Attack |cFFFF5722Tushui Trainees|r and |cFFFF5722Huojin Trainees|r
    .complete 29524,1 --6/6 Sparring Trainees defeated
	.target Tushui Trainee
	.target Huojin Trainee
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29524 >>Turn in The Lesson of Stifled Pride
    .accept 29408 >>Accept The Lesson of the Burning Scroll
	.target Master Shang Xi
step
    #completewith next
    .goto 378,59.97,18.58,8,0
    .goto 378,60.48,18.85,5,0
    .goto 378,60.20,18.89,5,0
    .goto 378,59.98,18.69,5,0 
	.goto 378,60.46,19.60,8 >>|cFFFCDC00Take the shortcut to the top floor by jumping through the gap under the second set of stairs|r
step
    .goto 378,59.95,20.39
    >>Click the |cFFDB2EEFBanner|r to burn it
    .complete 29408,2 --1/1 Burn the Edict of Temperance
step
	#completewith next
    .goto 378,60.19,19.35,6 >> |cFFFCDC00Jump downstairs|r
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29408 >>Turn in The Lesson of the Burning Scroll
    .accept 29409 >>Accept The Disciple's Challenge
	.target Master Shang Xi
step
    .goto 378,67.78,22.75
    >>Attack |cFFFF5722Jaomin|r to defeat him
    .complete 29409,1 --1/1 Defeat Jaomin Ro
	.target Jaomin Ro
step << Warrior
	#completewith Lorvo
    +Use |T132337:0|tCharge on critters to move faster
step
    .goto 378,65.97,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29409 >>Turn in The Disciple's Challenge
    .accept 29410 >>Accept Aysa of the Tushui
	.target Master Shang Xi
step
	#label Lorvo
    .goto 378,55.09,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lorvo|r
    .turnin 29410 >>Turn in Aysa of the Tushui
    .accept 29419 >>Accept The Missing Driver
    .accept 29424 >>Accept Items of Utmost Importance
	.target Merchant Lorvo
step
    #completewith next
    >>Kill |cFFFF5722Amberleaf Scamps|r. Loot them for their |cFF00BCD4Supplies|r
    .complete 29424,1 --6/6 Stolen Training Supplies
	.target Amberleaf Scamp
step
    .goto 378,54.11,20.90
    >>Run toward |cFF00FF25Min|r
    .complete 29419,1 --1/1 Rescue the Cart Driver
	.target Min Dimwind
step
    .goto 378,54.03,20.93,30,0
    .goto 378,54.02,17.44,30,0
    .goto 378,53.00,20.17,30,0
    .goto 378,54.03,20.93,30,0
    .goto 378,54.02,17.44
    >>Kill |cFFFF5722Amberleaf Scamps|r. Loot them for their |cFF00BCD4Supplies|r
    .complete 29424,1 --6/6 Stolen Training Supplies
	.target Amberleaf Scamp
step
    #completewith next
    .goto 378,54.03,20.93,30,0
    .goto 378,54.02,17.44,30,0
    .goto 378,53.00,20.17,30,0
    .goto 378,54.03,20.93
    .deathskip >> Die and respawn at the Spirit Healer
	.target Spirit Healer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Lorvo|r and |cFF00FF25Aysa|r
    .turnin 29419 >>Turn in The Missing Driver
    .turnin 29424 >>Turn in Items of Utmost Importance
    .goto 378,55.11,32.40
    .accept 29414 >>Accept The Way of the Tushui
    .goto 378,55.10,32.55
	.target Merchant Lorvo
	.target Aysa Cloudsinger
step << Hunter
    .goto 378,56.25,30.34,30,0
    .goto 378,57.97,30.62
    .tame 57797 >> |cFFFCDC00Tame a Corsac Fox|r
	.isOnQuest 29414
	.target Corsac Fox
step
	#completewith next
    .goto 378,55.61,30.90,30,0 << !Hunter
    .goto 378,57.53,34.61,20,0
    .goto 378,57.89,36.55,30 >>Enter the cave
	.timer 89,The Way of the Tushui RP
step
    .goto 378,57.89,36.55
    >>Defend |cFF00FF25Aysa|r from the incoming |cFFFF5722Amberleaf Troublemakers|r
    .complete 29414,1 --1/1 Protect Aysa while she meditates
	.target Amberleaf Troublemaker
step
    .goto 378,57.54,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29414 >>Turn in The Way of the Tushui
    .accept 29522 >>Accept Ji of the Huojin
	.target Master Shang Xi
step << Hunter
    #completewith next
    .hs >> Hearth to the Shang Xi Training Grounds
step
    .goto 378,50.24,21.26
    >>Go on the root of the tree and Disengage up onto the Wall to your left << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r
    .turnin 29522 >>Turn in Ji of the Huojin
    .accept 29417 >>Accept The Way of the Huojin
	.target Ji Firepaw
step
    .goto 378,51.18,17.71,20,0
    .goto 378,49.56,18.31,20,0
    .goto 378,49.49,20.13,20,0
    .goto 378,48.27,22.97,20,0
    .goto 378,49.23,24.48,20,0
    .goto 378,49.90,23.37,20,0
    .goto 378,51.18,17.71,20,0
    .goto 378,49.56,18.31,20,0
    .goto 378,49.49,20.13,20,0
    .goto 378,48.27,22.97,20,0
    .goto 378,49.23,24.48,20,0
    .goto 378,49.90,23.37
    >>Kill |cFFFF5722Fe-Feng Hozen|r
    .complete 29417,1 --8/8 Fe-Feng attackers slain
	.target Fe-Feng Hozen
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r
    .turnin 29417 >>Turn in The Way of the Huojin
    .accept 29418 >>Accept Kindling the Fire
    .accept 29523 >>Accept Fanning the Flames
	.target Ji Firepaw
step
    #completewith WindStone
    +|cFFFCDC00If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4. You can also do this with Targets|r
    >>|cFFFCDC00This will allow you to press a Keybind to use a Quest Item/Target a relevant mob|r
step
	#completewith next
    .goto 378,45.89,27.63,30,0
    .goto 378,46.72,30.39,30,0
	>>Loot the |cFFDB2EEFRoots|r on the ground
    .complete 29418,1 --5/5 Dry Dogwood Root
step
	#label WindStone
	#completewith next
    .goto 378,47.29,31.43
	.cast 106299 >>Use the |T519378:0|t[Wind Stone] at the Shrine
    .use 72109
step
    .goto 378,47.29,31.43
    >>Kill the |cFFFF5722Living Air|r that spawns. Loot it for it's |cFF00BCD4Breeze|r
    .complete 29523,1 --1/1 Fluttering Breeze
    .use 72109
	.target Living Air
step
    .goto 378,48.74,29.46,30,0
    .goto 378,50.39,30.78,30,0
    .goto 378,45.89,27.63,30,0
    .goto 378,46.72,30.39,30,0
    .goto 378,48.74,29.46,30,0
    .goto 378,50.39,30.78
	>>Loot the |cFFDB2EEFRoots|r on the ground
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r and |cFF00FF25Shang Xi|r
    .turnin 29418 >>Turn in Kindling the Fire
    .turnin 29523 >>Turn in Fanning the Flames
    .goto 378,50.24,21.26
    .accept 29420 >>Accept The Spirit's Guardian
    .goto 378,50.29,21.47
	.target Ji Firepaw
	.target Master Shang Xi
step
	#completewith next
    .goto 378,41.70,25.20,20,0
    .goto 378,40.83,23.15,15,0
    .goto 378,40.19,22.45,20 >> Go inside the cave toward |cFF00FF25Li Fei|r
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Li Fei|r
    .turnin 29420 >>Turn in The Spirit's Guardian
    .accept 29664 >>Accept The Challenger's Fires
	.target Master Li Fei
step
    .goto 378,38.71,25.39
    >>Click the |cFFDB2EEFBrazier|r
    .complete 29664,1 --1/1 Challenger Torch lit
 step
    >>Click the |cFFDB2EEFBraziers|r
    .complete 29664,4 --1/1 Violet Brazier lit
    .goto 378,38.25,24.87
    .complete 29664,2 --1/1 Red Brazier lit
    .goto 378,38.99,23.50
    .complete 29664,3 --1/1 Blue Brazier lit
    .goto 378,39.19,25.41
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Li Fei|r
    .turnin 29664 >>Turn in The Challenger's Fires
    .accept 29421 >>Accept Only the Worthy Shall Pass
	.target Master Li Fei
step
    .goto 378,38.88,24.64
    >>Damage |cFFFF5722Master Li Fei|r to 20% or less health
    .complete 29421,1 --1/1 Defeat Master Li Fei
	.target Master Li Fei
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Li Fei|r
    .turnin 29421 >>Turn in Only the Worthy Shall Pass
    .turnin 29421 >>Turn in Only the Worthy Shall Pass
    .accept 29422 >>Accept Huo, the Spirit of Fire
	.target Master Li Fei
step
	#completewith next
    .goto 378,39.45,29.65
	.cast 102522 >>Use |T133662:0|t[Huo's Offerings] on |cFF00FF25Huo|r
	.timer 11, Huo the Spirit of Fire RP
	.target Huo
	.use 72583
step
    .goto 378,39.45,29.65
    >>Wait out the RP
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
	.target Huo
    .use 72583
step
    .goto 378,39.41,29.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Huo|r
    .turnin 29422 >>Turn in Huo, the Spirit of Fire
    .accept 29423 >>Accept The Passion of Shen-zin Su
	.target Huo
step
	#completewith next
    .goto 378,40.12,25.50,20,0
    .goto 378,41.48,25.05,20,0
    .goto 378,51.04,30.62,20,0
    .goto 378,51.89,35.93,20,0
    .goto 378,51.58,40.46,20 >> Travel to the Temple of Five Dawns
step << skip
    >>Walk into the Temple of Five Dawns
    .goto 378,51.41,46.40
    .complete 29423,1 --1/1 Bring the Spirit of Fire to the Temple of Five Dawns
step
    .goto 378,51.41,46.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29423 >>Turn in The Passion of Shen-zin Su
    .accept 29521 >>Accept The Singing Pools
	.target Master Shang Xi
step
    #completewith next
    .goto 378,51.83,46.08
    .home >>Set Hearthstone to the Temple of Five Dawns
	.target Cheng Dawnscrive
step
	#completewith Jojo
	.goto 378,53.33,47.48,20,0
    .goto 378,63.11,41.45
    .train 2366 >> Train Herbalism from |cFF00FF25Dewei|r
	.skipgossip 57620,1,1
    .target Whittler Dewei
step
    .goto 378,63.11,41.45
    >>|cFFFCDC00Herbing and Mining Ores gives Experience. Only do this when the herbs/ores are right next to you|r
    .train 2575 >> Train Mining from |cFF00FF25Dewei|r
	.skipgossip 57620,2,3,2
	.target Whittler Dewei
step
	#label Jojo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jojo|r and |cFF00FF25Aysa|r
    .accept 29662 >>Accept Stronger Than Reeds
    .goto 378,63.50,41.93
    .turnin 29521 >>Turn in The Singing Pools
    .accept 29661 >>Accept The Lesson of Dry Fur
    .accept 29663 >>Accept The Lesson of the Balanced Rock
    .goto 378,65.59,42.61
	.target Jojo Ironbrow
	.target Aysa Cloudsinger
step
	#completewith Shrine
    .goto 378,63.37,45.17
	.vehicle >> Click a |cFF00FF25Balance Pole|r when you're not a frog to jump onto it
step
	#completewith next
	>>Defeat the |cFFFF5722Tushui Monks|r whilst on the Poles
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.target Tushui Monk
step
	#label Shrine
    .goto 378,61.39,47.87
    >>Move to the |cFFDB2EEFShrine|r in the middle of the lake by jumping poles closer to it. Click the |cFFDB2EEFShrine|r
    .complete 29661,1 --1/1 Ring the Training Bell
step
    .goto 378,62.19,48.59,20,0
    .goto 378,62.99,49.11,20,0
    .goto 378,61.36,49.66,20,0
    .goto 378,61.12,46.36,20,0
    .goto 378,61.19,45.21,20,0
    .goto 378,62.01,45.88,20,0
    .goto 378,62.47,44.55,20,0
    .goto 378,62.19,48.59,20,0
    .goto 378,62.99,49.11,20,0
    .goto 378,61.36,49.66,20,0
    .goto 378,61.12,46.36,20,0
    .goto 378,61.19,45.21,20,0
    .goto 378,62.01,45.88,20,0
    .goto 378,62.47,44.55
	>>Defeat the |cFFFF5722Tushui Monks|r whilst on the Poles\
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.target Tushui Monk
step
    .goto 378,63.36,44.47,30,0
    .goto 378,63.51,49.09,30,0
    .goto 378,60.96,50.28,30,0
    .goto 378,60.47,45.95,30,0
    .goto 378,63.36,44.47,30,0
    .goto 378,63.51,49.09,30,0
    .goto 378,60.96,50.28,30,0
    .goto 378,60.47,45.95
    >>Loot |cFFDB2EEFReeds|r in the lake. |cFFFCDC00Run away from the|r |cFFFF5722Cranes|r. |cFFFCDC00You can|r |T574574:0|tRoll and |T572035:0|tQuaking Palm |cFFFCDC00in Frog form|r. |cFFFCDC00Run out of the lake to de-aggro the|r |cFFFF5722Cranes|r |cFFFCDC00if your health gets low|r
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jojo|r and |cFF00FF25Aysa|r
    .turnin 29662 >>Turn in Stronger Than Reeds
    .goto 378,63.50,41.93
    .turnin 29661 >>Turn in The Lesson of Dry Fur
    .turnin 29663 >>Turn in The Lesson of the Balanced Rock
    .accept 29676 >>Accept Finding an Old Friend
    .goto 378,65.59,42.61
	.target Jojo Ironbrow
	.target Aysa Cloudsinger
step
    .goto 378,71.72,38.16,15,0
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Liang|r
    .turnin 29676 >>Turn in Finding an Old Friend
    .accept 29666 >>Accept The Sting of Learning
    .accept 29677 >>Accept The Sun Pearl
	.target Old Man Liang
step
    .goto 378,73.86,40.37,30,0
    .goto 378,72.67,42.89,30,0
    .goto 378,75.41,37.59,30,0
    .goto 378,73.86,40.37,30,0
    .goto 378,72.67,42.89,30,0
    .goto 378,75.41,37.59
    >>Kill |cFFFF5722Water Pincers|r
    .complete 29666,1 --6/6 Water Pincer slain
    .target Water Pincer
step
    .goto 378,76.21,46.87
    >>Loot the |cFFDB2EEFAncient Clam|r underwater. |cFFFCDC00You don't need to kill|r |cFFFF5722Fang-she|r |cFFFCDC00if you loot it after she auto attacks you OR you use|r |T572035:0|tQuaking Palm |cFFFCDC00on her|r
    .complete 29677,1 --1/1 Sun Pearl
    .target Fang-she
step
    .goto 378,78.48,42.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Liang|r
    .turnin 29666 >>Turn in The Sting of Learning
    .turnin 29677 >>Turn in The Sun Pearl
    .accept 29678 >>Accept Shu, the Spirit of Water
	.target Old Man Liang
step
	#completewith next
    .goto 378,79.66,41.83,4,0
    .goto 378,79.61,38.72
	>>Stand on the Blue Circle to jump toward the Pool
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step
    .goto 378,79.59,38.58
    >>Use the |T463854:0|t[Sun Pearl] on the Water's Surface
    .complete 29678,2 --1/1 Coax Shu, the Water Spirit
    .use 73791
step
    .goto 378,79.82,39.31
    >>Click the Quest Turnin Pop-Up in your Questlog
    .turnin 29678 >>Turn in Shu, the Spirit of Water
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aysa|r
    .accept 29679 >>Accept A New Friend
	.target Aysa Cloudsinger
step
    .loop 20,378,79.98,37.97,79.42,36.60,78.17,37.34,78.46,38.73,79.98,37.97
    >>Follow |cFF00FF25Shu|r around. He'll cast a Sprout in the water near him. |cFFFCDC00Stand on top of it|r
    >>Use Disengage after you get launched in the air for the last Sprout  << Hunter
    >>Use Blink after you get launched in the air for the last Sprout << Mage
    .complete 29679,1 --5/5 Play with the Spirit of Water
	.target Shu
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aysa|r
    .turnin 29679 >>Turn in A New Friend
    .accept 29680 >>Accept The Source of Our Livelihood
	.target Aysa Cloudsinger
step
    .goto 378,76.57,57.36,40,0
	>>|cFFFCDC00Ignore the Cart|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r and |cFF00FF25Gao|r
    .turnin 29680 >>Turn in The Source of Our Livelihood
    .accept 29769 >>Accept Rascals
    .goto 378,68.89,64.98
    .accept 29770 >>Accept Still Good!
    .goto 378,68.13,66.40
	.target Ji Firepaw
	.target Gao Summerdraft
step
	#completewith Carrots
    >>Kill |cFFFF5722Plump Virmen|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.target Plump Virmen
step
    .goto 378,71.20,77.97,20,0
    .goto 378,70.89,80.99,20,0
    .goto 378,68.31,79.35,20,0
    .goto 378,66.91,77.12,20,0
    .goto 378,71.20,77.97,20,0
    .goto 378,70.89,80.99,20,0
    .goto 378,68.31,79.35,20,0
    .goto 378,66.91,77.12
    >>Loot the |cFFDB2EEFTurnips|r on the ground
    .complete 29770,1 --3/3 Uprooted Turnip
step
    .goto 378,77.81,71.85,15,0
    .goto 378,78.05,72.66,15,0
    .goto 378,78.84,70.81,15,0
	.goto 378,77.81,71.85,15,0
    .goto 378,78.05,72.66,15,0
    .goto 378,78.84,70.81
    >>Loot the |cFFDB2EEFPumpkins|r on the ground
    .complete 29770,3 --3/3 Pilfered Pumpkin
step
	#completewith next
    .goto 378,77.05,71.02,10 >> Go into the cave
step
	#label Carrots
    .goto 378,75.56,72.95,15,0
    .goto 378,73.92,72.56,15,0
    .goto 378,73.95,70.75,15,0
    .goto 378,74.11,75.32,15,0
    .goto 378,75.11,74.71,15,0
    .goto 378,75.56,72.95,15,0
    .goto 378,73.92,72.56,15,0
    .goto 378,73.95,70.75,15,0
    .goto 378,74.11,75.32,15,0
    .goto 378,75.11,74.71
    >>Kill |cFFFF5722Plump Carrotcatchers|r. Loot them for their |cFF00BCD4Carrots|r. Alternatively, loot the |cFFDB2EEFCarrots|r on the ground
    .complete 29770,2 --3/3 Stolen Carrot
	.target Plump Carrotcatcher
step
    .goto 378,69.01,71.12,40,0
    .goto 378,67.05,75.72,40,0
    .goto 378,71.17,77.89,40,0
    .goto 378,69.01,71.12,40,0
    .goto 378,67.05,75.72,40,0
    .goto 378,71.17,77.89
    >>Kill |cFFFF5722Plump Virmen|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.target Plump Virmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gao|r, |cFF00FF25Ji|r, and |cFF00FF25Jojo|r
    .turnin 29770 >>Turn in Still Good!
    .goto 378,68.13,66.40
    .turnin 29769 >>Turn in Rascals
    .accept 29768 >>Accept Missing Mallet
	.goto 378,68.89,64.98
    .accept 29771 >>Accept Stronger Than Wood
    .goto 378,69.16,66.71
	.target Gao Summerdraft
	.target Ji Firepaw
	.target Jojo Ironbrow
step
	#completewith next
	>>Loot the |cFFDB2EEFWood Planks|r on the floor
    .complete 29771,1,6 --12/12 Discarded Wood Plank
step
    .goto 378,62.63,77.05
	>>Loot the |cFFDB2EEFMallet|r on the barrel
    .complete 29768,1 --1/1 Dai-Lo Recess Mallet
step
    .goto 378,63.77,77.19,15,0
    .goto 378,63.27,79.16,15,0
    .goto 378,62.94,79.04,15,0
    .goto 378,62.19,81.08,15,0
    .goto 378,63.77,77.19,15,0
    .goto 378,63.27,79.16,15,0
    .goto 378,62.94,79.04,15,0
    .goto 378,62.19,81.08
	>>Loot the |cFFDB2EEFWood Planks|r on the floor
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jojo|r and |cFF00FF25Ji|r, then click the |cFFDB2EEFGong|r
    .turnin 29771 >>Turn in Stronger Than Wood
    .goto 378,69.16,66.71
    .turnin 29768 >>Turn in Missing Mallet
    .accept 29772 >>Accept Raucous Rousing
	.goto 378,68.89,64.98
    .complete 29772,1 --1/1 Ring the town gong
    .goto 378,68.95,64.80
    .target Jojo Ironbrow
    .target Ji Firepaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r
    .turnin 29772 >>Turn in Raucous Rousing
    .accept 29774 >>Accept Not In the Face!
	.goto 378,68.89,64.98
	.target Ji Firepaw
step
    .goto 378,68.98,62.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shu|r
    .complete 29774,1 --1/1 Ask Shu for help
    .skipgossip
	.timer 15,Not In the Face! RP
	.target Shu
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWait out the RP. Talk to |cFF00FF25Ji|r
	.goto 378,68.89,64.98
    .turnin 29774 >>Turn in Not In the Face!
    .accept 29775 >>Accept The Spirit and Body of Shen-zin Su
	.target Ji Firepaw
step
	#completewith next
    .goto 378,58.86,63.38,40,0
    .goto 378,55.23,58.57,40,0
	>>Ignore the Cart
    .goto 378,51.48,57.40,20 >>Travel to the Temple of the Five Dawns
step
    .goto 378,51.59,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29775 >>Turn in The Spirit and Body of Shen-zin Su
    .accept 29776 >>Accept Morning Breeze Village
	.timer 20,Morning Breeze Village RP
	.target Master Shang Xi
step
	#completewith next
    .goto 378,51.46,47.62,5 >> Wait out the RP
step
	#completewith next
    .goto 378,50.17,48.78,20,0
    .goto 378,44.88,51.38,20,0
    .goto 378,35.93,51.19,20,0
    .goto 378,30.42,37.50,20 >>Travel to Morning Breeze Village
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r
    .turnin 29776 >>Turn in Morning Breeze Village
    .accept 29778 >>Accept Rewritten Wisdoms
	.target Ji Firepaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shaopai|r and |cFF00FF25Jojo|r
    .accept 29777 >>Accept Tools of the Enemy
    .goto 378,31.78,39.71
    .accept 29783 >>Accept Stronger Than Stone
    .goto 378,29.90,39.76
	.target Elder Shaopai
	.target Jojo Ironbrow
step
    #completewith WisdomScrolls
    >>Kill |cFFFF5722Fe-Feng Wisemans|r. Loot them for their |cFF00BCD4Brushes|r. Loot the |cFFDB2EEFStone Blocks|r on the ground
    .complete 29777,1 --8/8 Paint Soaked Brush
    .complete 29783,1 --12/12 Abandoned Stone Block
	.target Fe-Feng Wiseman
step
    .goto 378,28.27,49.59,5,0
    .goto 378,28.27,49.87,5,0
    .goto 378,28.27,49.59,5,0
    .goto 378,28.27,49.87,5,0
    .goto 378,28.27,49.59
    >>Click the |cFFDB2EEFScrolls|r on the Tablets
    .complete 29778,1,2 --5/5 Defaced Scroll of Wisdom burned
step
    .goto 378,32.51,46.74
    >>Click the |cFFDB2EEFScrolls|r on the Tablet
    .complete 29778,1,4 --5/5 Defaced Scroll of Wisdom burned
step
	#label WisdomScrolls
    .goto 378,33.13,46.31
    >>Click the |cFFDB2EEFScroll|r on the Tablet
    .complete 29778,1 --5/5 Defaced Scroll of Wisdom burned
step
    .goto 378,32.96,51.82,30,0
    .goto 378,32.29,55.57,30,0
    .goto 378,28.27,49.59,30,0
    .goto 378,27.63,45.21,30,0
    .goto 378,32.96,51.82,30,0
    .goto 378,32.29,55.57,30,0
    .goto 378,28.27,49.59,30,0
    .goto 378,27.63,45.21
    >>Kill |cFFFF5722Fe-Feng Wisemans|r. Loot them for their |cFF00BCD4Brushes|r. Loot the |cFFDB2EEFStone Blocks|r on the ground
    .complete 29777,1 --8/8 Paint Soaked Brush
    .complete 29783,1 --12/12 Abandoned Stone Block
	.target Fe-Feng Wiseman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shaopai|r, |cFF00FF25Jojo|r, and |cFF00FF25Ji|r
    .turnin 29777 >>Turn in Tools of the Enemy
    .goto 378,31.78,39.71
    .turnin 29783 >>Turn in Stronger Than Stone
    .goto 378,29.90,39.76
    .turnin 29778 >>Turn in Rewritten Wisdoms
    .accept 29779 >>Accept The Direct Solution
    .accept 29780 >>Accept Do No Evil
    .accept 29781 >>Accept Monkey Advisory Warning
    .goto 378,30.97,36.74
	.target Elder Shaopai
	.target Jojo Ironbrow
	.target Ji Firepaw
step
	#completewith JadeP
    .goto 378,29.28,39.98,30,0
    .goto 378,27.42,36.25,30,0
   .goto 378,26.42,33.68,30 >> Travel to the Jade Pillar
step
	#completewith FBundle
	>>Kill |cFFFF5722Fe-Feng Firethieves|r and |cFFFF5722Fe-Feng Ruffians|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.target Fe-Feng Firethief
	.target Fe-Feng Ruffian
step
	#label JadeP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Jade Pillar|r
    .goto 378,26.42,33.68
    .accept 29782 >>Accept Stronger Than Bone
step
	#sticky
	#label Fireworks
    .goto 378,20.95,34.41
	>>Loot the |cFFDB2EEFFirework Bundles|r on the ground
    .complete 29781,1,7 --7/8 Stolen Firework Bundle
step
    .goto 378,25.41,35.24,20,0
    .goto 378,21.03,34.38
	>>Kill |cFFFF5722Ruk-Ruk|r
    .complete 29780,1 --1/1 Ruk-Ruk slain
	.target Ruk-Ruk
step
	#label FBundle
	#requires Fireworks
    .goto 378,21.69,33.28,5,0
    .goto 378,23.52,32.65
	>>Loot the |cFFDB2EEFFirework Bundle|r on the ground
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
	#requires Fireworks
    .goto 378,26.53,28.87,40,0
    .goto 378,26.71,31.96
	>>Kill |cFFFF5722Fe-Feng Firethieves|r and |cFFFF5722Fe-Feng Ruffians|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.target Fe-Feng Firethief
	.target Fe-Feng Ruffian
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r next to you. |cFFFCDC00If he isn't, skip/ignore this step|r
    .turnin 29779 >>Turn in The Direct Solution
    .turnin 29780 >>Turn in Do No Evil
    .turnin 29781 >>Turn in Monkey Advisory Warning
    .accept 29784 >>Accept Balanced Perspective
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Jojo|r
    .turnin 29782 >>Turn in Stronger Than Bone
	.target Jojo Ironbrow
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r
    .turnin 29779 >>Turn in The Direct Solution
    .turnin 29780 >>Turn in Do No Evil
    .turnin 29781 >>Turn in Monkey Advisory Warning
    .accept 29784 >>Accept Balanced Perspective
	.target Ji Firepaw
step
	#completewith next
    .goto 378,31.14,36.79,5,0
    .goto 378,32.17,36.36,8,0
    .goto 378,32.88,37.16,8,0
    .goto 378,32.94,35.61,8 >>|cFFFCDC00Carefully|r walk over the rope
step
	#label BalancedP
    .goto 378,32.94,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aysa|r
    .turnin 29784 >>Turn in Balanced Perspective
    .accept 29785 >>Accept Dafeng, the Spirit of Air
	.target Aysa Cloudsinger
step
	#sticky
	#label Temple1
    .goto 378,30.21,38.57,20,0
    .goto 378,28.94,62.89,20 >>Travel to the Temple
	.isOnQuest 29785
step
	#sticky
	#label Temple2
	#requires Temple1
    .goto 378,26.64,66.63,10 >> Run in between the sets of stairs after the first time the winds subside
	.isOnQuest 29785
step
	#sticky
	#label Temple3
	#requires Temple2
    .goto 378,26.64,66.63,10 >> Run toward |cFF00FF25Dafeng|r after the winds in the next room subside
	.isOnQuest 29785
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Dafeng|r and |cFF00FF25Aysa|r
    .turnin 29785 >>Turn in Dafeng, the Spirit of Air
    .goto 378,24.65,69.80
    .accept 29786 >>Accept Battle for the Skies
    .goto 378,24.78,69.78
	.target Dafeng
	.target Aysa Cloudsinger
step
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,30.52,59.72
	>>Click |cFFDB2EEFFirework Launchers|r when |cFFFF5722Zhao-Ren|r is over them to damage him. He circles counter-clockwise. |cFFFCDC00Avoid his Lightning puddles|r. Damage him when he lands. Kill him when he lands the second time
    .complete 29786,1 --1/1 Zhao-Ren slain
	.target Zhao-Ren
step
    .goto 378,29.99,60.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29786 >>Turn in Battle for the Skies
    .accept 29787 >>Accept Worthy of Passing
	.target Master Shang Xi
step
	#completewith next
    .goto 378,26.32,52.83,20,0
    .goto 378,22.70,52.80,40 >>Travel to The Elders' Path
step
    .goto 378,22.70,52.80
	>>Kill the |cFFFF5722Guardian of the Elders|r
    .complete 29787,1 --1/1 Guardian of the Elders slain
	.timer 19,Worthy of Passing RP
	.target Guardian of the Elders
step
    .goto 378,19.45,51.22
	>>Wait out the RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29787 >>Turn in Worthy of Passing
    .accept 29788 >>Accept Unwelcome Nature
    .accept 29789 >>Accept Small, But Significant
	.target Master Shang Xi
step
    .goto 378,18.84,51.88,15,0
    .goto 378,18.43,49.88,15,0
    .goto 378,18.37,48.13,15,0
    .goto 378,21.57,49.29,15,0
    .goto 378,22.50,48.95,15,0
    .goto 378,24.22,45.72,30,0
    .goto 378,18.18,44.52,30,0
    .goto 378,24.22,45.72,30,0
    .goto 378,18.18,44.52
	>>Kill |cFFFF5722Thornbranch Scamps|r. Loot the |cFFDB2EEFCharms|r hanging from the trees
    .complete 29788,1 --8/8 Thornbranch Scamp slain
    .complete 29789,1 --8/8 Kun-Pai Ritual Charm
	.target Thornbranch Scamp
step
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shang Xi|r
    .turnin 29788 >>Turn in Unwelcome Nature
    .turnin 29789 >>Turn in Small, But Significant
    .accept 29790 >>Accept Passing Wisdom
	.timer 83,Passing Wisdom RP
	.target Master Shang Xi
step
	#completewith next
	.cast 108034 >>Eat the |T571818:0|t[Small Sugarcane Stalk] for 10 seconds to get a buff
    .use 77272
	.itemcount 77272,1
step
    .goto 378,17.29,50.78
    >>|cFFFCDC00Wait out the RP at the arrow location|r
    .complete 29790,1 --1/1 Listen to Master Shang Xi
step
    .goto 378,15.79,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aysa|r
    .turnin 29790 >>Turn in Passing Wisdom
    .accept 29791 >>Accept The Suffering of Shen-zin Su
	.target Aysa Cloudsinger
step
    .goto 378,15.55,48.91
    >>Click the |cFF00FF25Air Balloon|r to Board it
    .complete 29791,1 --1/1 Board the Hot Air Balloon
	.timer 191,The Suffering of Shen-zin Su RP
step
    .goto 378,30.8,92.9
	>>Wait out the RP
    .complete 29791,2 --1/1 Uncover the source of Shen-zin Su's pain
step
    .goto 378,51.31,48.28
    >>When falling off the Balloon, Disengage to the stairs to the north-east to save time << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Shaopai|r
    .turnin 29791 >>Turn in The Suffering of Shen-zin Su
    .accept 29792 >>Accept Bidden to Greatness
	.target Elder Shaopai
step
    .goto 378,51.60,61.39
    >>Run to the gate to open it. Wait out the RP
    .complete 29792,1 --1/1 Open the Mandori Village Gate
step
	#completewith next
    .goto 378,50.66,65.62,20,0
    .goto 378,52.28,68.43,30 >>Travel to the Pei-Wu Gate
	.timer 28,Pei-Wu Gate RP
step
    .goto 378,52.28,68.43
    >>Run to the gate to open it. Wait out the RP
    .complete 29792,2 --1/1 Open the Pei-Wu Forest Gate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wei|r and |cFF00FF25Korga|r
    .turnin 29792 >>Turn in Bidden to Greatness
    .accept 30591 >>Accept Preying on the Predators
    .goto 378,50.07,76.63
    .accept 29795 >>Accept Stocking Stalks
    .goto 378,50.22,76.65
	.target Wei Palerage
	.target Korga Strongmane
step
    .goto 378,50.62,78.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Drog|r
    .vendor 67186 >> Sell your trash and repair
	.target Provisioner Drog
	.isOnQuest 29795
step
	.loop 40,378,54.51,85.54,45.05,85.81,45.89,71.57,55.62,69.49,54.51,85.54
    >>Kill |cFFFF5722Pei-Wu Tigers|r. Loot the |cFFDB2EEFBamboo Stalks|r on the ground
    .goto 378,47.91,80.52
    .complete 30591,1 --9/9 Pei-Wu Tiger slain
    .complete 29795,1 --10/10 Broken Bamboo Stalk
	.target Pei-Wu Tiger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Wei|r and |cFF00FF25Korga|r
    .turnin 30591 >>Turn in Preying on the Predators
    .goto 378,50.07,76.63
    .turnin 29795 >>Turn in Stocking Stalks
    .accept 30589 >>Accept Wrecking the Wreck
    .goto 378,50.22,76.65
	.target Wei Palerage
	.target Korga Strongmane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Makael|r and |cFF00FF25Ji|r
    .turnin 30589 >>Turn in Wrecking the Wreck
    .accept 30590 >>Accept Handle With Care
    .goto 378,36.32,72.36
    .accept 29793 >>Accept Evil from the Seas
    .goto 378,36.37,72.53
	.target Makael Bay
	.target Ji Firepaw
step
    .goto 378,36.06,76.73,40,0
    .goto 378,35.41,79.00,40,0
    .goto 378,40.14,78.79,40,0
    .goto 378,38.29,74.01,40,0
    .goto 378,36.06,76.73,40,0
    .goto 378,35.41,79.00,40,0
    .goto 378,40.14,78.79,40,0
    .goto 378,38.29,74.01
    >>Kill |cFFFF5722Darkened Horrors|r and |cFFFF5722Terrors|r. |cFFFCDC00Be careful of the Horrors' Shadow Geysers|r
	>>Loot the Explosion Charges on the ground
    .complete 29793,1 --8/8 Darkened Horrors or Darkened Terrors slain
    .complete 30590,1 --6/6 Packed Explosion Charge
	.target Darkened Horror
	.target Darkened Terror
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Makael|r and |cFF00FF25Ji|r
    .turnin 30590 >>Turn in Handle With Care
    .goto 378,36.32,72.36
    .turnin 29793 >>Turn in Evil from the Seas
    .accept 29796 >>Accept Urgent News
    .goto 378,36.37,72.53
	.target Makael Bay
	.target Ji Firepaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delora|r and |cFF00FF25Jojo|r
    .turnin 29796 >>Turn in Urgent News
    .accept 29794 >>Accept None Left Behind
    .accept 29797 >>Accept Medical Supplies
    .goto 378,42.21,86.54
    .accept 29665 >>Accept From Bad to Worse
    .goto 378,42.30,86.35
	.target Delora Lionheart
	.target Jojo Ironbrow
step
	#completewith Sailor2
    >>Kill |cFFFF5722Deepscale Tormentors|r. Loot the |cFFDB2EEFMedical Supplies|r on the ground
    .complete 29665,1 --8/8 Deepscale Tormentor slain
    .complete 29797,1 --8/8 Alliance Medical Supplies
	.target Deepscale Tormentor
step
	#completewith next
    .goto 378,40.18,87.69
	.cast 56685 >>Pick up the |cFF00FF25Injured Sailor|r
	.isOnQuest 29794
	.target Injured Sailor
step
    .goto 378,42.27,86.80
    >>Carry the |cFF00FF25Injured Sailor|r back to |cFF00FF25Delora|r's Camp
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step
	#completewith next
    .goto 378,39.41,87.98
	.cast 56685 >>Pick up the |cFF00FF25Injured Sailor|r
	.isOnQuest 29794
	.target Injured Sailor
step
	#label Sailor2
    .goto 378,42.27,86.80
    >>Carry the |cFF00FF25Injured Sailor|r back to |cFF00FF25Delora|r's Camp
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,10,0
    .goto 378,36.82,89.24,20,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,10,0
    .goto 378,36.82,89.24
	>>|cFFFCDC00Don't pick up a new Sailor yet|r
    >>Kill |cFFFF5722Deepscale Tormentors|r. Loot the |cFFDB2EEFMedical Supplies|r on the ground
    .complete 29665,1 --8/8 Deepscale Tormentor slain
    .complete 29797,1 --8/8 Alliance Medical Supplies
	.target Deepscale Tormentor
step
	#completewith next
    .goto 378,38.36,87.43,-1
    .goto 378,37.66,87.22,-1
    .goto 378,36.17,87.63,-1
    .goto 378,35.49,83.80,-1
    .goto 378,37.60,81.44,-1
    .goto 378,38.41,83.09,-1
    .goto 378,38.08,84.73,-1
    .goto 378,40.01,84.36,-1
	.cast 56685 >>Pick up the |cFF00FF25Injured Sailor|r
	.isOnQuest 29794
	.target Injured Sailor
step
    .goto 378,42.27,86.80
    >>Carry the |cFF00FF25Injured Sailor|r back to |cFF00FF25Delora|r's Camp
    .complete 29794,1 --3/3 Injured Sailors rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Delora|r and |cFF00FF25Jojo|r
    .turnin 29794 >>Turn in None Left Behind
    .turnin 29797 >>Turn in Medical Supplies
    .goto 378,42.21,86.54
    .turnin 29665 >>Turn in From Bad to Worse
    .accept 29798 >>Accept An Ancient Evil
    .goto 378,42.30,86.35
	.target Delora Lionheart
	.target Jojo Ironbrow
step
    .goto 378,36.50,84.23
    >>Kill |cFFFF5722Vordraka|r
    >>|cFFFCDC00Dodge his Deep Sea Smash|r. Kill |cFFFF5722Deepscale Aggressors|r when they spawn
    .complete 29798,1 --1/1 Vordraka, the Deep Sea Nightmare slain
	.target Vordraka, The Deep Sea Nightmare
    .target Deepscale Aggressor
step
    .goto 378,36.50,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aysa|r
    .turnin 29798 >>Turn in An Ancient Evil
    .accept 30767 >>Accept Risking It All
    .timer 77,Risking It All RP
	.target Aysa Cloudsinger
	.skipgossip
step
    .goto 378,36.35,86.08,10,0 << skip
    .goto 378,36.27,86.99,10,0 << skip
    .goto 378,36.90,85.50,5,0 << skip
    .goto 378,36.36,87.2,10,0 << skip
    .goto 378,36.38,87.12 << skip
    >>Wait out the RP (you can take a break in this time)
	>>|cFFFCDC00Press "Escape" on your keyboard to skip the cinematic|r
    .complete 30767,1 --1/1 Shen-zin Su's Thorn Removed
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r
    .turnin 30767 >>Turn in Risking It All
    .accept 29799 >>Accept The Healing of Shen-zin Su
	.target Ji Firepaw
step
    .goto 378,39.08,88.32,5,0
    .goto 378,39.04,88.87,5,0
    .goto 378,39.89,88.62,5,0
    .goto 378,42.92,87.31,5,0
    .goto 378,42.85,85.16,5,0
    .goto 378,42.01,84.89,5,0
    .goto 378,42.31,83.89,5,0
    .goto 378,41.21,83.78,5,0
    .goto 378,40.55,82.45,5,0
    .goto 378,40.26,83.35,5,0
    .goto 378,40.12,84.37,5,0
    .goto 378,38.44,86.07
    >>Free |cFF00FF25Alliance Priests|r and |cFF00FF25Horde Druids|r from the Wreckages, then talk to them. Kill |cFFFF5722Dampscale Fleshrippers|r if they're attacking them
    .complete 29799,1 --1/1 Protect the healers
	.target Alliance Priest
	.target Horde Druid
	.target Dampscale Fleshripper
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r
	>>Press "Escape" on your keyboard to skip the cinematic
    .turnin 29799 >>Turn in The Healing of Shen-zin Su
	.timer 18,The Healing of Shen-zin Su RP
	.target Ji Firepaw
step
    >>Wait out the RP
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r
    .goto 378,38.77,86.32
    .accept 29800 >>Accept New Allies
	.target Ji Firepaw
step
    #completewith next
    .hs >> Hearthstone to the Temple of Five Dawns
step
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cFF00FF25Spirit of Shang Xi|r. Select your Faction
	>>|cFFFCDC00Press "Escape" on your keyboard to skip the cinematic|r
    .turnin 29800 >>Turn in New Allies
    .accept 31450 >>Accept A New Fate
    .complete 31450,1 --1/1 Choose your faction
    .skipgossip
	.target Spirit of Shang Xi
step << Alliance
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Aysa|r
    .turnin 31450 >>Turn in A New Fate
	.accept 30987 >>Accept Joining the Alliance
	.target Aysa Cloudsinger
step << skip
    #veteran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato and the Hero's Herald
    .accept 332 >>Accept Wine Shop Advert
    .goto 84,63.77,73.59
    .accept 46727 >>Accept Battle for Azeroth: Tides of War
    .goto 84,62.81,71.75
--VV alliance
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Hero's Herald|r
    .goto 84,62.81,71.75
    .accept 46727 >>Accept Battle for Azeroth: Tides of War
step << Alliance
	#completewith next
    .goto 84,64.52,70.18,20,0
    .goto 84,68.67,73.75,15,0
    .goto 84,68.41,75.17,15,0
    .goto 84,70.23,73.34,20 >>Travel to the Riding Trainer
step << Alliance
    .goto 84,70.23,73.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Bralla|r. Train |T136103:0|Apprentice Riding
    .skill riding,75 >> Learn Apprentice Riding
	.target Bralla Cloudwing
step << skip
    .dmf 
	>>Unlearn your professions by copying then pasting the link below into chat
    .link /run AbandonSkill(186); AbandonSkill(182);>> CLICK HERE
	.train 2366,1 >>Unlearn Herbalism
	.train 2575,1 >>Unlearn Mining
--VV alliance
step << skip
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkmoon Faire Mystic Mage. Ask for a teleport to the Darkmoon Faire
    .goto 84,62.25,72.96
    .accept 7905 >>Accept The Darkmoon Faire
	.zone 407 >> Travel to the Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
	.skipgossip
--VV alliance
step << Horde
    .goto 1,45.58,12.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Ji|r
    .turnin 31450 >>Turn in A New Fate
    .accept 31012 >>Accept Joining the Horde
    .target Ji Firepaw
step << Horde
    #completewith next
    .goto 85,49.87,75.52,20 >> Go inside Grommash Hold
step << Horde
    .goto 85,48.76,70.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Garrosh|r
    .turnin 31012 >> Turn in Joining the Horde
--  .accept 31013 >> Accept The Horde Way
    .target Garrosh Hellscream
--VV Horde need a step for normal riding skill. Alliance need a turnin step for "30987" and "46727" (and alternatively 332 for veterans, it is currently skipped).
]])
