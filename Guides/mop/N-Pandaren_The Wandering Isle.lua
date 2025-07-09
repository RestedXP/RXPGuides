local _,addon = ...
if addon.player.race ~= "Pandaren" then return end

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP Starting Zone (Pandaren)
#name 1-12 The Wandering Isle
#next RXP Cataclysm 1-80 (A)\10-20 Loch Modan;RXP Cataclysm 1-80 (H)\10-22 Azshara;RXP MoP 1-80 (A)\10-20 Loch Modan;RXP MoP 1-80 (H)\10-22 Azshara;skip


<< Pandaren !DK

step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .accept 30034 >>Accept The Lesson of the Iron Bough << Hunter
    .accept 30027 >>Accept The Lesson of the Iron Bough << Priest/Monk
    .accept 30033 >>Accept The Lesson of the Iron Bough << Mage
    .accept 30037 >>Accept The Lesson of the Iron Bough << Shaman
    .accept 30038 >>Accept The Lesson of the Iron Bough << Warrior
    .accept 30036 >>Accept The Lesson of the Iron Bough << Rogue
	.target Master Shang Xi
step << Hunter
    .isOnQuest 30034
    .goto 378,57.22,19.22
    >>Click the |cRXP_PICK_Weapon Rack|r for the |T537025:0|t[Trainee's Crossbow].
    .collect 73211,1 --Trainee's Crossbow (1)
step << Hunter
    .goto 378,57.22,19.22
    >>Equip the |T537025:0|t[Trainee's Crossbow].
    .complete 30034,1 --1/1 Loot and Equip a Trainee's Crossbow
    .use 73211 --Trainee's Crossbow
step << Mage
    .isOnQuest 30033
    .goto 378,57.22,19.22
    >>Click the |cRXP_PICK_Weapon Rack|r for the |T537771:0|t[Trainee's Spellblade] and |T654237:0|t[Trainee's Hand Fan].
    .collect 76390,1 --Trainee's Spellblade (1)
    .collect 76392,1, --Trainee's Hand Fan (1)
step << Mage
    .goto 378,57.22,19.22
    >>Equip the |T537771:0|t[Trainee's Spellblade] and |T654237:0|t[Trainee's Hand Fan].
    .complete 30033,1 --Loot and Equip a Trainee's Spellblade (1)
    .complete 30033,2 --Loot and Equip a Trainee's Hand Fan (1)
    .use 76390 --Trainee's Spellblade
    .use 76392 --Trainee's Hand Fan
step << Monk/Priest
    .isOnQuest 30027
    .goto 378,57.22,19.22
    >>Click the |cRXP_PICK_Weapon Rack|r for the |T537770:0|t[Trainee's Staff].
    .collect 73209,1 -Trainee's Staff (1)
step << Monk/Priest
    .goto 378,56.67,18.20
    >>Equip the |T537770:0|t[Trainee's Staff].
    .complete 30027,1 --Loot and Equip a Trainee's Staff
    .use 73209
step << Shaman
    .isOnQuest 30037
    .goto 378,57.22,19.22
    >>Click the |cRXP_PICK_Weapon Rack|r for the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield].
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1 --Trainee's Shield (1)
step << Shaman
    .goto 378,57.22,19.22
    >>Equip the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield].
    .complete 30037,1 --Loot and Equip a Trainee's Axe
    .complete 30037,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>Click the |cRXP_PICK_Weapon Rack|r for the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield].
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1  --Trainee's Shield (1)
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>Equip the |T537205:0|t[Trainee's Axe] and |T537769:0|t[Trainee's Shield].
    .complete 30038,1 --Loot and Equip a Trainee's Axe
    .complete 30038,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Rogue
    .isOnQuest 30036
    .goto 378,57.22,19.22
    >>Click the |cRXP_PICK_Weapon Rack|r for the |T537767:0|t[Trainee's Daggers].
    .collect 73208,1,30036,1,1 --Trainee's Dagger (ID 1)
    .collect 73212,1,30036,1,1 --Trainee's Dagger (ID 2)
step << Rogue
    .goto 378,57.22,19.22
    >>Equip the |T537767:0|t[Trainee's Daggers].
    .complete 30036,1 --Loot and Equip a Trainee's Dagger
    .complete 30036,2 --Loot and Equip a Second Trainee's Dagger
    .use 73208 --Trainee's Dagger (ID 1)
    .use 73212 --Trainee's Dagger (ID 2)
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
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
    >>Kill |cRXP_ENEMY_Training Targets|r.
    .complete 29406,1 --5/5 Training Targets destroyed
	.mob Training Target
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29406 >>Turn in The Lesson of the Sandy Fist
    .accept 29524 >>Accept The Lesson of Stifled Pride
	.target Master Shang Xi
step
    #completewith next
    --#title |cFFFCDC00Enter the house|r
    .goto 378,59.57,19.05,10 >>Enter the house
step
    .goto 378,60.26,19.35
    >>Defeat |cRXP_ENEMY_Sparring Trainees|r.
    *- |cRXP_WARN_There are more upstairs|r
    .complete 29524,1 --6/6 Sparring Trainees defeated
	.mob Tushui Trainee
	.mob Huojin Trainee
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29524 >>Turn in The Lesson of Stifled Pride
    .accept 29408 >>Accept The Lesson of the Burning Scroll
	.target Master Shang Xi
step
    .isOnQuest 29408
    >>|cFFFCDC00Follow the arrow upstairs|r
    .goto 378,59.97,18.58,8,0
    .goto 378,60.48,18.85,5,0
    .goto 378,60.20,18.89,5,0
    .goto 378,59.98,18.69,5,0
	.goto 378,60.46,19.60,8 >>|cRXP_WARN_Take the shortcut to the top floor by jumping through the gap under the second set of stairs|r.
step
    .goto 378,59.95,20.39
    >>Click the |cRXP_PICK_Banner|r at the top of the building.
    .complete 29408,2 --1/1 Burn the Edict of Temperance
step
	#completewith next
    --#title |cFFFCDC00Jump down|r
    .goto 378,60.19,19.35,6 >> |cRXP_WARN_Jump down|r.
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29408 >>Turn in The Lesson of the Burning Scroll
    .accept 29409 >>Accept The Disciple's Challenge
	.target Master Shang Xi
step
    .goto 378,67.78,22.75
    >>Defeat |cRXP_ENEMY_Jaomin Ro|r.
    .complete 29409,1 --1/1 Defeat Jaomin Ro
	.mob Jaomin Ro
step << Warrior
	#completewith Lorvo
    +Use |T132337:0|tCharge on critters to move faster
step
    .goto 378,65.97,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29409 >>Turn in The Disciple's Challenge
    .accept 29410 >>Accept Aysa of the Tushui
	.target Master Shang Xi
step
	#label Lorvo
    .goto 378,55.09,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Lorvo|r.
    .turnin 29410 >>Turn in Aysa of the Tushui
    .accept 29419 >>Accept The Missing Driver
    .accept 29424 >>Accept Items of Utmost Importance
	.target Merchant Lorvo
step
    #completewith next
    >>Kill |cRXP_ENEMY_Amberleaf Scamps|r. Loot them for the |T132622:0|t[|cRXP_LOOT_Stolen Training Supplies|r].
    .complete 29424,1 --6/6 Stolen Training Supplies
	.mob Amberleaf Scamp
step
    .goto 378,54.11,20.90
    --#title |cFFFCDC00Follow the arrow to |cFF00FF25Min Dimwind|r|r
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 29419,1 --1/1 Rescue the Cart Driver
	.target Min Dimwind
step
    #loop
    .goto 378,54.03,20.93,15,0
    .goto 378,54.02,17.44,15,0
    .goto 378,53.00,20.17,15,0
    .goto 378,52.89,24.41,20,0
    .goto 378,55.04,24.93,20,0
    .goto 378,53.08,31.58,20,0
    >>Kill |cRXP_ENEMY_Amberleaf Scamps|r and loot them for their |T132622:0|t[|cRXP_LOOT_Supplies|r].
    .complete 29424,1 --6/6 Stolen Training Supplies
	.target Amberleaf Scamp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Lorvo|r and |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29419,2 >>Turn in The Missing Driver
    .turnin 29424 >>Turn in Items of Utmost Importance
    .goto 378,55.11,32.40
    .accept 29414 >>Accept The Way of the Tushui
    .goto 378,55.10,32.55
	.target Merchant Lorvo
	.target Aysa Cloudsinger
step
	#completewith next
    --#title |cFFFCDC00Enter the cave|r
    .goto 378,57.21,31.04,30,0
    .goto 378,57.63,35.20,10 >> Enter the |cRXP_WARN_cave|r.
	.timer 87,Cave RP
step
    .goto 378,57.89,36.55
    >>Defend |cRXP_FRIENDLY_Aysa|r from the incoming |cRXP_ENEMY_Amberleaf Troublemakers|r.
    .complete 29414,1 --1/1 Protect Aysa while she meditates
	.mob Amberleaf Troublemaker
--step
--    #title Advanced
--    .isOnQuest 29414
--    >>|cFFFF0000Try out find out|r.
--    .goto 378,57.52,34.59,5 >>|cRXP_WARN_Staying near the entrance is faster but more dangerous|r.
step
    .goto 378,57.54,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29414 >>Turn in The Way of the Tushui
    .accept 29522 >>Accept Ji of the Huojin
	.target Master Shang Xi
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29522 >>Turn in Ji of the Huojin
    .accept 29417 >>Accept The Way of the Huojin
	.target Ji Firepaw
step
    #loop
    .goto 378,51.18,17.71,30,0
    .goto 378,49.56,18.31,30,0
    .goto 378,49.49,20.13,30,0
    .goto 378,49.23,24.48,30,0
    .goto 378,49.90,23.37,30,0
    .goto 378,46.12,20.46,30,0
    >>Kill |cRXP_ENEMY_Hozen|r.
    .complete 29417,1 --8/8 Fe-Feng attackers slain
	.mob Fe-Feng Hozen
    .mob Fe-Feng Brewthief
    .mob Fe-Feng Leaper
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29417 >>Turn in The Way of the Huojin
    .accept 29418 >>Accept Kindling the Fire
    .accept 29523 >>Accept Fanning the Flames
	.target Ji Firepaw
step << skip
    .isOnQuest 29523
    #completewith Fluttering Breeze
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key|r.
    *[2] Select |cRXP_WARN_Options|r.
    *[3] Navigate to |cRXP_WARN_Keybindings|r.
    *[4] Within |cRXP_WARN_Keybindings|r,find |cRXP_WARN_RestedXP Guides|r.
    *[5] Select and bind the |cRXP_WARN_Active Buttons|r.
step
#optional
    #completewith next
	>>Pick up |cRXP_PICK_Loose Dogwood Roots|r on the ground next to the trees.
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    .goto 378,47.24,31.32
	>>Use the |T519378:0|t[Wind Stone] |cRXP_WARN_at the Shrine|r to summon a |cRXP_ENEMY_Living Air|r.
    >>Kill it and loot a |T463565:0|t[|cRXP_LOOT_Fluttering Breeze|r].
    .complete 29523,1 --1/1 Fluttering Breeze
    .use 72109
	.mob Living Air
step
    #loop
    .goto 378,47.98,31.97,10,0
    .goto 378,46.07,27.94,10,0
    .goto 378,48.99,30.16,10,0
    .goto 378,46.83,34.88,10,0
    .goto 378,46.04,33.12,10,0
    .goto 378,46.17,27.09,10,0
    .goto 378,48.31,29.58,10,0
    .goto 378,50.06,31.41,10,0
    .goto 378,48.90,33.14,10,0
    .goto 378,49.58,36.46,10,0
    .goto 378,46.86,35.05,10,0
    .goto 378,46.01,33.12,10,0
    >>Pick up |cRXP_PICK_Loose Dogwood Roots|r on the ground next to the trees.
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r and |cRXP_FRIENDLY_Shang Xi|r.
    .turnin 29418 >>Turn in Kindling the Fire
    .turnin 29523 >>Turn in Fanning the Flames
    .goto 378,50.24,21.26
    .accept 29420 >>Accept The Spirit's Guardian
    .goto 378,50.29,21.47
	.target Ji Firepaw
	.target Master Shang Xi
step
   --#title |cFFFCDC00Enter the cave|r
    .goto 378,41.09,24.83,10 >> Enter the |cRXP_WARN_cave|r.
    .isOnQuest 29420
step
    .goto 378,40.75,23.86,10,0
    .goto 378,40.84,22.19,10,0
    .goto 378,40,22.77,10,0
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_Dodge the fire geysers|r. Talk to |cRXP_FRIENDLY_Master Li Fei|r.
    .turnin 29420 >>Turn in The Spirit's Guardian
    .accept 29664 >>Accept The Challenger's Fires
	.target Master Li Fei
 step
    >>Click on the |cRXP_PICK_Braziers|r.
    .complete 29664,1 --1/1 Challenger Torch lit
    .goto 378,38.71,25.39
    .complete 29664,4 --1/1 Violet Brazier lit
    .goto 378,38.25,24.87
    .complete 29664,2 --1/1 Red Brazier lit
    .goto 378,38.99,23.50
    .complete 29664,3 --1/1 Blue Brazier lit
    .goto 378,39.19,25.41
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Li Fei|r.
    .turnin 29664 >>Turn in The Challenger's Fires
    .accept 29421 >>Accept Only the Worthy Shall Pass
	.target Master Li Fei
step
    .goto 378,38.81,25.50
    >>Defeat |cRXP_ENEMY_Master Li Fei|r |cRXP_WARN_by reducing his health to 20%.|r
    .complete 29421,1 --1/1 Defeat Master Li Fei
	.mob Master Li Fei
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Li Fei|r.
    .turnin 29421,2 >>Turn in Only the Worthy Shall Pass
    .accept 29422 >>Accept Huo, the Spirit of Fire
	.target Master Li Fei
step
    #completewith next
    #label ReigniteSpiritOfFire
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out|r.
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
    .use 72583
    .target Huo
step
	#completewith next
    --#title |cFFFCDC00Run up the ramp.|r Use |T133662:0|t[Huo's Offerings]
    .goto 378,39.41,29.55
	.cast 102522 >>Use |T133662:0|t[Huo's Offerings] on |cRXP_FRIENDLY_Huo|r.
	.timer 11, Huo the Spirit of Fire RP
	.use 72583
    .target Huo
    .isOnQuest 29420
step
    #requires ReigniteSpiritOfFire
    .goto 378,39.41,29.55
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out|r.
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
    .use 72583
    .target Huo
step
    .goto 378,39.41,29.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huo|r.
    .turnin 29422 >>Turn in Huo, the Spirit of Fire
    .accept 29423 >>Accept The Passion of Shen-zin Su
	.target Huo
step
    --#title |cFFFCDC00Leave the cave|r
    .goto 378,40.12,25.50,20,0
    .goto 378,41.48,25.05,20,0
    .goto 378,42.0,25.29
    .subzone 5849,1 >>Leave the cave
step
	#completewith next
    --#title |cFFFCDC00Follow the arrow|r
    .goto 378,51.04,30.62,20,0
    .goto 378,51.89,35.93,20,0
    .goto 378,50.12,38.94,15,0
    .goto 378,50.32,37.48,20,0
    .goto 378,51.58,40.46
    .subzone 5820 >> Travel to the |cRXP_WARN_Temple of Five Dawns|r.
step
    .goto 378,51.41,46.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29423 >>Turn in The Passion of Shen-zin Su
    .accept 29521 >>Accept The Singing Pools
	.target Master Shang Xi
step
    .isOnQuest 29521
    .goto 378,51.83,46.08
    .home >>Set Hearthstone to |cRXP_WARN_the Temple of Five Dawns|r.
	.target Cheng Dawnscrive
step
    .isOnQuest 29521
    .goto 378,53.22,47.45,10,0
    .goto 378,57.12,46.63,10,0
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whittler Dewei|r.
    .train 2366 >> Train Herbalism
    .target Whittler Dewei

    .skipgossipid 112959
    .skipgossipid 130364
    .skipgossipid 112911
step
    .isOnQuest 29521
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whittler Dewei|r.
    .train 2575 >> Train Mining
	.target Whittler Dewei
    .skipgossipid 130364
    .skipgossipid 112912
    .skipgossipid 112975

step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .accept 29662 >>Accept Stronger Than Reeds
	.target Jojo Ironbrow
step
    #completewith JumpOnPole
    +|cRXP_WARN_Mining/Herbalism nodes gives 1 mob worth of xp this expansion, remember to collect nearby nodes. You can collect all types of nodes regardless of your profession skill|r.
step
    #completewith next
    +|cRXP_WARN_In this area, some water turns you into an animal, boosting your movement speed|r.
step
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29521 >>Turn in The Singing Pools
    .accept 29661 >>Accept The Lesson of Dry Fur
    .accept 29663 >>Accept The Lesson of the Balanced Rock
	.target Aysa Cloudsinger

step
    #completewith RingTrainingBell
	>>Defeat the |cRXP_ENEMY_Tushui Monks|r on the poles.
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    .isOnQuest 29663
    .isQuestNotComplete 29663
    #label JumpOnPole
    .goto 378,63.37,45.17
	.vehicle >> Click on a |cRXP_PICK_Balance Pole|r |cRXP_WARN_while you are not in the water/are a frog|r.
step
    #label RingTrainingBell
    .goto 378,61.41,47.81
    >>|cRXP_WARN_Click on |cRXP_PICK_Balance Poles|r to jump wards the |cRXP_PICK_ Training Bell|r.|r
    >> Click on the |cRXP_PICK_Training Bell|r
    .complete 29661,1 --1/1 Ring the Training Bell
step
    #completewith next
    >>Click on the |cRXP_PICK_Hard Tearwood Reeds|r.
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    #loop
    .goto 378,63.22,45.17,20,0
    .goto 378,62.25,50,15,0
    .goto 378,60.43,48.97,15,0
    .goto 378,62.22,44.33,15,0
	>>Defeat the |cRXP_ENEMY_Tushui Monks|r on the poles.
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    #completewith next
    --#title |cFFFCDC00Exit the vehicle|r
    .exitvehicle >>|cRXP_WARN_Exit the vehicle|r
step
    #loop
    .goto 378,62.85,49.06,20,0
    .goto 378,60.53,49.31,20,0
    .goto 378,60.82,45.70,20,0
    .goto 378,63.15,44.17,20,0
    >>Click on the |cRXP_PICK_Hard Tearwood Reeds|r.
    *|cRXP_WARN_If you stay at the edge then the |cRXP_ENEMY_Whitefeather Cranes|r won't attack you.|r
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .turnin 29662 >>Turn in Stronger Than Reeds
	.target Jojo Ironbrow
step
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29661 >>Turn in The Lesson of Dry Fur
    .turnin 29663 >>Turn in The Lesson of the Balanced Rock
    .accept 29676 >>Accept Finding an Old Friend
	.target Aysa Cloudsinger
step
    #completewith next
    +|cRXP_WARN_In this area, purple water ponds turns you into an animal, boosting your movement speed|r.
step
    .goto 378,72.15,37.88,13,0
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Liang|r.
    .turnin 29676 >>Turn in Finding an Old Friend
    .accept 29666 >>Accept The Sting of Learning
    .accept 29677 >>Accept The Sun Pearl
	.target Old Man Liang
step
    #loop
    .goto 378,74.94,38.46,30,0
    .goto 378,72.21,46.53,30,0
    .goto 378,71.47,52.26,30,0
    >>Kill |cRXP_ENEMY_Water Pincers|r.
    .complete 29666,1 --6/6 Water Pincer slain
    .mob Water Pincer
step
    .goto 378,76.21,46.87
    >>Click the |cRXP_PICK_Ancient Clam|r |cRXP_WARN_underwater|r.
    >>|cRXP_WARN_You don't need to kill|r |cRXP_ENEMY_Fang-she|r.
    .complete 29677,1 --1/1 Sun Pearl
    .mob Fang-she
step
    .goto 378,78.47,42.85
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Liang|r.
    >>|cRXP_WARN_If for some reason you can't find the quest giver, head back to his house west|r
    .turnin 29666 >>Turn in The Sting of Learning
    .turnin 29677 >>Turn in The Sun Pearl
    .accept 29678 >>Accept Shu, the Spirit of Water
	.target Old Man Liang
step
	.isOnQuest 29678
    .goto 378,79.66,41.83,4,0
    .goto 378,79.61,38.72
    >>|cRXP_WARN_Walk on top of the glowing circles|r. This will allow you to jump |cRXP_WARN_toward the pool|r.
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step
    .goto 378,79.59,38.58
    >>Use the |T463854:0|t[Sun Pearl] on the |cRXP_WARN_water's surface|r.
    .complete 29678,2 --1/1 Coax Shu, the Water Spirit
    .use 73791
step
    .goto 378,79.82,39.31
    >>Click the Quest Turnin Pop-Up in your Questlog.
    .turnin 29678 >>Turn in Shu, the Spirit of Water
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .accept 29679 >>Accept A New Friend
	.target Aysa Cloudsinger
step
    .goto 378,79.11,37.77
    >>Follow |cRXP_FRIENDLY_Shu|r closely as he moves around. |cRXP_WARN_Walk on top of the spouting water next to it|r.
    .complete 29679,1 --5/5 Play with the Spirit of Water
	.target Shu
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29679 >>Turn in A New Friend
    .accept 29680 >>Accept The Source of Our Livelihood
	.target Aysa Cloudsinger
step
    .goto 378,76.57,57.36,40,0
    .goto 378,68.89,64.98
	>>|cRXP_WARN_The |cRXP_PICK_Delivery Cart|r is slower than running manually|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29680 >>Turn in The Source of Our Livelihood
    .accept 29769 >>Accept Rascals
    .target Ji Firepaw
step
    .goto 378,68.13,66.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gao Summerdraft|r.
    .accept 29770 >>Accept Still Good!
	.target Gao Summerdraft
step
	#completewith Carrots
    >>Kill |cRXP_ENEMY_Plump Virmens|r.
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
    .mob Plump Carrotcatcher
step
    .goto 378,70.11,77.63,15,0
    .goto 378,69.55,79.23,15,0
    .goto 378,70.84,80.41,15,0
    .goto 378,71.46,78.11,15,0
#loop
	.line 378,70.11,77.63,69.55,79.23,70.84,80.41,71.46,78.11
	.goto 378,70.11,77.63,10,0
	.goto 378,69.55,79.23,10,0
	.goto 378,70.84,80.41,10,0
	.goto 378,71.46,78.11,10,0
    >>Click the |cRXP_PICK_Turnips|r.
    .complete 29770,1 --3/3 Uprooted Turnip
step
    .goto 378,75.54,72.25,20,0
    .goto 378,77.79,71.81,20,0
    .goto 378,78.01,72.56,15,0
    .goto 378,78.85,70.76,20,0
    .goto 378,78.6,69.74,20,0
#loop
	.line 378,77.35,70.51,78.12,72.61,78.82,70.88,78.6,69.75
	.goto 378,77.35,70.51,10,0
	.goto 378,78.12,72.61,10,0
	.goto 378,78.82,70.88,10,0
	.goto 378,78.60,69.75,10,0
    >>Click the |cRXP_PICK_Pumpkin|r.
    .complete 29770,3 --3/3 Pilfered Pumpkin
step
	.isOnQuest 29770
    .goto 378,77.05,71.02,10 >> Enter |cRXP_WARN_the cave|r.
step
	#label Carrots
    .goto 378,76.1,71.26,15,0
    .goto 378,75.57,72.94,15,0
    .goto 378,73.97,72.58,15,0
    .goto 378,73.94,70.86,15,0
    .goto 378,74.7,74.76,15,0
#loop
	.line 378,73.97,72.58,73.94,70.86,74.7,74.76
	.goto 378,73.97,72.58,5,0
	.goto 378,73.94,70.86,5,0
	.goto 378,74.70,74.76,5,0
    >>Kill |cRXP_ENEMY_Plump Carrotcatchers|r and loot them for their [|cRXP_LOOT_Carrots|r. You can also click the |cRXP_PICK_Carrots|r]. on the ground.
    .complete 29770,2 --3/3 Stolen Carrot
	.mob Plump Carrotcatcher
step
	.isOnQuest 29770
    .goto 378,74.99,69.42,10 >> Leave |cRXP_WARN_the cave|r.
step
    .goto 378,74.73,67.2,15,0
    .goto 378,72.67,69.48,15,0
    .goto 378,70.75,71.61,15,0
    .goto 378,69.4,69.74,15,0
#loop
	.line 378,77.89,70.13,77.36,70.49,77.85,71.75
	.goto 378,77.89,70.13,10,0
	.goto 378,77.36,70.49,10,0
	.goto 378,77.85,71.75,10,0
    >>Kill |cRXP_ENEMY_Plump Virmens|r.
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gao Summerdraft|r, |cRXP_FRIENDLY_Ji Firepaw|r, and |cRXP_FRIENDLY_Jojo Ironbrow|r.
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
	>>Click the |cRXP_PICK_Wood Planks|r.
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    .goto 378,62.63,77.05
	>>Click the |cRXP_PICK_Mallet|r |cRXP_WARN_on the barrel|r.
    >>|cRXP_WARN_You don't have to kill |cRXP_ENEMY_Raggis|r. if you can avoid it|r.
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
	>>Click on the |cRXP_PICK_Wood Planks|r |cRXP_WARN_on the floor|r.
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r and |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29771 >>Turn in Stronger Than Wood
    .goto 378,69.16,66.71
    .turnin 29768 >>Turn in Missing Mallet
    .accept 29772 >>Accept Raucous Rousing
	.goto 378,68.89,64.98
    .target Jojo Ironbrow
    .target Ji Firepaw
step
    .goto 378,68.95,64.80
    >>Click on the |cRXP_PICK_Gong|r.
    .complete 29772,1 --1/1 Ring the town gong
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29772 >>Turn in Raucous Rousing
    .accept 29774 >>Accept Not In the Face!
	.target Ji Firepaw
step
    .goto 378,68.98,62.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shu|r.
    .complete 29774,1 --1/1 Ask Shu for help
	.timer 15,Roleplay
	.target Shu
    .skipgossipid 39250
step
    .goto 378,68.89,64.98
    >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29774 >>Turn in Not In the Face!
    .accept 29775 >>Accept The Spirit and Body of Shen-zin Su
	.target Ji Firepaw
step
	.isOnQuest 29775
    .goto 378,58.86,63.38,40,0
    .goto 378,55.23,58.57,40,0
    .goto 378,51.48,57.40,20 >>Travel to the Temple of the Five Dawns
	>>|cRXP_WARN_The |cRXP_PICK_Delivery Cart|r is slower than running manually.|r
    .subzoneskip 5820--temple of five dawns
step
    .goto 378,51.59,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29775 >>Turn in The Spirit and Body of Shen-zin Su
    .accept 29776 >>Accept Morning Breeze Village
	.timer 20,Morning Breeze Village RP
	.target Master Shang Xi
step
    .isOnQuest 29776
    .goto 378,51.46,48.93,7 >>|cRXP_WARN_Wait for the brief roleplay, which will be completed when the timer runs out|r.
step
    #completewith next
    .subzoneskip 5830
	.isOnQuest 29776
    .goto 378,51.01,49.05,10,0
    .goto 378,40.19,50.79,20,0
    .goto 378,34.91,50.73,15,0
    .goto 378,33.1,42.6,15,0
    .goto 378,30.42,37.50,20 >>Travel to |cRXP_WARN_Morning Breeze Village|r.
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 29776 >>Turn in Morning Breeze Village
    .accept 29778 >>Accept Rewritten Wisdoms
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .accept 29783 >>Accept Stronger Than Stone
	.target Jojo Ironbrow
step
    .goto 378,31.78,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shaopai|r.
    .accept 29777 >>Accept Tools of the Enemy
	.target Elder Shaopai
step
    .isOnQuest 29777
    #completewith Defaced Scroll of Wisdom burned
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shen Stonecarver|r.
    .vendor >>|cRXP_WARN_Sell and repair if you need to|r.
    .target Shen Stonecarver
step
    #completewith Defaced Scroll of Wisdom burned
    >>Kill |cRXP_ENEMY_Fe-Feng Wisemans|r and loot them for their [|cRXP_LOOT_Brushes|r].
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    #completewith Defaced Scroll of Wisdom burned
    >>Click the |cRXP_PICK_Stone Blocks|r.
    .complete 29783,1 --12/12 Abandoned Stone Block
step
    .goto 378,30.3,42.95,15,0
    .goto 378,29.49,45.36,15,0
    .goto 378,29.11,47.53,15,0
    .goto 378,29.78,47.67,15,0
    .goto 378,29.21,48.57,15,0
    .goto 378,28.37,49.37,15,0
    .goto 378,27.16,49.67,15,0
    .goto 378,28.54,49.93,15,0
    .goto 378,29.12,51.09,15,0
    .goto 378,31.19,47.97,15,0
    .goto 378,32.49,46.63,15,0
    .goto 378,33.13,46.32,15,0
#loop
	.line 378,33.42,50.88,32.57,53.31,28.71,50.23
	.goto 378,33.42,50.88,15,0
	.goto 378,32.57,53.31,15,0
	.goto 378,28.71,50.23,15,0
    #label Defaced Scroll of Wisdom burned
    >>Click the |cRXP_PICK_Banners|r on the monuments.
    .complete 29778,1 --5/5 Defaced Scroll of Wisdom burned
step
    #completewith next
    >>Kill |cRXP_ENEMY_Fe-Feng Wisemans|r and loot them for their [|cRXP_LOOT_Brushes|r].
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    .goto 378,31.18,47.97,15,0
    .goto 378,32.57,46.43,15,0
    .goto 378,33.66,47.21,15,0
    .goto 378,33.99,50.9,15,0
    .goto 378,33.06,52.27,15,0
    .goto 378,32.16,50.53,15,0
    .goto 378,31.32,52.22,15,0
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>Click the |cRXP_PICK_Stone Blocks|r.
    .complete 29783,1 --12/12 Abandoned Stone Block
step
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>Kill |cRXP_ENEMY_Fe-Feng Wisemans|r and loot them for their [|cRXP_LOOT_Brushes|r].
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    .goto 378,31.751,39.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shaopai|r
    .target Elder Shaopai
    .turnin 29777 >>Turn in Tools of the Enemy
step
    .goto 378,29.969,39.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r
    .target Jojo Ironbrow
    .turnin 29783 >>Turn in Stronger Than Stone
step
    .goto 378,30.950,36.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .target Ji Firepaw
    .turnin 29778 >>Turn in Rewritten Wisdoms
    .accept 29779 >>Accept The Direct Solution
    .accept 29780 >>Accept Do No Evil
    .accept 29781 >>Accept Monkey Advisory Warning
step
	.isOnQuest 29779
    .goto 378,29.28,39.98,15,0
    .goto 378,27.42,36.25,30,0
    .goto 378,26.42,33.68,30 >> Travel to the |cRXP_WARN_Jade Pillar|r.
step
	#completewith next
	>>Kill |cRXP_ENEMY_Fe-Feng Hozen|r.
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
    .goto 378,26.42,33.68
    >>Click the |cRXP_FRIENDLY_Jade Pillar|r.
    .accept 29782 >>Accept Stronger Than Bone
step
    #completewith next
	>>Click the |cRXP_PICK_Firework Bundles|r.
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
    .goto 378,26.75,31.86,15,0
    .goto 378,27.49,29.61,15,0
    .goto 378,25.72,29.91,15,0
    .goto 378,24.24,30.84,15,0
    .goto 378,20.52,34.6,10,0
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
	>>Kill |cRXP_ENEMY_Fe-Feng Hozen|r.
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
    .goto 378,26.08,35.17,15,0
    .goto 378,20.94,34.43
	>>Kill |cRXP_ENEMY_Ruk-Ruk|r.
    .complete 29780,1 --1/1 Ruk-Ruk slain
	.mob Ruk-Ruk
step
    #completewith next
	>>Click the |cRXP_PICK_Firework Bundles|r.
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
    >>Kill |cRXP_ENEMY_Fe-Feng Hozen|r.
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
	>>Click the |cRXP_PICK_Firework Bundles|r.
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw, who should be next to you. |cFFFF0000If he isn't there, skip this step|r.
    .turnin 29779 >>Turn in The Direct Solution
    .turnin 29780 >>Turn in Do No Evil
    .turnin 29781 >>Turn in Monkey Advisory Warning
    .accept 29784 >>Accept Balanced Perspective
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .turnin 29782 >>Turn in Stronger Than Bone
	.target Jojo Ironbrow
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
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
    .goto 378,32.94,35.61,8 >>|cRXP_WARN_Carefully|r walk over the rope.
step
	#label BalancedP
    .goto 378,32.94,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29784 >>Turn in Balanced Perspective
    .accept 29785 >>Accept Dafeng, the Spirit of Air
	.target Aysa Cloudsinger
step
	#sticky
	#label Temple1
    .goto 378,30.21,38.57,20,0
    .goto 378,28.94,62.89,20 >>Travel |cRXP_WARN_to the Temple|r.
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
    .goto 378,26.64,66.63,10 >> Run toward |cRXP_FRIENDLY_Dafeng|r after the winds in the next room subside.
	.isOnQuest 29785
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dafeng|r and |cRXP_FRIENDLY_Aysa|r.
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
	>>Click |cRXP_PICK_Firework Launchers|r when |cRXP_ENEMY_Zhao-Ren|r is over them to damage him. He circles counter-clockwise. |cRXP_WARN_Avoid his Lightning puddles|r. Damage him when he lands. Kill him when he lands the second time
    .complete 29786,1 --1/1 Zhao-Ren slain
	.target Zhao-Ren
step
    .goto 378,29.99,60.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29786 >>Turn in Battle for the Skies
    .accept 29787 >>Accept Worthy of Passing
	.target Master Shang Xi
step
	#completewith next
    .goto 378,26.32,52.83,20,0
    .goto 378,22.70,52.80,40 >>Travel |cRXP_WARN_to The Elders' Path|r.
step
    .goto 378,22.70,52.80
	>>Kill the |cRXP_ENEMY_Guardian of the Elders|r.
    .complete 29787,1 --1/1 Guardian of the Elders slain
	.timer 19,Worthy of Passing RP
	.target Guardian of the Elders
step
    .goto 378,19.45,51.22
	>>Wait out the RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
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
	>>Kill |cRXP_ENEMY_Thornbranch Scamps|r and loot the |cRXP_PICK_Charms|r hanging from the trees.
    .complete 29788,1 --8/8 Thornbranch Scamp slain
    .complete 29789,1 --8/8 Kun-Pai Ritual Charm
	.target Thornbranch Scamp
step
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Shang Xi|r.
    .turnin 29788 >>Turn in Unwelcome Nature
    .turnin 29789 >>Turn in Small, But Significant
    .accept 29790 >>Accept Passing Wisdom
	.timer 83,Passing Wisdom RP
	.target Master Shang Xi
step
    .goto 378,17.29,50.78
    >>Wait out the RP at the arrow location
    >>|cRXP_WARN_If you go past that, Shang Xi will despawn|r. If that happens, abandon the quest and start the RP again.
    .complete 29790,1 --1/1 Listen to Master Shang Xi
	.target Master Shang Xi
step
    .goto 378,15.79,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 29790 >>Turn in Passing Wisdom
    .accept 29791 >>Accept The Suffering of Shen-zin Su
	.target Aysa Cloudsinger
step
    .goto 378,15.55,48.91
    >>Click the |cRXP_PICK_Air Balloon|r to Board it.
    .complete 29791,1 --1/1 Board the Hot Air Balloon
	.timer 231,The Suffering of Shen-zin Su RP
step
    .goto 378,30.8,92.9
	>>|cRXP_WARN_Wait out the RP|r.
    .complete 29791,2 --1/1 Uncover the source of Shen-zin Su's pain
step
    .goto 378,51.35,57.21,20,0
    .goto 378,51.31,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaopai|r.
    .turnin 29791 >>Turn in The Suffering of Shen-zin Su
    .accept 29792 >>Accept Bidden to Greatness
	.target Elder Shaopai
step
    .goto 378,51.60,61.39
    --#title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Follow the arrow|r.
    .complete 29792,1 --1/1 Open the Mandori Village Gate
step
	#completewith next
    .goto 378,50.66,65.62,20,0
    .goto 378,52.28,68.43,30 >>Travel |cRXP_WARN_to the Pei-Wu Gate|r.
	.timer 28,Pei-Wu Gate RP
step
    .goto 378,52.28,68.43
    >>|cFFFCDC00Follow the arrow|r. Wait for the RP
    .complete 29792,2 --1/1 Open the Pei-Wu Forest Gate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wei|r and |cRXP_FRIENDLY_Korga|r.
    .turnin 29792 >>Turn in Bidden to Greatness
    .accept 30591 >>Accept Preying on the Predators
    .goto 378,50.07,76.63
    .accept 29795 >>Accept Stocking Stalks
    .goto 378,50.22,76.65
	.target Wei Palerage
	.target Korga Strongmane
step
    #loop
	.line 378,54.51,85.54,45.05,85.81,45.89,71.57,55.62,69.49,54.51,85.54
	.goto 378,54.51,85.54,40,0
	.goto 378,45.05,85.81,40,0
	.goto 378,45.89,71.57,40,0
	.goto 378,55.62,69.49,40,0
	.goto 378,54.51,85.54,40,0
    >>Kill |cRXP_ENEMY_Pei-Wu Tigers|r.
    >>Click on the |cRXP_PICK_Bamboo Stalks|r |cRXP_WARN_on the ground|r.
    .complete 30591,1 --9/9 Pei-Wu Tiger slain
    .complete 29795,1 --10/10 Broken Bamboo Stalk
	.mob Pei-Wu Tiger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wei|r and |cRXP_FRIENDLY_Korga|r.
    .turnin 30591 >>Turn in Preying on the Predators
    .goto 378,50.07,76.63
    .turnin 29795 >>Turn in Stocking Stalks
    .accept 30589 >>Accept Wrecking the Wreck
    .goto 378,50.22,76.65
	.target Wei Palerage
	.target Korga Strongmane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makael|r and |cRXP_FRIENDLY_Ji|r.
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
    >>Kill |cRXP_ENEMY_Darkened Horrors|r and |cRXP_ENEMY_Terrors|r. |cRXP_WARN_Be careful of the Horrors' Shadow Geysers|r.
	>> on the |cRXP_PICK_Explosion Bundles|r on the ground
    .complete 29793,1 --8/8 Darkened Horrors or Darkened Terrors slain
    .complete 30590,1 --6/6 Packed Explosion Charge
	.mob Darkened Horror
	.mob Darkened Terror
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makael Bay|r and |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 30590 >>Turn in Handle With Care
    .goto 378,36.32,72.36
    .turnin 29793 >>Turn in Evil from the Seas
    .accept 29796 >>Accept Urgent News
    .goto 378,36.37,72.53
	.target Makael Bay
	.target Ji Firepaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delora Lionheart|r and |cRXP_FRIENDLY_Jojo Ironbrow|r.
    .turnin 29796 >>Turn in Urgent News
    .accept 29794 >>Accept None Left Behind
    .accept 29797 >>Accept Medical Supplies
    .goto 378,42.21,86.54
    .accept 29665 >>Accept From Bad to Worse
    .goto 378,42.30,86.35
	.target Delora Lionheart
	.target Jojo Ironbrow
step
	#completewith InjuredSailorB
    >>Kill |cRXP_ENEMY_Deepscale Tormentors|r.
    >>Click on the |cRXP_PICK_Medical Crates|r on the ground.
    .complete 29665,1 --8/8 Deepscale Tormentor slain
    .complete 29797,1 --8/8 Alliance Medical Supplies
	.mob Deepscale Tormentor
step
    .waypoint 378,42.27,86.80,-129340,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,42.27,86.80,-105520,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,40.18,87.69,10
    .waypoint 378,40.01,84.36,10
    .waypoint 378,38.08,84.73,10
    .waypoint 378,38.41,83.09,10
    .waypoint 378,37.60,81.44,10
    .waypoint 378,35.49,83.80,10
    .waypoint 378,36.17,87.63,10
    .waypoint 378,37.66,87.22,10
    .waypoint 378,38.36,87.43,10
    .goto 378,40.18,87.69
    .complete 29794,1,2>>Pick up an |cRXP_FRIENDLY_Injured Sailor|r on the ground and bring him back to the quest giver. Do that at least 2 times
    .target Injured Sailor
step << skip
    #optional
    #completewith next
    #label InjuredSailorA
    .goto 378,42.27,86.80,0,0
    >>Carry the |cRXP_FRIENDLY_Injured Sailor|r back to |cRXP_FRIENDLY_Delora's|r Camp.
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorA
    .goto 378,40.18,87.69
	.cast 56685 >>Pick up an |cRXP_FRIENDLY_Injured Sailor|r on the ground
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorA
    .goto 378,42.27,86.80
    >>Carry the |cRXP_FRIENDLY_Injured Sailor|r back to |cRXP_FRIENDLY_Delora's|r Camp.
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
    #completewith next
	#label InjuredSailorB
    .goto 378,42.27,86.80,0,0
    >>Carry the |cRXP_FRIENDLY_Injured Sailor|r back to |cRXP_FRIENDLY_Delora's|r Camp.
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorB
    .goto 378,39.41,87.98
	.cast 56685 >>Pick up the |cRXP_FRIENDLY_Injured Sailor|r.
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorB
    .goto 378,42.27,86.80
    >>Carry the |cRXP_FRIENDLY_Injured Sailor|r back to |cRXP_FRIENDLY_Delora's|r Camp.
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step
#optional
#label InjuredSailorB
step
    #optional
    #loop
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
    .goto 378,36.41,85.51,15,0
    .goto 378,36.82,89.24,15,0
    >>Kill |cRXP_ENEMY_Deepscale Tormentors|r.
    >>Click on the |cRXP_PICK_Medical Crates|r on the ground.
	>>|cRXP_WARN_Don't pick up a new Sailor yet|r.
    .complete 29665,1 --8/8 Deepscale Tormentor slain
    .complete 29797,1 --8/8 Alliance Medical Supplies
	.mob Deepscale Tormentor
step
    #label InjuredSailorC
    #completewith next
    .goto 378,42.27,86.80,0,0
    >>Carry the |cRXP_FRIENDLY_Injured Sailor|r back to |cRXP_FRIENDLY_Delora Lionheart's|r Camp.
    .complete 29794,1 --3/3 Injured Sailors rescued
step
	#completewith InjuredSailorC
    .goto 378,38.36,87.43,10,0
    .goto 378,37.66,87.22,10,0
    .goto 378,36.17,87.63,10,0
    .goto 378,35.49,83.80,10,0
    .goto 378,37.60,81.44,10,0
    .goto 378,38.41,83.09,10,0
    .goto 378,38.08,84.73,10,0
    .goto 378,40.01,84.36,10,0
    .goto 378,40.18,87.69
	.cast 56685 >>Pick up the |cRXP_FRIENDLY_Injured Sailor|r.
	.isOnQuest 29794
	.target Injured Sailor
step
    #requires InjuredSailorC
    .goto 378,42.27,86.80
    >>Carry the |cRXP_FRIENDLY_Injured Sailor|r back to |cRXP_FRIENDLY_Delora Lionheart's|r Camp.
    .complete 29794,1 --3/3 Injured Sailors rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delora Lionheart|r and |cRXP_FRIENDLY_Jojo Ironbrow|r.
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
    >>Kill |cRXP_ENEMY_Vordraka, The Deep Sea Nightmare|r.
    *- |cRXP_WARN_Dodge his Deep Sea Smash|r.
    *- Kill |cRXP_ENEMY_Deepscale Aggressors|r when they spawn.
    .complete 29798,1 --1/1 Vordraka, the Deep Sea Nightmare slain
	.mob Vordraka, The Deep Sea Nightmare
    .mob Deepscale Aggressor
step
    .goto 378,36.50,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
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
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .complete 30767,1 --1/1 Shen-zin Su's Thorn Removed
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
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
    >>Click on the |cRXP_PICK_Loose Wreckages|r and help |cRXP_FRIENDLY_Alliance Priests|r and |cRXP_FRIENDLY_Horde Druids|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alliance Priests|r and |cRXP_FRIENDLY_Horde Druids|r
    *- |cRXP_WARN_Kill |cRXP_ENEMY_Dampscale Fleshrippers|r if they're attacking them.|r
    .complete 29799,1 --1/1 Protect the healers
	.target Alliance Priest
	.target Horde Druid
	.mob Dampscale Fleshripper
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 29799 >>Turn in The Healing of Shen-zin Su
	.timer 18,The Healing of Shen-zin Su RP
	.target Ji Firepaw
step
    >>|cRXP_WARN_Wait out the RP|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .goto 378,38.77,86.32
    .accept 29800 >>Accept New Allies
	.target Ji Firepaw
step
    #completewith next
    .hs >> Hearthstone |cRXP_WARN_to the Temple of Five Dawns|r.
step
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit of Shang Xi|r and select your Faction.
	>>|cRXP_WARN_Press "Escape" on your keyboard to skip the cinematic|r.
    .turnin 29800 >>Turn in New Allies
    .accept 31450 >>Accept A New Fate
    .complete 31450,1 --1/1 Choose your faction
    .skipgossip
	.target Spirit of Shang Xi
step
    .zoneskip 84
    .goto 1,45.58,12.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r.
    .turnin 31450 >>Turn in A New Fate
    .accept 31012 >>Accept Joining the Horde
    .target Ji Firepaw
step
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r.
    .turnin 31450 >>Turn in A New Fate
	.accept 30987 >>Accept Joining the Alliance
	.target Aysa Cloudsinger
step
#optional
.neutralzonefinished
step <<skip
--TODO: skip this? the whole trip to SW keep is way too long
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Varian Wrynn|r.
	.turnin 30987 >>Turn in Joining the Alliance
	.target King Varian Wrynn
    .neutralzonefinished
step
    .zoneskip 84
    #completewith next
    .goto 85,49.87,75.52,20 >> Go |cRXP_WARN_inside Grommash Hold|r.
step
    .zoneskip 84
    .goto 85,48.76,70.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garrosh Hellscream|r.
    .turnin 31012 >> Turn in Joining the Horde
    .target Garrosh Hellscream
    .neutralzonefinished
step
.zoneskip 84
.zoneskip 1
.zoneskip 85
+Congratulations, you just finished the pandaren starting zone, please click on the cogwheel button under the RXP window and select the appropriate follow-up guide
]])
