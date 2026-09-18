local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 1-6 Durotar
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_You have selected a guide meant for Orcs and Trolls. You should choose the same starter zone that you start in|r
step << !Troll Mage
    #season 2
    #completewith next
    +In Season of Discovery, you should NOT start outside of your race's starter zone as a Mage, as you will be unable to get your first rune here (|T133816:0|t[Engrave Gloves - Ice Lance])
step
    .goto 1411/1,-4251.46,-607.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Accept Your Place In The World
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_Kill |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 35 copper worth of vendor items (including your armor)|r << Warlock
    +|cRXP_WARN_Kill |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Accept Vile Familiars
    .target Ruzan
step << Warrior/Shaman
    .goto 1411/1,-4214.45,-565.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto 1411/1,-4198.58,-602.41,12,0 << Warrior/Shaman
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Turn in Your Place In The World
    .accept 788 >>Accept Cutting Teeth
    .accept 97279 >>Accept Wayward Weapons
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto 1411/1,-4230.31,-639.43 << Warrior
    .goto 1411/1,-4203.87,-623.92 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Train |T132333:0|t[Battle Shout] << Warrior
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto 1411/1,-4111.87,-607.00,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Accept Stolen Power
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Nartok
step << Warlock
    #season 0
    #label Nartok
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step
    #completewith Boars
    >>Loot |cRXP_PICK_Abandoned Training Weapons|r on the ground
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith next
    .goto 1411/1,-4266.26,-563.29,25,0
    >>Kill |cRXP_ENEMY_Mottled Boars|r en route to the Burning Blade Coven
    >>|cRXP_WARN_Try to get to level 2 before getting there|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >> Travel toward the Burning Blade Coven
    .isOnQuest 1485
step << Warlock
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Kill |cRXP_ENEMY_Vile Familiars|r. Loot them for |cRXP_LOOT_Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto 1411/1,-4266.26,-563.29,35,0 << !Warlock
    .goto 1411/1,-4283.18,-512.53,45,0 << !Warlock
    >>Kill |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Accept Sarkoth
    .target Hana'zua
step
    #season 2
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Kill |cRXP_ENEMY_Sarkoth|r. Loot him for |cRXP_LOOT_Sarkoth's Mangled Claw|r << !Hunter !Warrior
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    #season 0
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Kill |cRXP_ENEMY_Sarkoth|r. Loot him for |cRXP_LOOT_Sarkoth's Mangled Claw|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Turn in Sarkoth
    .accept 804 >>Accept Sarkoth
    .target Hana'zua
step
    #loop
    .goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    >>Kill |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 3+325 >> Grind to 325+/1400xp << Warlock
    .xp 3+925 >> Grind to 925+/1400xp << Warrior/Shaman/Hunter
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 3+685 >> Grind to 685+/1400xp
    .mob Mottled Boar
step
    #optional
    #label Boars
step
    .goto 1411/1,-4260.000,-404.200
    >>Loot |cRXP_PICK_Abandoned Training Weapons|r on the ground
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver worth of vendor items|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 2 silver worth of vendor items|r << Warrior
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver 75 copper worth of vendor items|r << Warlock
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver 10 copper worth of vendor items|r << Hunter
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver worth of vendor items|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Turn in Vile Familiars
    .accept 1499 >>Accept Vile Familiars
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
step << Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto 1411/1,-4198.58,-602.41,12,0 << !Warlock
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Turn in Cutting Teeth << Shaman
    .turnin 788 >>Turn in Cutting Teeth << !Shaman
    .accept 789 >>Accept Sting of the Scorpid
    .accept 2383 >>Accept Simple Parchment << Orc Warrior
    .accept 3065 >>Accept Simple Tablet << Troll Warrior
    .accept 3082 >>Accept Etched Tablet << Troll Hunter
    .accept 3083 >>Accept Encrypted Tablet << Troll Rogue
    .accept 3084 >>Accept Rune-Inscribed Tablet << Troll Shaman
    .accept 3085 >>Accept Hallowed Tablet << Troll Priest
    .accept 3086 >>Accept Glyphic Tablet << Troll Mage
    .accept 3087 >>Accept Etched Parchment << Orc Hunter
    .accept 3088 >>Accept Encrypted Parchment << Orc Rogue
    .accept 3089 >>Accept Rune-Inscribed Parchment << Orc Shaman
    .accept 3090 >>Accept Tainted Parchment << Orc Warlock
    .turnin 804,1 >>Turn in Sarkoth << Shaman
    .turnin 804 >>Turn in Sarkoth << !Shaman
    .target Gornek
step << Rogue
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Travel toward |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .train 53 >> Train |T132090:0|t[Backstab]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
    #label Rwag
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .target Rwag
step
    .goto 1411/1,-4102.400,-588.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kzan Thornslash|r in the back of the cave
    .turnin 97279 >>Turn in Wayward Weapons
    .target Kzan Thornslash
step << Rogue/Warrior
    .goto 1411/1,-4106.000,-593.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norzsh|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .collect 2901,1,792,1 --Mining Pick (1)
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Norzsh
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
step << Warlock
    #season 2
    #label Nartok2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .accept 77586 >>Accept Stolen Power
    .target Nartok
step << Warlock
    #season 0
    #label Nartok2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .train 172 >> Train |T136118:0|t[Corruption]
    .target Nartok
step
    #label Galgar
    .goto 1411/1,-4221.85,-561.52,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Accept Galgar's Cactus Apple Surprise
    .target Galgar
step << !Rogue
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << !Rogue
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312from her|r << Hunter
    >>|cRXP_WARN_Save 10 copper to train|r |T135932:0|t[Arcane Intellect] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .accept 77587 >>Accept Icons of Power << Troll Shaman
    .accept 77585 >>Accept Icons of Power << Orc Shaman
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .accept 77587 >>Accept Icons of Power << Troll Shaman
    .accept 77585 >>Accept Icons of Power << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Turn in Glyphic Tablet << Troll
    .accept 77643 >>Accept Spell Research << Troll Mage
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Turn in Glyphic Tablet << Troll
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Accept Vile Familiars
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .accept 77590 >>Accept Rugged Terrain << Troll Hunter
    .accept 77584 >>Accept Hunt for the Rune << Orc Hunter
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
    .money <0.01
step << Hunter
    #season 2
    #xprate >1.49
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .accept 77590 >>Accept Rugged Terrain << Troll Hunter
    .accept 77584 >>Accept Hunt for the Rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .accept 77590 >>Accept Rugged Terrain << Troll Hunter
    .accept 77584 >>Accept Hunt for the Rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
    .money <0.01
step << Hunter
    #xprate >1.49
    #season 0
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .target Jen'shan
step << Warrior
    #xprate >1.49
    #season 2
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .accept 77588 >>Accept A Trial of Fitness << Troll
    .accept 77582 >>Accept A Trial of Fitness << Orc
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .accept 77588 >>Accept A Trial of Fitness << Troll
    .accept 77582 >>Accept A Trial of Fitness << Orc
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .accept 77588 >>Accept A Trial of Fitness << Troll
    .accept 77582 >>Accept A Trial of Fitness << Orc
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .target Frang
step << Priest
    #season 2
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Turn in Hallowed Tablet
    .accept 77642 >>Accept Wisdom of the Loa
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kzan|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Accept Lazy Peons
    .target Foreman Thazz'ril
step << Priest
    #season 2
    .goto 1411/1,-4892.30,-759.28
    >>Travel to the |cRXP_FRIENDLY_Serpent Loa|r statue at Sen'Jin Village and type /kneel
    .use 205951 >>Talk to |cRXP_FRIENDLY_Serpent Loa|r as he appears, then use |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Turn in Wisdom of the Loa
    .target Ken'jai
step
    #completewith Sting
    >>Loot the |cRXP_LOOT_Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto 1411/1,-4340.82,-628.50,20,0
    .goto 1411/1,-4375.71,-507.590,45,0
    .goto 1411/1,-4467.19,-506.53,45,0
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for |cRXP_LOOT_Scorpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Kill |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << Shaman
    #season 2
    #loop
	.goto 1411/1,-4249.87,-246.04,0
    .goto 1411/1,-4249.87,-246.04,40,0
    .goto 1411/1,-4226.08,-250.62,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto 1411/1,-4181.66,-278.470,40,0
    .goto 1411/1,-4149.41,-319.00,40,0
    .goto 1411/1,-4112.40,-351.43,40,0
    .goto 1411/1,-4081.20,-354.25,40,0
    .goto 1411/1,-4046.83,-352.14,40,0
    .goto 1411/1,-4048.95,-383.16,40,0
    .goto 1411/1,-4053.71,-415.940,40,0
    .goto 1411/1,-4084.37,-449.08,40,0
    .goto 1411/1,-4121.91,-449.78,40,0
    .goto 1411/1,-4116.63,-513.23,40,0
    .goto 1411/1,-4073.80,-519.22,40,0
    .goto 1411/1,-4079.61,-553.06,40,0
    .goto 1411/1,-4082.26,-576.68,40,0
    .goto 1411/1,-4084.37,-606.290,40,0
    .goto 1411/1,-4115.57,-608.05,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto 1411/1,-4149.94,-543.55,40,0
    .goto 1411/1,-4177.43,-519.93,40,0
    .goto 1411/1,-4144.65,-507.94,40,0
    .goto 1411/1,-4149.41,-450.13,40,0
    .goto 1411/1,-4147.82,-416.65,40,0
    .goto 1411/1,-4148.88,-376.46,40,0
    .goto 1411/1,-4156.28,-350.73,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto 1411/1,-4210.22,-283.40,40,0
    .goto 1411/1,-4240.35,-293.27,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4386.82,-318.65,40,0
    .goto 1411/1,-4419.07,-345.79,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4455.03,-450.49,40,0
    .goto 1411/1,-4478.29,-449.08,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto 1411/1,-4446.57,-313.01,40,0
    .goto 1411/1,-4451.33,-283.40,40,0
    .goto 1411/1,-4419.60,-246.04,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .collect 206381,1,77587,1 << Troll Shaman --Dyadic Icon (1)
    .collect 206381,1,77585,1 << Orc Shaman --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
step << Shaman
    #season 2
    .equip 18,206381 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Dyadic Icon]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step << Shaman
    #season 2
    #loop
	.goto 1411/1,-4249.87,-246.04,0
    .goto 1411/1,-4249.87,-246.04,40,0
    .goto 1411/1,-4226.08,-250.62,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto 1411/1,-4181.66,-278.470,40,0
    .goto 1411/1,-4149.41,-319.00,40,0
    .goto 1411/1,-4112.40,-351.43,40,0
    .goto 1411/1,-4081.20,-354.25,40,0
    .goto 1411/1,-4046.83,-352.14,40,0
    .goto 1411/1,-4048.95,-383.16,40,0
    .goto 1411/1,-4053.71,-415.940,40,0
    .goto 1411/1,-4084.37,-449.08,40,0
    .goto 1411/1,-4121.91,-449.78,40,0
    .goto 1411/1,-4116.63,-513.23,40,0
    .goto 1411/1,-4073.80,-519.22,40,0
    .goto 1411/1,-4079.61,-553.06,40,0
    .goto 1411/1,-4082.26,-576.68,40,0
    .goto 1411/1,-4084.37,-606.290,40,0
    .goto 1411/1,-4115.57,-608.05,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto 1411/1,-4149.94,-543.55,40,0
    .goto 1411/1,-4177.43,-519.93,40,0
    .goto 1411/1,-4144.65,-507.94,40,0
    .goto 1411/1,-4149.41,-450.13,40,0
    .goto 1411/1,-4147.82,-416.65,40,0
    .goto 1411/1,-4148.88,-376.46,40,0
    .goto 1411/1,-4156.28,-350.73,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto 1411/1,-4210.22,-283.40,40,0
    .goto 1411/1,-4240.35,-293.27,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4386.82,-318.65,40,0
    .goto 1411/1,-4419.07,-345.79,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4455.03,-450.49,40,0
    .goto 1411/1,-4478.29,-449.08,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto 1411/1,-4446.57,-313.01,40,0
    .goto 1411/1,-4451.33,-283.40,40,0
    .goto 1411/1,-4419.60,-246.04,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    .aura 408828 >>Continue to kill |cRXP_ENEMY_Scorpid Workers|r and obtain 10 stacks of |T237556:0|t[Building Inspiration] as they deal nature damage to you
    .mob Scorpid Worker
    .train 410094,1
    --User must be level 3 to be able to use item!
step << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Kill |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << !Warlock
    #label Imps
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Kill |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto 1411/1,-4249.87,-246.04,0
    .goto 1411/1,-4249.87,-246.04,40,0
    .goto 1411/1,-4226.08,-250.62,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto 1411/1,-4181.66,-278.470,40,0
    .goto 1411/1,-4149.41,-319.00,40,0
    .goto 1411/1,-4112.40,-351.43,40,0
    .goto 1411/1,-4081.20,-354.25,40,0
    .goto 1411/1,-4046.83,-352.14,40,0
    .goto 1411/1,-4048.95,-383.16,40,0
    .goto 1411/1,-4053.71,-415.940,40,0
    .goto 1411/1,-4084.37,-449.08,40,0
    .goto 1411/1,-4121.91,-449.78,40,0
    .goto 1411/1,-4116.63,-513.23,40,0
    .goto 1411/1,-4073.80,-519.22,40,0
    .goto 1411/1,-4079.61,-553.06,40,0
    .goto 1411/1,-4082.26,-576.68,40,0
    .goto 1411/1,-4084.37,-606.290,40,0
    .goto 1411/1,-4115.57,-608.05,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto 1411/1,-4149.94,-543.55,40,0
    .goto 1411/1,-4177.43,-519.93,40,0
    .goto 1411/1,-4144.65,-507.94,40,0
    .goto 1411/1,-4149.41,-450.13,40,0
    .goto 1411/1,-4147.82,-416.65,40,0
    .goto 1411/1,-4148.88,-376.46,40,0
    .goto 1411/1,-4156.28,-350.73,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto 1411/1,-4210.22,-283.40,40,0
    .goto 1411/1,-4240.35,-293.27,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4386.82,-318.65,40,0
    .goto 1411/1,-4419.07,-345.79,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4455.03,-450.49,40,0
    .goto 1411/1,-4478.29,-449.08,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto 1411/1,-4446.57,-313.01,40,0
    .goto 1411/1,-4451.33,-283.40,40,0
    .goto 1411/1,-4419.60,-246.04,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for |cRXP_LOOT_Scorpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto 1411/1,-4340.82,-628.50,0
	.goto 1411/1,-4340.82,-628.50,25,0
	.goto 1411/1,-4375.71,-507.590,25,0
	.goto 1411/1,-4467.19,-506.53,25,0
	.goto 1411/1,-4433.88,-329.93,25,0
	.goto 1411/1,-4452.38,-232.640,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto 1411/1,-4144.65,-269.65,25,0
	.goto 1411/1,-4125.62,-321.12,25,0
	.goto 1411/1,-4015.64,-371.53,25,0
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
    #loop
    .goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 4 >> Grind to level 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto 1411/1,-4198.58,-602.41,12,0
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Turn in Sting of the Scorpid << Shaman
    .turnin 789 >>Turn in Sting of the Scorpid << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .turnin 77587 >>Turn in Icons of Power << Troll Shaman
    .turnin 77585 >>Turn in Icons of Power << Orc Shaman
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Mai'ah
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train your class spells
    .turnin 3085 >>Turn in Hallowed Tablet
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .turnin 3085 >>Turn in Hallowed Tablet
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .turnin 3085 >>Turn in Hallowed Tablet
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .turnin 77590 >>Turn in Rugged Terrain << Troll Hunter
    .turnin 77584 >>Turn in Hunt for the Rune << Orc Hunter
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Hunter
    #season 2
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Turn in Rugged Terrain << Troll Hunter
    .turnin 77584 >>Turn in Hunt for the Rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 100 >> Train |T132337:0|t[Charge]
    .target Frang
    .money <0.01
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Turn in Lazy Peons
    .accept 6394 >>Accept Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    #xprate <1.5
    #completewith next
    .xp 4+1720 >> Grind to 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    #loop
	.goto 1411/1,-4324.43,-480.10,0
	.goto 1411/1,-4259.92,-411.01,25,0
	.goto 1411/1,-4279.48,-402.55,25,0
	.goto 1411/1,-4333.94,-360.95,25,0
	.goto 1411/1,-4335.53,-294.68,25,0
	.goto 1411/1,-4321.25,-243.220,25,0
	.goto 1411/1,-4366.20,-253.44,25,0
	.goto 1411/1,-4391.05,-328.52,25,0
	.goto 1411/1,-4440.75,-319.36,25,0
	.goto 1411/1,-4462.43,-405.370,25,0
	.goto 1411/1,-4398.98,-411.71,25,0
	.goto 1411/1,-4324.43,-480.10,25,0
    >>Loot the |cRXP_LOOT_Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #optional
    #xprate <1.5
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 4+1720 >> Grind to 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #optional
    #loop
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    .xp 5 >> Grind to level 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto 1411/1,-4360.38,-175.18,30 >>Enter the cave
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto 1411/1,-4361.44,-144.16,15,0
    .goto 1411/1,-4311.74,-113.14,15,0
    .goto 1411/1,-4274.19,-87.76,10 >>Travel toward |cRXP_LOOT_Thazz'ril's Pick|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Kill |cRXP_ENEMY_Felstalkers|r. Loot them for |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto 1411/1,-4274.19,-87.76
    >>Loot |cRXP_LOOT_Thazz'ril's Pick|r against the wall
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>Kill |cRXP_ENEMY_Yarrog Baneshadow|r. Loot him for the |cRXP_LOOT_Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.70,52.99,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    >>Kill |cRXP_ENEMY_Felstalkers|r. Loot them for |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #xprate <1.5
    #loop
	.goto Durotar,42.70,52.99,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1680 >> Grind to 1680+/2800xp << !Shaman
    .xp 5+690 >> Grind to 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,42.70,52.99,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    .xp 5+1300 >> Grind to 1300+/2800xp << !Shaman
    .xp 5+310 >> Grind to 310+/2800xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the edge of the rock until it looks like they're floating, then logging out and back in|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLICK HERE for an example
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >> |cRXP_WARN_Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r near the arrow|r
    .target Spirit Healer
step
    #softcore
    #label Betrayers
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_You can talk to him from outside or on top of the bunker|r
    .accept 784 >>Accept Vanquish the Betrayers
    .target Gar'thok
step
    .goto 1411/1,-4665.400,311.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cook Torka|r
    .accept 96825 >>Accept This Fruit Could Bite Back
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Travel toward the tower
step
    #softcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto Durotar,49.60,40.04,8 >>Travel up the tower toward Furl
step
    #softcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
    .skill blacksmithing,1,1
step -- (Barracks)
    .goto 1411/1,-4815.200,306.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turroc|r
    .accept 96822 >>Accept For Honor
    .target Turroc
step
    #completewith next
    .hs >>Hearth to the Valley of Trials
    .use 6948
step
    #xprate <1.5
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.03
step
    .goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Turn in Burning Blade Medallion
    .accept 805 >>Accept Report to Sen'jin Village
    .target Zureetha Fargaze
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Accept In Favor of Spirituality
	.train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Ken'jai
step << Mage
    #season 2
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .turnin 77643 >> Turn in Spell Research
    .target Mai'ah
    .isQuestComplete 77643
step << Mage
    #season 0
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target +Shikrik
    .goto 1411/1,-4203.87,-623.92
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target Canaga Earthcaller
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .target Frang
    .money <0.02
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Travel toward |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .train 1776 >> Train |T132155:0|t[Gouge]
    .target Rwag
    .money <0.02
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact] |cRXP_BUY_from him|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vendor Trash
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    #season 2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .turnin 77586 >>Turn in Stolen Power
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .turnin 77586 >>Turn in Stolen Power
    .target Nartok
step << Warlock
    #season 0
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .target Nartok
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>Travel toward the |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Use the|r |T134743:0|t[Earth Sapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>Turn in Call of Earth
    .accept 1518 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>Turn in Call of Earth
    .target Canaga Earthcaller
step << Shaman
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
step
    #xprate >1.49
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    #label Leave
    .goto 1411/1,-4452.38,-631.32,25,0
    .goto 1411/1,-4554.43,-628.50,20,0
    .goto Durotar,49.90,68.43,25 >>Exit the Valley of Trials
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-10 Durotar
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
    .goto 1411/1,-4715.17,-599.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Accept A Peon's Burden
    .target Ukor
step
    #completewith next
    .subzone 367 >>Travel to Sen'Jin Village
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .accept 786 >>Accept Thwarting Kolkar Aggression
    .target Lar Prowltusk
step
    .goto 1411/1,-4885.200,-852.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r
    .accept 97223 >>Accept Bloodtalon Matriarch
    .target Xar'Ti
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Accept Practical Prey
    .accept 96821 >>Accept Legging It
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
    .accept 818 >>Accept A Solvent Spirit
    .accept 97225 >>Accept Forgotten Loa Idols
    .target +Master Vornal
    .goto 1411/1,-4920.33,-814.270
    .turnin 805 >>Turn in Report to Sen'jin Village
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
    .target +Master Gadrin
    .goto 1411/1,-4920.33,-825.55
step
    #completewith next
    .goto 1411/1,-4931.96,-815.32,8,0
    .goto 1411/1,-4939.89,-793.12,8 >> Enter the big hut
step << Rogue
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Buy |r |T132414:0|t[Weighted Throwing Axe] |cRXP_BUY_from her|r
    .collect 3131,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 83c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T132414:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Un'Thuwa
step << Warrior/Rogue
    #softcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Cast|r |T136025:0|t[Find Minerals] |cRXP_WARN_and mine any Copper Vein you find for|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r|cRXP_WARN_. Make|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_from them|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #completewith next
    .goto 1411/1,-5057.80,-866.79,40,0
    .goto 1411/1,-5014.97,-937.99,40,0
    .goto 1411/1,-4908.69,-998.27,40,0
    .goto 1411/1,-4829.91,-1091.33,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Run down the beach. Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r. You do not have to finish this step here.
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #xprate >1.49
    .goto Durotar,54.17,82.60,75 >> Reach the end of the beach
step
    #xprate <1.5
    #completewith next
    .goto 1411/1,-5057.80,-866.79,40,0
    .goto 1411/1,-5014.97,-937.99,40,0
    .goto 1411/1,-4908.69,-998.27,40,0
    .goto 1411/1,-4829.91,-1091.33,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Run down the beach. Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r. You do not have to finish this step here.
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #xprate <1.5
    .goto Durotar,52.20,83.00,75 >> Reach the end of the beach
    .isOnQuest 818
step
    #xprate <1.5
    #completewith Bonfire
    >>Kill |cRXP_ENEMY_Kolkar Drudges|r and |cRXP_ENEMY_Kolkar Outrunners|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    #xprate <1.5
    .goto 1411/1,-4653.84,-983.47,30 >>Enter the Kolkar base
    .isOnQuest 786
step << Priest
    #xprate <1.5
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Start collecting 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_as you quest throughout Durotar. This will be used to make your wand later|r
    >>|cRXP_WARN_Skip this step if you've already bought a wand or can get one cheap from the AH.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #xprate <1.5
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Start collecting 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_as you quest throughout Durotar. This will be used to make your wand later|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #xprate <1.5
    #completewith Bonfire
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_is up, he is a level 9 rare. You may have to use a |r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it|r
    .unitscan Warlord Kolkanis
step << Warrior
    #xprate <1.5
    #season 2
    #completewith Bonfire
    >>Kill |cRXP_ENEMY_Kolkar Drudges|r and |cRXP_ENEMY_Kolkar Outrunners|r. Loot them for a |cRXP_LOOT_Severed Centaur Head|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    .goto 1411/1,-4596.20,-1057.14
    >>Burn the |cRXP_PICK_Attack Plan|r inside the tent on the ground
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    #xprate <1.5
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto 1411/1,-4482.52,-917.90
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #xprate <1.5
    #label Bonfire
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto 1411/1,-4406.91,-974.30
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step << Warrior
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto 1411/1,-4486.75,-1024.00,40,0
    .goto 1411/1,-4423.30,-1015.90,40,0
    >>Kill |cRXP_ENEMY_Kolkar Drudges|r and |cRXP_ENEMY_Kolkar Outrunners|r. Loot them for a |cRXP_LOOT_Severed Centaur Head|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    #softcore
    .goto 1411/1,-4417.49,-985.23,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >> Die at the Bonfire and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto 1411/1,-4656.48,-981.35,30 >>Leave the Kolkar base
    .isQuestComplete 786
step
    #hardcore
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786,1 >>Turn in Thwarting Kolkar Aggression << Shaman
    .turnin 786 >>Turn in Thwarting Kolkar Aggression << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 83c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T132414:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #xprate <1.5
    #optional
    .goto 1411/1,-4920.86,-813.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Turn in A Solvent Spirit
    .target Master Vornal
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    #xprate <1.5
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r
    .vendor >> Vendor trash
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #softcore
    #loop
    .goto Durotar,54.20,73.36,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .turnin 786,1 >>Turn in Thwarting Kolkar Aggression << Shaman
    .turnin 786 >>Turn in Thwarting Kolkar Aggression << !Shaman
    .target Lar Prowltusk
step << Rogue
    #season 2
    .goto 1411/1,-4702.48,-259.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'so|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    >>|cRXP_WARN_He is stealthed!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Travel to Razor Hill
step
    #hardcore
    #label Betrayers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r and |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .accept 784 >>Accept Vanquish the Betrayers
    .accept 837 >>Accept Encroachment
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Accept Break a Few Eggs
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Travel toward the tower
step
    #hardcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto Durotar,49.60,40.04,8 >>Travel up the tower toward Furl
step
    #hardcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #hardcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Cast|r |T136025:0|t[Find Minerals] |cRXP_WARN_and mine any Copper Vein you find for|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r|cRXP_WARN_. Make|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_from them|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    .goto 1411/1,-4710.400,-209.400
    >>Kill |cRXP_ENEMY_Ridgeshade Lurkers|r and |cRXP_ENEMY_Ridgeshade Creepers|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step
    #softcore
    #label TravelToTiragarde
    .goto 1411/1,-4839.96,-399.73,60,0
    .subzone 372 >> Travel to Tiragarde Keep
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >> Travel to Tiragarde Keep
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #completewith AgedEnvelope
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step --south/west of keep
    .goto 1411/1,-4992.700,-234.400
    >>Loot the |cRXP_PICK_Raider's Bow|r on the ground
    .complete 96822,1 --|1/1 Raider's Bow
step --center in keep
    .goto 1411/1,-4994.900,-182.300
    >>Loot the |cRXP_PICK_Raider's Battleaxe|r on the ground
    .complete 96822,2 --|1/1 Raider's Battleaxe
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Watch Commander Zalaphil|r |cRXP_WARN_is up, as he is a level 9 rare. You may have to use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have one|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto 1411/1,-5124.95,-243.92,8,0
    .goto 1411/1,-5115.96,-251.68,8,0
    .goto 1411/1,-5111.21,-232.29,8,0
    .goto 1411/1,-5097.46,-232.29,8 >> Move toward the second floor of the keep
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Kill |cRXP_ENEMY_Sailors|r and |cRXP_ENEMY_Marines|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
step
    #label Benedict
    .goto 1411/1,-5121.78,-245.68
    >>Kill |cRXP_ENEMY_Lieutenant Benedict|r. Loot him for his |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto 1411/1,-5128.13,-231.58,5,0
    .goto 1411/1,-5126.01,-221.36,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto 1411/1,-5131.83,-229.82,5,0
    .goto 1411/1,-5131.83,-222.42,5,0
    .goto 1411/1,-5096.40,-223.83
    >>|cRXP_WARN_Go upstairs in the keep|r
    >>Open |cRXP_PICK_Benedict's Chest|r. Loot it for the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r]
    >>Use the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r] to start the quest
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Accept The Admiral's Orders
    .use 4881
step
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #optional
    #label ScrapsFinished
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step  --northern tower
    .goto 1411/1,-4951.500,-59.600
    >>Loot the |cRXP_PICK_Raider's Shield|r on the ground
    .complete 96822,3 --|1/1 Raider's Shield
step << Priest
    #season 2
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Kill |cRXP_ENEMY_Sailors|r and |cRXP_ENEMY_Marines|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << Priest
    #season 2
    #completewith next
    .goto 1411/1,-4887.54,-752.93
    .emote KNEEL,208309
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2520 >> Grind to 2520+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2200 >> Grind to 2200+/4500xp
    .isOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1530 >> Grind to 1530+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1050 >> Grind to 1050+/4500xp
    .isOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2070 >> Grind to 2070+/4500xp
    .isNotOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1750 >> Grind to 1750+/4500xp
    .isOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+855 >> Grind to 855+/4500xp
    .isNotOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+375 >> Grind to 375+/4500xp
    .isOnQuest 823
step << skip
    #softcore
    #completewith RazorTurnins1
    .goto 1411/1,-4992.24,-77.54,120,0
    .deathskip >> Die at the northern tower outside of Tiragarde Keep and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step --camp quest
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakk|r
    .accept 96604 >>Accept The Great Outdoors
    .target Brakk
step
    .goto 1411/1,-4715.200,140.100
    >>|cRXP_WARN_Type /sit at the campfire and wait for one minute until you get the "Camp Benefits" buff|r
    .complete 96604,1 --|1/1 Use the /sit emote near the campfire
    .complete 96604,2 --|Gain the Boosted Rest buff
step
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakk|r
    .turnin 96604 >>Turn in The Great Outdoors
    --.accept 97900 >>Accept Camping 101: Blacksmithing
    --.accept 96655 >>Accept Camping 101: Cooking
    --.accept 97907 >>Accept Camping 101: Mining
    .target Brakk
step
    #completewith next
    .subzone 362 >>Travel to Razor Hill
step
    #softcore
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r and |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 784 >>Turn in Vanquish the Betrayers
    .turnin 830 >>Turn in The Admiral's Orders
    .turnin 96821 >>Turn in Legging It
    .accept 825 >>Accept From The Wreckage....
    .accept 831 >>Accept The Admiral's Orders
    .accept 837 >>Accept Encroachment
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
    .accept 815 >>Accept Break a Few Eggs
    .target +Cook Torka
    .goto 1411/1,-4663.88,310.56
step
    #hardcore
    #label RazorTurnins1
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Turn in Vanquish the Betrayers
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 825 >>Accept From The Wreckage....
    .accept 831 >>Accept The Admiral's Orders
    .target +Gar'Thok
step
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Travel toward the tower
step
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto Durotar,49.60,40.04,8 >>Travel up the tower toward Furl
step
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Turn in Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T132414:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 83c). You'll come back later if you don't have enough yet
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from him|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<800 << Hunter
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    >>|cRXP_WARN_Save 4 silver for your class spells!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_Save 2 silver for your class spells!|r << Priest
    .vendor >> Vendor Trash
    .home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>Turn in A Peon's Burden
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
    .bindlocation 362
step << !Mage !Hunter !Druid
    #optional
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    .vendor >> Vendor Trash
    .home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>Turn in A Peon's Burden
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
    .bindlocation 362
step
    .goto 1411/1,-4815.400,306.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turroc|r
    .turnin 96822 >>Turn in For Honor
    .target Turroc
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Train your class spells
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Train your class spells
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Train your class spells
    .target Dhugru Gorelust
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .train 5116 >> Train your class spells
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Train your class spells
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Turn in In Favor of Spirituality
    .accept 5648 >> Accept Garments of Spirituality
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Cast |T135929:0|t[Lesser Heal] and |T135987:0|t[Power Word: Fortitude] on |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Turn in Garments of Spirituality
    .trainer >> Train your class spells
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Shellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto 1411/1,-5238.63,-146.63,0
    .goto 1411/1,-5238.63,-146.63,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    .goto 1411/1,-5263.49,-301.03,20,0
    .goto 1411/1,-5245.51,-330.64,20,0
    .goto 1411/1,-5267.72,-326.41,20,0
    .goto 1411/1,-5306.31,-239.690,20,0
    .goto 1411/1,-5253.97,-177.65,20,0
    >>Loot the |cRXP_PICK_Gnomish Toolboxes|r inside and around the boats
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Swim to the Island
step
    #completewith MartEgg
    >>Loot the |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    >>Kill |cRXP_ENEMY_Durotar Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    -->>This does not need to be finished now
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Shellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step --center of first small island
    #label MartEgg
    .goto 1411/1,-5599.500,-716.700
    >>Kill the |cRXP_ENEMY_Bloodtalon Martriarch|r. Loot it for the |cRXP_LOOT_Bloodtalon Martriarch Eggs|r
    .complete 97223,1 --|1/1 Bloodtalon Martriarch Eggs
    .mob Bloodtalon Martriarch
step
    #label TaillasherEggs
    #loop
    .goto 1411/1,-5507.24,-708.520,0
    .goto 1411/1,-5675.91,-688.78,0
    .goto 1411/1,-5507.24,-708.520,40,0
    .goto 1411/1,-5540.02,-795.23,40,0
    .goto 1411/1,-5593.43,-816.73,40,0
    .goto 1411/1,-5651.06,-824.49,40,0
    .goto 1411/1,-5679.08,-775.84,40,0
    .goto 1411/1,-5675.91,-688.78,40,0
    .goto 1411/1,-5647.36,-671.50,40,0
    .goto 1411/1,-5621.98,-648.24,40,0
    .goto 1411/1,-5544.25,-654.23,40,0
    >>Loot the |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Shellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto 1411/1,-5501.95,-1167.12,150 >>Swim to the main island
    .isOnQuest 826
step
    #completewith MinshinasSkull
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r
    >>Loot the |cRXP_PICK_Loa Idols|r on the ground
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 97225,1 --Forgotten Loa Idols (x8)
step << Priest
    #season 2
    #completewith Fur
    >>Kill the |cRXP_ENEMY_Voodoo Trolls|r. Loot them for |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step << Mage
    #season 2
    #completewith ZalazaneKill
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for the |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[Earth Shock] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto 1411/1,-5526.27,-1286.62
    >>Loot one of the |cRXP_LOOT_Skulls|r on the ground
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto 1411/1,-5526.27,-1286.62
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[Earth Shock] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step << Mage
    #season 2
    .goto 1411/1,-5526.27,-1286.62
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for the |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r] |cRXP_WARN_to learn|r |T236227:0|t[Fingers of Frost]
    .use 203753
step
    #completewith next
    >>Kill |cRXP_ENEMY_Durotar Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto Durotar,65.90,84.04,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto Durotar,68.50,84.32,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r
    >>Loot the |cRXP_PICK_Loa Idols|r on the ground
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 97225,1 --Forgotten Loa Idols (x8)
step << Priest
    #season 2
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto Durotar,65.90,84.04,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto Durotar,68.50,84.32,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Kill the |cRXP_ENEMY_Voodoo Trolls|r. Loot them for |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Shellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto 1411/1,-5123.90,-1132.93,0
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Kill |cRXP_ENEMY_Durotar Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto 1411/1,-5115.96,-794.53,0
    .goto 1411/1,-5115.96,-794.53,60,0
    .goto 1411/1,-5035.07,-916.490,60,0
    .goto 1411/1,-4990.65,-989.81,60,0
    .goto 1411/1,-4905.52,-1028.23,60,0
    .goto 1411/1,-4807.17,-1122.35,60,0
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Shellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r, or run back
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Travel to Sen'Jin Village
step
    .goto 1411/1,-4948.88,-768.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Jump into the hut|r
    .vendor >> Vendor trash and repair
    .target Trayexir
    .isOnQuest 808
step << Mage
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Train your class spells
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826,2 >>Turn in Zalazane << Shaman
    .turnin 826 >>Turn in Zalazane << !Shaman
    .turnin 97225 >>Turn in Forgotten Loa Idols
    .target +Master Gadrin
    .goto 1411/1,-4920.86,-825.90
    .turnin 818 >>Turn in A Solvent Spirit
    .target +Master Vornal
    .goto 1411/1,-4920.86,-813.91
    .turnin 817 >>Turn in Practical Prey
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
step
    .goto 1411/1,-4885.400,-852.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xar'Ti|r
    .turnin 97223 >>Turn in Bloodtalon Matriarch
    .target Xar'Ti
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto 1411/1,-4887.54,-752.93
    .skipgossip 208307,1
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
    .train 402852,1
step << Priest
    #season 2
    #completewith QuilboarsScouts
    .aura 418459 >>|cRXP_WARN_Now you have to find an Undead Priest with a Loa buff. You have to kneel before him and he has to /pray for you.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
    .itemcount 205947,1
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Bind your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_and|r |T134712:0|t[Really Sticky Glue]|cRXP_WARN_. Save them for emergency situations|r
step --at low lvl razormanes
    #completewith QuilboarsScouts
    >>Loot the |cRXP_PICK_Prickly Pear Fruit|r on the ground
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step << Warrior
    #season 2
    #loop
    .goto 1411/1,-4565.01,82.49,0
    .goto 1411/1,-4617.35,18.34,30,0
    .goto 1411/1,-4615.77,72.98,30,0
    .goto 1411/1,-4578.75,76.15,30,0
    .goto 1411/1,-4570.29,109.99,30,0
    .goto 1411/1,-4543.33,81.08,30,0
    .goto 1411/1,-4526.41,70.86,30,0
    .goto 1411/1,-4478.29,59.23,30,0
    .goto 1411/1,-4450.80,62.40,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto 1411/1,-4565.01,82.49,30,0
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r and |cRXP_ENEMY_Razormane Scouts|r. Loot them for a |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step
    #label QuilboarsScouts
    #loop
    .goto 1411/1,-4565.01,82.49,0
    .goto 1411/1,-4617.35,18.34,30,0
    .goto 1411/1,-4615.77,72.98,30,0
    .goto 1411/1,-4578.75,76.15,30,0
    .goto 1411/1,-4570.29,109.99,30,0
    .goto 1411/1,-4543.33,81.08,30,0
    .goto 1411/1,-4526.41,70.86,30,0
    .goto 1411/1,-4478.29,59.23,30,0
    .goto 1411/1,-4450.80,62.40,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto 1411/1,-4565.01,82.49,30,0
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r and |cRXP_ENEMY_Razormane Scouts|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step --at low lvl razormanes
    .goto 1411/1,-4543.300,82.500
    >>Loot the |cRXP_PICK_Prickly Pear Fruit|r on the ground
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step
    #xprate <1.5
    #loop
    .goto 1411/1,-4312.79,407.50,0
    .goto 1411/1,-4312.79,407.50,50,0
    .goto 1411/1,-4314.91,487.52,50,0
    .goto Durotar,43.30,37.32,50,0
    .goto Durotar,41.70,37.09,50,0
    .goto 1411/1,-4164.21,459.32,50,0
    .goto 1411/1,-4180.08,382.12,50,0
    .goto Durotar,43.30,40.40,50,0
    >>Kill |cRXP_ENEMY_Razormane Dustrunners|r and |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Hunter
    #optional
    #xprate <1.5
    #loop
	.goto Durotar,47.52,48.67,0
	.goto Durotar,47.52,48.67,50,0
	.goto Durotar,46.12,45.47,50,0
	.goto Durotar,43.65,43.91,50,0
	.goto Durotar,41.68,44.69,50,0
	.goto Durotar,41.00,46.13,50,0
	.goto Durotar,42.47,48.50,50,0
	.goto Durotar,44.21,49.68,50,0
	.goto Durotar,47.17,49.44,50,0
    .xp 9+4470 >> Grind to 4470+/6500xp
step
    #optional
    #xprate >1.49
    #loop
    .goto Durotar,49.14,48.89,0
    .goto Durotar,49.14,48.89,30,0
    .goto Durotar,47.43,49.18,30,0
    .xp 9+4400 >> Grind to 4400+/6500xp
step
    #xprate >1.49 << !Hunter
    #softcore
    #completewith RazorTurnins015
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r, or run to Razor Hill
    .xp >10,1
step
    #xprate >1.49 << !Hunter
    #hardcore
    #completewith RazorTurnins015
    .goto 1411/1,-4709.36,274.960,100 >>Run to Razor Hill
step << Shaman
    #xprate >1.49
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Train your class spells
    .accept 2983 >>Accept Call of Fire
    .target Swart
    .isNotOnQuest 1522
    .xp <10,1
step << Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Torka|r and |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Turn in Break a Few Eggs
    .turnin 96825 >>Turn in This Fruit Could Bite Back
    .target +Cook Torka
    .goto 1411/1,-4665.47,311.62
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step
    #xprate >1.49
    #label RazorTurnins015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Torka|r and |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Turn in Break a Few Eggs
    .target +Cook Torka
    .goto 1411/1,-4665.47,311.62
    .turnin 825 >>Turn in From The Wreckage....
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Shaman
    #xprate >1.49
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Train your class spells
    .accept 2983 >>Accept Call of Fire
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Accept Veteran Uzzek
    .trainer >>Train your class spells
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Train your class spells
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Accept Hex of Weakness << Troll
    .accept 5660 >> Accept Touch of Weakness << Undead
    .trainer >> Train your class spells
    .target Tai'jin
step << Rogue
    #xprate >1.49
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Train your class spells
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .accept 6062 >>Accept Taming the Beast
    .trainer >> Train your class spells
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_and a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_from him|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .use 15917 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Dire Mottled Boar|r |cRXP_WARN_at max range|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .turnin 6062 >>Turn in Taming the Beast
    .accept 6083 >>Accept Taming the Beast
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .accept 6083 >>Accept Taming the Beast
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Dismiss your |cRXP_ENEMY_Dire Mottled Boar|r by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame a|r |cRXP_ENEMY_Surf Crawler|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    >>|cRXP_WARN_Don't kill the|r |cRXP_ENEMY_Armored Scorpids|r |cRXP_WARN_you see. You'll need them later|r
    .use 15919 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Surf Crawler|r |cRXP_WARN_at max range|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .turnin 6083 >>Turn in Taming the Beast
    .accept 6082 >>Accept Taming the Beast
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Dismiss your |cRXP_ENEMY_Surf Crawler|r by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame an|r |cRXP_ENEMY_Armored Scorpid|r
step << Hunter
    #loop
    .goto Durotar,54.84,36.94,0
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .use 15920 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Armored Scorpid|r |cRXP_WARN_at max range|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .turnin 6082 >>Turn in Taming the Beast
    .accept 6081 >>Accept Training the Beast
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith ConscriptH
    +|cRXP_WARN_Put|r |T132164:0|t[Tame Beast]|cRXP_WARN_,|r |T136095:0|t[Dismiss Pet]|cRXP_WARN_, and|r |T132161:0|t[Call Pet] |cRXP_WARN_onto your Action Bars|r
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Buy|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from him|r. |cRXP_BUY_You will use this to feed your pet later|r
    .vendor >> Vendor Trash
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step
    #label ConscriptH
    #xprate >1.49 << !Hunter
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step
    #xprate >1.49
    #loop
	.goto 1411/1,-4312.79,407.50,0
	.goto 1411/1,-4312.79,407.50,50,0
	.goto 1411/1,-4314.91,487.52,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto 1411/1,-4164.21,459.32,50,0
	.goto 1411/1,-4180.08,382.12,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Kill |cRXP_ENEMY_Razormane Dustrunners|r and |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Warrior/Shaman
    #xprate >1.49
    .goto 1413/1,-3686.10,303.14,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate >1.49
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
    .target Telf Joolam
step << Hunter/Shaman/Warrior
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Accept Lost But Not Forgotten
    .target Misha Tor'kren
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Enter Thunder Ridge and kill |cRXP_ENEMY_Lightning Hides|r. Loot them for their |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Shaman
    #xprate >1.49
    #completewith next
    .goto 1411/1,-4165.27,903.11,20 >>Jump into Thunder Ridge
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto 1411/1,-4190.12,868.22
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r and loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Be careful. Kill the patrolling|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_and the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_in the back before you pull him|r
    >>|cRXP_WARN_Pull him backwards towards the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_you just killed. Otherwise you may bodypull additional Burning Blade mobs|r
    >>|cRXP_WARN_Don't be afraid to die for the |cRXP_LOOT_Claw|r as you will be respawning at the |cRXP_FRIENDLY_Spirit Healer|r after|r
    >>|cRXP_WARN_Kill the imp first. Use|r |T132155:0|t[Gouge] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Rogue
    >>|cRXP_WARN_Kill the imp first. Use|r |T136026:0|t[Earth Shock] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Shaman
    >>|cRXP_WARN_You can cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_and kill the|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_Kill the imp first|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion], |T133728:0|t[Minor Healthstone] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto 1411/1,-4190.12,868.22
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r and loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Be careful. Kill the patrolling|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_and the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_in the back before you pull him|r
    >>|cRXP_WARN_Pull him backwards towards the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_you just killed. Otherwise you may bodypull additional Burning Blade mobs|r
    >>|cRXP_WARN_Kill the imp first. Use|r |T132155:0|t[Gouge] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Rogue
    >>|cRXP_WARN_Kill the imp first. Use|r |T136026:0|t[Earth Shock] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Shaman
    >>|cRXP_WARN_You can cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_and kill the|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_Kill the imp first|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion], |T133728:0|t[Minor Healthstone] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 806
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Fight your way out of Thunder Ridge
    .isQuestComplete 806
step
    #completewith next
    .goto 1411/1,-4414.31,999.70,50 >> Travel to Rezlak
step
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step << Warrior
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Dustwind Harpies|r. Loot them for a |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto 1411/1,-4613.12,902.410,40,0
    .goto 1411/1,-4651.19,893.24,40,0
    .goto 1411/1,-4693.49,832.97,40,0
    .goto 1411/1,-4598.32,854.12,40,0
    .goto 1411/1,-4642.20,696.20,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto 1411/1,-4466.13,630.980,40,0
    .goto 1411/1,-4526.41,679.98,40,0
    .goto 1411/1,-4457.67,720.17,40,0
    >>Loot the |cRXP_PICK_Stolen Supply Sacks|r from the ground
    .complete 834,1 --Sack of Supplies (5)
step << Warrior
    #season 2
    #loop
    .goto 1411/1,-4816.69,972.910,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4818.28,975.38,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    .goto 1411/1,-4672.87,1131.89,40,0
    .goto 1411/1,-4816.69,972.910,40,0
    >>Kill |cRXP_ENEMY_Dustwind Harpies|r. Loot them for a |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <1.5
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
    .target Rezlak
step
    #xprate >1.49
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .target Rezlak
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Travel toward Dustwind Cave
    >>|cRXP_WARN_Travel east around the hills to reach the cave. Follow the waypoint arrow|r
step << Shaman
    #xprate >1.49
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Kill |cRXP_ENEMY_Burning Blade Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step
    #xprate <1.5 << Shaman/Warrior
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto 1411/1,-4165.27,903.11,20 >>Jump into Thunder Ridge << !Hunter !Warlock
    .goto 1411/1,-4165.27,903.11,20 >>|cRXP_WARN_Dismiss your|r |T136218:0|t[Imp] |cRXP_WARN_by right clicking its unit frame and clicking dismiss|r << Warlock
    .cast 2641 |cRXP_WARN_Cast|r |T136095:0|t[Dismiss Pet] |cRXP_WARN_and then jump into Thunder Ridge|r << Hunter
step
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto 1411/1,-4190.12,868.22
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r and loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Be careful. Kill the patrolling|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_and the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_in the back before you pull him|r
    >>|cRXP_WARN_Pull him backwards towards the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_you just killed. Otherwise you may bodypull additional Burning Blade mobs|r
    >>|cRXP_WARN_Don't be afraid to die for the |cRXP_LOOT_Claw|r as you will be respawning at the |cRXP_FRIENDLY_Spirit Healer|r after|r
    >>|cRXP_WARN_Kill the imp first. Use|r |T132155:0|t[Gouge] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Rogue
    >>|cRXP_WARN_Kill the imp first. Use|r |T136026:0|t[Earth Shock] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Shaman
    >>|cRXP_WARN_You can cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_and kill the|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_Kill the imp first|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion], |T133728:0|t[Minor Healthstone] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto 1411/1,-4190.12,868.22
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r and loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Be careful. Kill the patrolling|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_and the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_in the back before you pull him|r
    >>|cRXP_WARN_Pull him backwards towards the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_you just killed. Otherwise you may bodypull additional Burning Blade mobs|r
    >>|cRXP_WARN_Kill the imp first. Use|r |T132155:0|t[Gouge] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Rogue
    >>|cRXP_WARN_Kill the imp first. Use|r |T136026:0|t[Earth Shock] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Shaman
    >>|cRXP_WARN_You can cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_and kill the|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_Kill the imp first|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion], |T133728:0|t[Minor Healthstone] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 806
    .xp >10,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,39.20,32.02,60 >> Fight your way out of Thunder Ridge
    .isQuestComplete 806
    .xp <10,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Fight your way out of Thunder Ridge
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Fight your way out of Thunder Ridge
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_This will start a 45 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    .accept 812 >>Accept Need for a Cure
    .target Rhinag
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    .xp 9+2930 >>Grind to 2930+/6500 into level 9
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    +Grind until your hearthstone cooldown is <5 minutes
    .cooldown item,6948,<0
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    #label EnterOrg
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Enter Orgrimmar
    .zoneskip Orgrimmar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Accept Hidden Enemies
    .target Thrall
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Travel to the Valley of Honor
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Turn in Training the Beast
    .target Ormak Grimshot
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Train your pet spells
    .target Xao'tsu
step << Hunter
    #completewith FindAntidote
    +|cRXP_WARN_Put|r |T132162:0|t[Beast Training]|cRXP_WARN_(under the General tab),|r |T132163:0|t[Revive Pet]|cRXP_WARN_, and|r |T132165:0|t[Feed Pet] |cRXP_WARN_onto your Action Bars|r
    >>|cRXP_WARN_Remember to train your pet whenever they get Training Points for|r |T132162:0|t[Beast Training]
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Equip the|r |T135499:0|t[Laminated Recurve Bow] |cRXP_WARN_when you are level 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Equip the|r |T135499:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #label FindAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ghan|r in the Cleft of Shadow
    .accept 813 >>Accept Finding the Antidote
    .target Kor'ghan
    .isOnQuest 812
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #completewith RazorTurnins2
    #label NeedACure
    >>|cRXP_WARN_Abandon Need for a Cure. This will remove the timer on the quest but you will still be able to do it|r
    .abandon 812 >>Abandon Need for a Cure
    .isOnQuest 812
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto 1454/1,-4494.81,1793.070,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamja|r and |cRXP_FRIENDLY_Gru'ark|r
    +Kill |cRXP_ENEMY_Gru'ark|r when he becomes hostile
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto 1454/1,-4501.41,1780.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamja|r
    >>Receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] from her
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .use 204716
    .itemcount 204716,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #completewith RazorTurnins2
    .hs >> Hearth to Razor Hill
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #requires NeedACure
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    .vendor >> Vendor Trash
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #season 2
    .goto 1411/1,-4772.28,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahi|r
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #season 2
    .use 204688 >>Use the |T134455:0|t[Rune Fragments] to create |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1
step << Hunter
    #xprate <1.5
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Turn in Dark Storms
    .accept 828 >>Accept Margoz
    .target Orgnil Soulscar
step << !Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r and |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Turn in Break a Few Eggs
    .turnin 96825 >>Turn in This Fruit Could Bite Back
    .target +Cook Torka
    .goto 1411/1,-4665.47,311.62
    .turnin 806 >>Turn in Dark Storms
    .accept 828 >>Accept Margoz
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Hunter/Shaman/Warrior
    #xprate >1.49
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r and |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Turn in Dark Storms
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 837 >>Turn in Encroachment
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Train your class spells
    .accept 1505 >>Accept Veteran Uzzek
    .target Tarshaw Jaggedscar
step << Shaman
    #xprate <1.5
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Train your class spells
    .accept 2983 >>Accept Call of Fire
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    #xprate <1.5
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Train your class spells
    .target Swart
step << Warlock
    #xprate <1.5
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Train your class spells
    .target Dhugru Gorelust
step << Warlock
    #xprate <1.5
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate <1.5
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Accept Hex of Weakness << Troll
    .accept 5660 >> Accept Touch of Weakness << Undead
    .trainer >> Train your class spells
    .target Tai'jin
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .train 13549 >> Train your class spells
    .target Thotar
step << Rogue
    #xprate <1.5
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Train your class spells
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 10-12 Durotar
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal << Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-17 The Barrens << Troll !Rogue !Mage !Priest/Orc !Rogue !Warlock


step << Warrior/Shaman
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step << Warrior/Shaman
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step << Warrior/Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Warrior
    #xprate <1.5
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
    .target Uzzek
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
    .target Uzzek
step << Shaman
    #xprate <1.5
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
    .target Kranal Fiss
step << Warrior/Shaman
    #hardcore
    #completewith PoolsPickup
    .goto 1413/1,-2680.87,-365.05,150,0
    .subzone 380 >> Travel to The Crossroads
step << skip --Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Warrior/Shaman
    #label PoolsPickup
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step << Warrior/Shaman
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
step << Warrior/Shaman
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target Zargh
step << Warrior/Shaman
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
    .target Gazrog
step << Warrior/Shaman
    #xprate >1.49
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >>Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step << Warrior/Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .target Thork
step << Warrior/Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_Do NOT fly to Orgrimmar!|r
    .fp The Crossroads >> Get the The Crossroads flight path
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Warrior/Shaman
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .target Apothecary Helbrim
step << Warrior/Shaman
    #completewith next
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_Keep maximum distance from |cRXP_ENEMY_Kolkar|r |cRXP_WARN_as you loot the mushrooms. They are level 12-14|r
    >>|cRXP_WARN_The follow-up of this quest has the powerful |cRXP_FRIENDLY_Cauldron Stirrer|r |cRXP_WARN_as a reward. You can skip this quest for now if you do not intend to use it|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    .goto 1413/1,-1943.16,89.64
    >>Dive underwater to the |cRXP_PICK_Bubbling Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << Warrior/Shaman
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_Keep maximum distance from |cRXP_ENEMY_Kolkar|r |cRXP_WARN_in the area. They are level 12-14|r
    >>|cRXP_WARN_The follow-up of this quest has the powerful |cRXP_FRIENDLY_Cauldron Stirrer|r |cRXP_WARN_as a reward. You can skip this quest for now if you do not intend to use it|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    --#hardcore
    #completewith FungalSporesComplete
    .goto 1413/1,-2680.87,-365.05,150,0
    .subzone 380 >> Travel to The Crossroads
step << skip --Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Warrior/Shaman
    #label FungalSporesComplete
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wait for the RP to finish|r
    >>|cRXP_WARN_This starts a 45-minute timed quest|r
    .turnin 848 >> Turn in Fungal Spores
    .timer 7,Fungal Spores RP
    .accept 853 >> Accept Apothecary Zamah
    .target Apothecary Helbrim
step << Warrior/Shaman
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Buy one or more|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Shaman
    #sticky
    #completewith ZamahTurnin2
    +|cRXP_WARN_You are on a timed quest, don't go afk. It will get turned in around 30 minutes after pick-up|r
    .isOnQuest 853
step << Warrior/Shaman
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Turn in The Forgotten Pools
    .target Tonga Runetotem
step << Warrior/Shaman
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>Travel south down the road toward Camp Taurajo
step << Warrior/Shaman
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
    .target Omusa Thunderhorn
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .accept 749 >>Accept The Ravaged Caravan
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.715,59.325
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Accept Swoop Hunting
    .target Harken Windtotem
step << Warrior/Shaman
    .goto Mulgore,47.513,60.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.3,62.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Accept Dangers of the Windfury
    .target Ruul Eagletalon
step << Warrior/Shaman
    .goto Mulgore,47.8,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarlman|r
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
    .target Zarlman Two-Moons
step << Warrior/Shaman
    .goto Mulgore,47.0,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Accept Mazzranache
    .target Maur Raincaller
step << Warrior/Shaman
    #xprate <1.5
    #completewith EnterTB
    >>Kill |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r and |cRXP_ENEMY_Swoops|r as you quest throughout the zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith EnterTB
    >>Kill |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r and |cRXP_ENEMY_Swoops|r as you quest throughout the zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith EnterTB
    >>Keep an eye out for |cRXP_ENEMY_Ghost Howl|r. Loot him for his |T134358:0|t[|cRXP_LOOT_Demon Scarred Cloak|r]. Use it to start the quest
    >>|cRXP_WARN_Do not accept the quest yet|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .use 4854
    .unitscan Ghost Howl
step << Warrior/Shaman
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Collect the |cRXP_PICK_Ambercorns|r. They can be found under the trees on the ground
    .complete 771,2 --Ambercorn (2)
step << Warrior/Shaman
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Collect the |cRXP_PICK_Well Stones|r around the Well
    .complete 771,1 --Well Stone (2)
step << Warrior/Shaman
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Do not follow the wolf that spawns|r
    .turnin 771 >>Turn in Rite of Vision
    .accept 772 >>Accept Rite of Vision
    .target Zarlman Two-Moons
step << Warrior/Shaman
    #label EnterTB
    #completewith ZamahTurnin2
    .goto Thunder Bluff,32.0,66.9,60,0
    .zone Thunder Bluff >> Travel to Thunder Bluff
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
    .money <0.020
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .target Ansekhwa
    .money <0.010
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .accept 76156 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >> Get the Thunder Bluff flight path << !Tauren
    .target Tal
step << Warrior/Shaman
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> Travel to the Spirit Rise and enter the pools of vision
step << Warrior/Shaman
    #label ZamahTurnin2
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step << Warrior/Shaman
    #optional
    #completewith RiteofWisdomTurnin
    +|cRXP_WARN_Equip the|r |T135145:0|t[Cauldron Stirrer]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior/Shaman
    #completewith RiteofWisdomTurnin
    .goto Thunder Bluff,29.04,37.68,55,0
    .goto Mulgore,33.48,36.68,40 >> Run out of the cave, then leave Thunder Bluff by jumping down somewhere under the bridge
    .zoneskip Mulgore
step << Warrior/Shaman
    #xprate <1.5
    #completewith SacredBurialTurnIn
    >>Kill |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r and |cRXP_ENEMY_Swoops|r as you quest throughout the zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith SacredBurialTurnIn
    >>Kill |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r and |cRXP_ENEMY_Swoops|r as you quest throughout the zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith SacredBurialTurnIn
    >>Keep an eye out for |cRXP_ENEMY_Ghost Howl|r. Loot him for his |T134358:0|t[|cRXP_LOOT_Demon Scarred Cloak|r]
    >>|cRXP_WARN_Do not accept the quest yet|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .unitscan Ghost Howl
step << Warrior/Shaman
    #label RiteofWisdomTurnin
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiserunner|r
    >>|cRXP_WARN_He is located in the cave south/west of Thunder Bluff|r
    .turnin 772 >>Turn in Rite of Vision
    .accept 773 >>Accept Rite of Wisdom
    .target Seer Wiserunner
step << Warrior/Shaman
    #completewith next
    .destroy 4823 >>Destroy|T134712:0|t[Water of the Seers] as you won't need it
step << Warrior/Shaman
    #loop
	.goto 1412/1,297.06,-1769.98,50,0
	.goto 1412/1,353.57,-1744.30,50,0
	.goto 1412/1,418.30,-1748.41,50,0
	.goto 1412/1,451.18,-1714.50,50,0
	.goto 1412/1,449.13,-1672.71,50,0
	.goto 1412/1,417.27,-1653.53,50,0
	.goto 1412/1,381.31,-1682.99,50,0
	.goto 1412/1,323.26,-1687.440,50,0
	.goto 1412/1,310.41,-1651.82,50,0
	.goto 1412/1,276.51,-1684.36,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>Kill |cRXP_ENEMY_Windfury Wind Witches|r and |cRXP_ENEMY_Windfury Harpies|r. Loot them for their |cRXP_LOOT_Talons|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step << Shaman
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for the |cRXP_LOOT_Artifact Storage Key|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    .goto Mulgore,31.27,49.87
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for their |cRXP_LOOT_Prospector's Picks|r
    .use 4702 >> Smash the |T134707:0|t[Picks] at the Forge
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,33.10,47.69,0
    .goto 1412/1,284.21,-1901.16,40,0
    .goto 1412/1,320.69,-1972.06,40,0
    .goto 1412/1,374.12,-1949.80,40,0
    .goto 1412/1,410.08,-1991.24,40,0
    .goto 1412/1,448.10,-1988.16,40,0
    .goto 1412/1,456.32,-1925.14,40,0
    .goto 1412/1,424.98,-1923.42,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for the |cRXP_LOOT_Artifact Storage Key|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Bael'dun Appraisers|r cast|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% health for about 75 health)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .goto 1412/1,426.52,-1969.66
    >>Open the |cRXP_PICK_Artifact Storage|r chest. Loot it for the |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .equip 18,206388 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith SacredBurialTurnIn
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior/Shaman
    #label SacredBurial
    .goto 1412/1,-1026.88,-1150.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Accept A Sacred Burial
    .target Lorekeeper Raintotem
step << Warrior/Shaman
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ancestral Spirit|r
    .turnin 773 >>Turn in Rite of Wisdom
    .target Ancestral Spirit
step << Warrior/Shaman
    #loop
	.goto 1412/1,-1092.12,-1056.56,0
	.goto 1412/1,-1026.88,-1150.40,40,0
	.goto 1412/1,-1093.15,-1058.27,40,0
	.goto 1412/1,-1125.52,-1043.20,40,0
	.goto 1412/1,-1146.58,-1028.13,40,0
	.goto 1412/1,-1153.77,-988.40,40,0
	.goto 1412/1,-1117.81,-940.790,40,0
	.goto 1412/1,-1057.19,-940.790,40,0
	.goto 1412/1,-1042.80,-994.22,40,0
	.goto 1412/1,-1055.65,-1025.05,40,0
	.goto 1412/1,-1092.12,-1056.56,40,0
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    #label SacredBurialTurnIn
    .goto 1412/1,-1026.88,-1150.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Turn in A Sacred Burial
    .target Lorekeeper Raintotem
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Use the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves: Molten Blast]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    >>Kill |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r and |cRXP_ENEMY_Swoops|r as you quest throughout the zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith next
    >>Kill |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r and |cRXP_ENEMY_Swoops|r as you quest throughout the zone
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
    .goto Mulgore,53.74,48.17
    >>Click the |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step << Warrior/Shaman
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Turn in Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior/Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn|r
    .accept 770 >>Accept The Demon Scarred Cloak
    .turnin 770 >>Turn in The Demon Scarred Cloak
    .target Skorn
    .target Skorn Whitecloud
    .use 4854
    .itemcount 4854,1
step << Warrior/Shaman
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r
    .turnin 746 >>Turn in Dwarven Digging
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.35,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>Turn in Dangers of the Windfury
    .target Ruul Eagletalon
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Turn in Swoop Hunting
    .target Harken Windtotem
    .isQuestComplete 761
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 547 >> Train your class spells
    .target Narm Skychaser
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Train your class spells
    .target Krang Stonehoof
    .xp <12,1
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 751 >> Turn in The Ravaged Caravan
    .accept 764 >> Accept The Venture Co
    .accept 765 >> Accept Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >> Travel to The Venture Co. Mine
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>Open the |cRXP_PICK_Blasting Supplies|r inside the mine and outside on the other side. Loot them for the |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_Stay on the upper levels of the cave if possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r and |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Warrior/Shaman
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Run into the mine and hug the right/east side. Kill |cRXP_ENEMY_Supervisor Fizsprocket|r. Loot him for his |cRXP_LOOT_Clipboard|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Fizsprocket
step << Warrior/Shaman
    #label VentureCoKills
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r and |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #season 2
    #loop
    .goto 1412/1,-1122.95,-1476.80,0
    .goto 1412/1,-1228.27,-1778.89,15,0
    .goto 1412/1,-1178.95,-1739.16,15,0
    .goto 1412/1,-1054.11,-1738.13,15,0
    .goto 1412/1,-1118.84,-1688.47,15,0
    .goto 1412/1,-1214.91,-1618.60,15,0
    .goto 1412/1,-1208.74,-1670.320,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto 1412/1,-1085.44,-1540.17,15,0
    .goto 1412/1,-1016.09,-1507.63,15,0 --Outside
    .goto 1412/1,-1122.95,-1476.80,15,0 --Outside
    >>Open the |cRXP_PICK_Blasting Supplies|r inside the mine and outside on the other side. Loot them for the |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_Stay on the upper levels of the cave if possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >> Grind to 7150+/8700xp
step << Warrior/Shaman
    #optional
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+6375 >> Grind to 6375+/8700xp
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 764 >>Turn in The Venture Co.
    .turnin 765 >>Turn in Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step << Warrior
    #xprate >1.49
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Train your class spells
    .target Krang Stonehoof
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >> Travel to Thunder Bluff
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76156 >>Turn in Stalk With The Earthmother
    .accept 76160 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Accept Preparation for Ceremony
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    #completewith next
    .zone Mulgore >>Take the northern elevator down to Mulgore
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Windfury Sorceresses|r. Loot them for their |cRXP_LOOT_Azure Feathers|r
    >>Kill |cRXP_ENEMY_Windfury Matriarchs|r. Loot them for their |cRXP_LOOT_Bronze Feathers|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    #loop
    .goto Mulgore,30.89,22.41,0
    .goto Mulgore,30.89,22.41,20,0
    .goto Mulgore,29.57,23.43,20,0
    .goto Mulgore,29.63,26.32,20,0
    >>Loot |cRXP_LOOT_Windfury Cones|r on the ground
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #loop
    .goto Mulgore,31.7,28.2,0
    .goto Mulgore,30.2,19.5,0
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    >>Kill |cRXP_ENEMY_Windfury Sorceresses|r. Loot them for their |cRXP_LOOT_Azure Feathers|r
    >>Kill |cRXP_ENEMY_Windfury Matriarchs|r. Loot them for their |cRXP_LOOT_Bronze Feathers|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    >>Use the |T133748:0|t[Mortar and Pestle] to create |T133213:0|t[Pine Salve]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Turn in Preparation for Ceremony
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76160 >>Turn in Stalk With The Earthmother
    .accept 76240 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ah
    .goto 1456/1,44.58,-1263.320,0
    .goto 1456/1,94.89,-1210.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T133894:0|t[Raw Brilliant Smallfish] |cRXP_BUY_from the Auction House|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto 1456/1,35.18,-1208.98,12,0
    .goto 1456/1,25.16,-1198.40,4,0
    .goto 1456/1,31.43,-1192.07,4,0
    .goto 1456/1,36.02,-1196.11,4,0
    .goto 1456/1,32.99,-1201.400,4,0
    .goto 1456/1,-65.54,-1177.18,15 >>Travel toward |cRXP_FRIENDLY_Sewa Mistrunner|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto 1456/1,-69.19,-1172.80,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Train |T136245:0|t[Fishing]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto 1456/1,-65.54,-1177.18,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Buy a|r |T132932:0|t[Fishing Pole] |cRXP_BUY_and|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_from her|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Equip the|r |T132932:0|t[Fishing Pole]
    .use 6256
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Attach the|r |T134335:0|t[Shiny Bauble] |cRXP_WARN_to your|r |T132932:0|t[Fishing Pole]
    .use 6529
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto 1456/1,94.78,-1257.41
    >>Fish in the pond until you get a |T133894:0|t[|cRXP_LOOT_Raw Brilliant Smallfish|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    >>Use the |T132147:0|t[Knife Set] to create |T134007:0|t[Fish Chunks]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76240 >>Turn in Stalk With The Earthmother
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    .abandon 766 >> Abandon Mazzranache
step << Warrior/Shaman
    #xprate >1.49
    .hs >> Hearth to Crossroads
    .subzoneskip 380
    .bindlocation 380,1
    .use 6948
step << Warrior/Shaman
    #xprate <1.5
    #completewith MargozTurnIn
    .hs >> Hearth to Razor Hill
    .subzoneskip 362
    .bindlocation 362,1
    .use 6948
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <1.5
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Train your class spells
    .target Swart
    .xp <12,1
step << Shaman
    #xprate <1.5
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #xprate <1.5
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
    .target Telf Joolam
step << Warrior
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jark|r
    .vendor >>|cRXP_BUY_Buy|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .target Jark
step << Hunter
    #completewith MargozTurnIn
    +Tame a |cRXP_ENEMY_Venomtail Scorpid|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate <1.5
    #completewith next
    .subzone 371 >>Travel toward Dustwind Cave
step << Shaman
    #xprate <1.5
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Kill |cRXP_ENEMY_Burning Blade Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step
    #xprate <1.5 << !Hunter
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Travel to |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step
    #xprate <1.5 << !Hunter
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Turn in Margoz
    .accept 827 >>Accept Skull Rock
    .target Margoz
    .isQuestTurnedIn 806
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto 1411/1,-4774.39,780.80,50 >> Travel toward Dustwind Cave
    .isQuestTurnedIn 828
step << Mage
    #xprate <1.5
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r inside the Skull Rock Cave. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .train 401768,1
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r. Loot them for their |cRXP_LOOT_Collars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step << Mage
    #season 2
    #xprate <1.5
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r inside the Skull Rock Cave. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate <1.5
    #season 2
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
    .itemcount 203752,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    .goto 1411/1,-4876.97,1452.310,60 >> Travel toward Skull Rock
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    >>Kill |cRXP_ENEMY_Venomtail Scorpids|r. Loot them for their |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r. Loot them for their |cRXP_LOOT_Collars|r and for a |cRXP_LOOT_Lieutenant's Insignia|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Kill |cRXP_ENEMY_Gazz'uz|r. Loot him for his |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r]
    >>|cRXP_WARN_Use the |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r] to start the quest|r
    >>|cRXP_WARN_Use your|r |T134712:0|t[Really Sticky Glue] |cRXP_WARN_on the|r |cRXP_ENEMY_Voidwalker|r |cRXP_WARN_to avoid being hit, and|r |T134829:0|t[Healing Potions] |cRXP_WARN_to restore health. Use LoS (line of sight) to avoid|r |cRXP_ENEMY_Gazz'uz|r |cRXP_WARN_his Shadow Bolts|r
    >>|cRXP_WARN_You can run to bodies of water found within the cave to evade the|r |cRXP_ENEMY_Voidwalker|r |cRXP_WARN_after killing|r |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Be careful as he is VERY difficult. You can skip this quest if you need|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
    .use 4903
	.unitscan Gazz'uz
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #loop
    .goto 1411/1,-4805.59,1495.67,0
    .goto 1411/1,-4855.82,1498.84,15,0
    .goto 1411/1,-4833.08,1494.96,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    .goto 1411/1,-4784.44,1535.85,15,0
    .goto 1411/1,-4750.60,1531.62,15,0
    .goto 1411/1,-4734.21,1505.54,15,0
    .goto 1411/1,-4693.49,1519.64,15,0
    .goto 1411/1,-4679.75,1501.31,15,0
    .goto 1411/1,-4684.50,1466.06,15,0
    .goto 1411/1,-4805.59,1495.67,15,0
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r. Loot them for their |cRXP_LOOT_Collars|r and for a |cRXP_LOOT_Lieutenant's Insignia|r
    >>|cRXP_WARN_Skip the|r |cRXP_LOOT_Lieutenant's Insignia|r |cRXP_WARN_if you're unlucky with the drop|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Ravine
    >>Kill |cRXP_ENEMY_Venomtail Scorpids|r. Loot them for their |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << !Hunter
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Turn in Skull Rock
    .accept 829 >>Accept Neeru Fireblade
    .target Margoz
    .isQuestTurnedIn 806
step
    #xprate <1.5
    #label Ravine
    #completewith next
    .subzone 370 >> Drop down into Drygulch Ravine
step
    #xprate <1.5
    #loop
    .goto 1411/1,-4816.69,972.910,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4818.28,975.38,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    .goto 1411/1,-4672.87,1131.89,40,0
    .goto 1411/1,-4816.69,972.910,40,0
    >>Kill |cRXP_ENEMY_Dustwind Savages|r and |cRXP_ENEMY_Dustwind Storm Witches|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step << skip
    #xprate <1.5
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 813 << Warrior/Shaman/Hunter
step
    #xprate <1.5
    --#hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto 1411/1,-4414.31,999.70,60 >> Travel through the cave toward |cRXP_FRIENDLY_Rezlak|r
step
    #xprate <1.5
    #label SecuringLinesTurnIn
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
    .target Rezlak
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #loop
    .goto Durotar,38.73,22.04,0
    .goto Durotar,42.64,20.45,60,0
    .goto Durotar,40.43,19.72,60,0
    .goto Durotar,40.59,16.41,60,0
    .goto Durotar,38.79,17.00,60,0
    .goto Durotar,38.73,22.04,60,0
    >>Finish killing |cRXP_ENEMY_Venomtail Scorpids|r. Loot them for their |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << Warrior/Shaman/Hunter
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Enter Orgrimmar
step << !Rogue
    #xprate <1.5 << Shaman/Warrior
    .goto Orgrimmar,47.21,70.27,15,0
    .goto Orgrimmar,47.55,68.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vendor and Repair
    .target Urtharo
step << Shaman/Warrior
    #xprate <1.5
    #label Gryhskaturnin1
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
    .target Innkeeper Gryshka
step << Shaman/Warrior
    #xprate <1.5
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
step << Shaman
    #xprate <1.5
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Train your class spells
    .target Kardris Dreamseeker
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Buy |r |T135419:0|t[Sharp Throwing Axe] |cRXP_BUY_from him|r
    .collect 3135,1,354,1 --Sharp Throwing Axe (200)
    .vendor >> Vendor your trash
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equip the|r |T135421:0|t[Sharp Throwing Axe] |cRXP_WARN_when you are level 11|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Turn in Hex of Weakness
    .trainer >> Train your class spells
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Turn in Hex of Weakness
    .trainer >> Train your class spells
    .target Ur'kyo
step << Mage
    .goto 1454/1,-4218.22,1473.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo|r
    .train 122 >> Train your class spells
    .target Pephredo
step << Warrior
    #xprate <1.5
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Travel to the Valley of Honor
step << Warrior
    #xprate <1.5
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 6546 >> Train your class spells
    .target Grezz Ragefist
step << !Warrior !Shaman !Hunter
    #label Admiralorders1
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Turn in Hidden Enemies
    .accept 5727 >>Accept Hidden Enemies
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Turn in Hidden Enemies
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Accept The Shattered Hand << Orc Rogue/Troll Rogue
    .target Therzok
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Turn in Finding the Antidote
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Train your class spells
    .target Mirket
step
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Turn in Neeru Fireblade
    .turnin 832 >>Turn in Burning Shadows
    .accept 809 >>Accept Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #xprate <1.5 << !Hunter
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Turn in Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << Rogue
    #season 2
    .goto 1454/1,-4464.24,1853.97
    >>Loot the |cRXP_PICK_Dusty Chest|r for |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_It's located in The Drag on the upper floor|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1
step << skip --!Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Enter Ragefire Chasm
step << skip --!Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Warrior !Shaman !Hunter
    --#hardcore
    #completewith ZeptoUC1
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step << skip --Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Enter Ragefire Chasm
step << skip --Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    --#hardcore
    #completewith FoundtheCure
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Accept Need for a Cure
    .turnin 812 >>Turn in Need for a Cure
    .target Rhinag
step << Warrior
    #xprate <1.5 << !Hunter
    .goto Durotar,42.01,24.33,90,0
    .goto Durotar,39.18,31.65
    >>Jump down into Thunder Ridge and kill |cRXP_ENEMY_Lightning Hides|r. Loot them for their |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,34.80,32.84,50,0 << !Warrior
    .goto Durotar,34.81,37.02,50,0 << !Warrior
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Travel south alongside the river toward Far Watch Post
    >>Kill |cRXP_ENEMY_Dreadmaw Crocolisks|r on the way. Loot them for |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Skip and abandon this quest if it won't drop|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Turn in Lost But Not Forgotten
    .target Misha Tor'kren
    .isQuestComplete 816
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step << Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Turn in Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Loot the|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_next to|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. This item has a 30 minute timer, so be sure to be quick|r
    .turnin 926 >>Turn in Flawed Power Stone
    .isOnQuest 924
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
    .target Uzzek
step << Mage
    #xprate >1.49
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r inside the Skull Rock Cave. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate >1.49
    #season 2
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r] |cRXP_WARN_to learn|r |T135820:0|t[Living Flame]
    .use 203752
    .itemcount 203752,1
step << Rogue/Mage/Priest/Warlock
    #label ZeptoUC1
    .goto 1411/1,-4648.55,1321.88,40 >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
    >>|cRXP_WARN_Conjure water while waiting|r << Mage
    .zoneskip Tirisfal Glades
step
    #optional
    .abandon 816 >>Abandon Lost But Not Forgotten
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate <1.99
#name 10-12 Tirisfal
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-14 Silverpine Forest << Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest

step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto 1458/0,239.14,1749.54,20,0
    .goto 1458/0,255.64,1724.70,20,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    .goto 1458/0,266.39,1567.11
    .fp Undercity >> Get the Undercity flight path
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #label Swordtraining1
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Archibald|r in the War Quarter
    .train 201 >>Train 1h Swords
    .target Archibald
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass1
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis Warren|r in the Trade Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass1
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis Warren|r in the Trade Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #optional
    #completewith KillDevlin
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    >>|cRXP_BUY_Buy Six|r |T134339:0|t[Discolored Worg Hearts] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << skip --Orc Rogue/Troll Rogue
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Perform a Logout Skip in the Magic Quarter by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLICK HERE for an example|r
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
    .zoneskip Undercity,1
step
    #completewith next
    .zone Tirisfal Glades >>Exit Undercity
    .zoneskip Undercity,1
step
    #completewith DeliverytoSPF
    .goto Tirisfal Glades,61.52,53.20,80 >> Travel to Brill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r and |cRXP_FRIENDLY_Gretchen|r inside the inn
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_is on the second floor|r
    .accept 354 >>Accept Deaths in the Family
    .accept 362 >>Accept The Haunted Mills
    .target +Coleman Farthing
    .goto 1420/0,244.36,2262.26
    .accept 375 >>Accept The Chill of Death
    .target +Gretchen Dedmar
    .goto 1420/0,236.68,2249.01
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
step << Warrior
    #optional
    .abandon 1505 >>Abandon Veteran Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandon Path of Defense
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Accept Speak with Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ageron|r inside the inn
    .accept 1478 >> Accept Halgar's Summons
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r inside the inn
    .accept 1885 >>Accept Mennet Carkad
    .target Marion Call
step << Mage
    .goto 1420/0,233.52,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r inside the inn
    .accept 1881 >> Accept Speak with Anastasia
    .target Cain Firesong
step << !Mage
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r <<Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushrooms] |cRXP_BUY_from her|r << Warlock
    .vendor >> Vendor Trash
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto 1420/0,270.12,2253.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mrs. Winters|r
    >>|cRXP_BUY_Buy one or more|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #season 0,1
    .goto 1420/0,295.42,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #season 2
    .goto 1420/0,295.42,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .maxlevel 10 << !Warlock !Rogue
    .maxlevel 11 << Warlock
    .train 400095,1 << Rogue
step << Rogue
    #season 2
    #optional
    .goto 1420/0,295.42,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .maxlevel 10
step
    #season 0,1
    .goto 1420/0,288.64,2285.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>Accept Wanted: Maggot Eye
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
step
    #season 2
    .goto 1420/0,288.64,2285.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>Accept Wanted: Maggot Eye
    .maxlevel 11 << !Warrior !Warlock !Rogue
    .maxlevel 12 << Warlock/Rogue
    .maxlevel 13 << Warrior
    .train 400095,1 << Rogue
step
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r inside the building
    .accept 358 >>Accept Graverobbers
    .target Magistrate Sevren
    .maxlevel 10
step
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Accept Delivery to Silverpine Forest
    .accept 367 >>Accept A New Plague
    .target Apothecary Johaan
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Accept A Putrid Task
    .target Deathguard Dillinger
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Turn in Speak with Dillinger
    .accept 1819 >> Accept Ulag the Cleaver
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Click the|r |cRXP_WARN_Mausoleum Trigger|r |cRXP_WARN_on the ground. This will summon|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Kill him|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Turn in Ulag the Cleaver
    .accept 1820 >> Accept Speak with Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step
    #optional
    #completewith Pumpkins
    >>Kill any |cRXP_ENEMY_Darkhound|r you see. Loot them for their |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_You will receive|r |T133849:0|t[Slumber Sand] |cRXP_WARN_from the follow-up of this quest|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
    .isOnQuest 367
step
    #optional
    #label Claws
    #loop
    .goto 1420/0,655.12,2120.98,0
    .goto 1420/0,550.28,2315.28,50,0
    .goto 1420/0,622.58,2322.51,50,0
    .goto 1420/0,678.16,2319.80,50,0
    .goto 1420/0,716.12,2282.15,50,0
    .goto 1420/0,682.23,2218.58,50,0
    .goto 1420/0,670.48,2128.81,50,0
    .goto 1420/0,595.47,2134.53,50,0
    .goto 1420/0,613.54,2082.72,50,0
    .goto 1420/0,655.12,2120.98,50,0
    >>Kill |cRXP_ENEMY_Rotting Dead|r and |cRXP_ENEMY_Ravaged Corpses|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .isOnQuest 404
step
    #optional
    #completewith Pumpkins
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Pumpkins
    .goto 1420/0,1184.71,2205.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Accept Fields of Grief
    .target Deathguard Simmer
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Rogue
    #season 2
    #optional
    .goto 1420/0,1184.71,2205.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Accept Fields of Grief
    .target Deathguard Simmer
    .maxlevel 10
step << Mage
    #season 2
    #completewith next
    .goto Tirisfal Glades,36.72,50.94,0
    .goto Tirisfal Glades,34.78,51.24,0
    >>Cast |T136071:0|t[Polymorph] on |cRXP_ENEMY_Odd Melons|r
    >>Loot the |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r on the ground
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    #loop
    .goto 1420/0,1378.12,2328.54,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto 1420/0,1377.66,2328.54,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto 1420/0,1448.16,2336.67,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto 1420/0,1471.20,2283.65,50,0
    .goto 1420/0,1378.12,2328.54,50,0
    >>Loot the |cRXP_LOOT_Pumpkins|r found in the field.
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step
    #optional
    #loop
    .goto 1420/0,1597.27,2290.28,0
    .goto 1420/0,1509.16,2351.13,50,0
    .goto 1420/0,1512.77,2299.02,50,0
    .goto 1420/0,1597.27,2290.28,50,0
    .goto 1420/0,1676.80,2316.79,50,0
    .goto 1420/0,1681.78,2354.14,50,0
    .goto 1420/0,1649.69,2405.66,50,0
    .goto 1420/0,1632.07,2436.690,50,0
    .goto 1420/0,1580.56,2487.00,50,0
    .goto 1420/0,1509.16,2473.14,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto 1420/0,1509.16,2351.13,50,0
    >>Kill |cRXP_ENEMY_Scarlet Warriors|r.
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #optional
    #completewith next
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Darkhounds1
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    >>Kill any |cRXP_ENEMY_Darkhound|r you see. Loot them for their |cRXP_LOOT_Blood|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step
    #optional
    #softcore
    #completewith ProofofDemiseTurnin
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 427
    .xp >10,1
step
    #optional
    #softcore
    #completewith ProofofDemiseTurnin
    .goto Tirisfal Glades,58.20,51.43,120 >> Travel back to Brill
    .isQuestComplete 427
    .xp <10,1
step
    #optional
    #hardcore
    #completewith ProofofDemiseTurnin
    .goto Tirisfal Glades,58.20,51.43,120 >> Travel back to Brill
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 404 >>Turn in A Putrid Task
    .accept 426 >>Accept The Mills Overrun
    .isQuestComplete 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .accept 426 >>Accept The Mills Overrun
    .isQuestTurnedIn 404
    .target Deathguard Dillinger
step
    #optional
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Turn in A New Plague
    .accept 368 >>Accept A New Plague
    .isQuestComplete 367
    .target Apothecary Johaan
step
    #optional
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 368 >>Accept A New Plague
    .isQuestTurnedIn 367
    .target Apothecary Johaan
step
    #optional
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .turnin 365 >> Turn in Fields of Grief
    .accept 407 >> Accept Fields of Grief
    .isQuestComplete 365
    .target Apothecary Johaan
step
    #optional
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 407 >> Accept Fields of Grief
    .isQuestTurnedIn 365
    .target Apothecary Johaan
step
    #optional
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 427 >>Turn in At War With The Scarlet Crusade
    .accept 370 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestComplete 427
step
    #optional
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .accept 370 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestTurnedIn 427
step
    #optional
    #label ProofofDemiseTurnin
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burgess|r
    .accept 374 >>Accept Proof of Demise
    .target Deathguard Burgess
    .isQuestTurnedIn 427
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
step << Warlock/Mage
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
step << Warlock/Mage
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Get the Undercity flight path
    .target Michael Garrett
step << Warlock/Mage
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    >>|cRXP_BUY_Buy Six|r |T134339:0|t[Discolored Worg Hearts] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1478 >> Turn in Halgar's Summons
    .accept 1473 >> Accept Creature of the Void
    .isQuestAvailable 1504
step << Mage
    #optional
    .abandon 1883 >> Abandon Speak with Un'thuwa, otherwise you won't be able to accept the upcoming quest
    .isOnQuest 1883
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r in the Magic Quarter
    .turnin 1881 >> Turn in Speak with Anastasia
    .accept 1882 >> Accept The Balnir Farmstead
    .target Anastasia Hartwell
step << Undead Priest
    #completewith TouchofWeakness
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
step << Undead Priest
    #completewith TouchofWeakness
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
step << Undead Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    >>|cRXP_BUY_Buy Six|r |T134339:0|t[Discolored Worg Hearts] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Undead Priest
    #optional
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Turn in Touch of Weakness
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    #label TouchofWeakness
    .goto 1458/0,403.29,1760.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >> Accept Touch of Weakness
    .turnin 5658 >> Turn in Touch of Weakness
    .target Aelthalyste
step << Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining2
    .goto 1458/0,239.14,1749.54,20,0
    .goto 1458/0,255.64,1724.70,20,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto 1458/0,266.39,1567.11
    .fp Undercity >> Get the Undercity flight path
    .target Michael Garrett
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass2
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis Warren|r in the Trade Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass2
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis Warren|r in the Trade Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Turn in Mennet Carkad
    .accept 1886 >>Accept The Deathstalkers
    .target Mennet Carkad
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .zoneskip Undercity,1
step << Rogue
    #label Swordtraining2
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Archibald|r in the War Quarter
    .train 201 >>Train 1h Swords
    .target Archibald
    .money <0.1
    .zoneskip Undercity,1
step << Rogue
    #optional
    #completewith KillDevlin
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    >>|cRXP_BUY_Buy Six|r |T134339:0|t[Discolored Worg Hearts] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock/Mage/Rogue
    #optional
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
step << Undead Priest
    #optional
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith ScarletCrusade1
    >>Collect |cRXP_LOOT_Scarlet Insignia Rings|r
    >>|cRXP_WARN_You don't have to complete this step now|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step << Warlock
    #optional
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Loot |cRXP_PICK_Perrine's Chest|r for |T133733:0|t[Egalin's Grimoire]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step
    #optional
    #label ScarletCrusade1
    #loop
	.goto 1420/0,727.42,1742.31,0
	.goto 1420/0,770.80,1762.79,40,0
	.goto 1420/0,763.57,1820.93,40,0
	.goto 1420/0,721.54,1857.38,40,0
	.goto 1420/0,694.88,1848.04,40,0
	.goto 1420/0,641.56,1800.45,40,0
	.goto 1420/0,651.05,1748.93,40,0
	.goto 1420/0,685.39,1741.70,40,0
	.goto 1420/0,727.42,1742.31,40,0
    >>Kill |cRXP_ENEMY_Captain Perrine|r, |cRXP_ENEMY_Zealots|r and |cRXP_ENEMY_Missionaries|r.
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .isOnQuest 370
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Loot |cRXP_PICK_Perrine's Chest|r on the ground for |T133733:0|t[Egalin's Grimoire]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Travel back into the Undercity through the sewers
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1473 >> Turn in Creature of the Void
    .accept 1471 >> Accept The Binding
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>|cRXP_WARN_Use the|r |T134416:0|t[Runes of Summoning] |cRXP_WARN_at the Summoning Circle|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Kill the |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Turn in The Binding
    .target Carendin Halgar
    .isQuestAvailable 1504
step << skip --Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLICK HERE for an example|r
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
    .zoneskip Undercity,1
step << Warlock
    #completewith next
    .goto 1420/0,235.32,1883.89,50,0
    .zone Tirisfal Glades >> Exit Undercity
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith next
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,47.60,44.03,150 >> Travel northwest toward Agamand Mills
    .isOnQuest 362
step
    #optional
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Thurman's Letter|r] |cRXP_WARN_may drop from these mobs. Accept the quest if it does|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Accept A Letter Undelivered
    .use 2839
step
    #completewith ThurmanGregor
    >>Kill |cRXP_ENEMY_Soldiers|r and |cRXP_ENEMY_Bonecasters|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #optional
    #label KillDevlin
    .goto 1420/0,894.16,2609.00
    >>Kill |cRXP_ENEMY_Devlin|r. Loot him for his |cRXP_LOOT_Remains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    #optional
    .goto 1420/0,803.78,2752.40
    >>Kill |cRXP_ENEMY_Nissa|r. Loot her for her |cRXP_LOOT_Remains|r. She can be inside the building
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
    .isOnQuest 354
step
    #optional
    #label ThurmanGregor
    #loop
    .goto 1420/0,996.28,2899.11,0
    .goto 1420/0,1058.19,2775.59,60,0
    .goto 1420/0,998.54,2903.93,60,0
    .goto 1420/0,919.01,2939.770,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,996.28,2899.11,60,0
    >>Kill |cRXP_ENEMY_Thurman|r and |cRXP_ENEMY_Gregor|r. Loot them for their |cRXP_LOOT_Remains|r. They can patrol around
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
    .isOnQuest 354
step
    #loop
    #label MillsOverun
    .goto 1420/0,996.28,2899.11,0
    .goto 1420/0,1058.19,2775.59,60,0
    .goto 1420/0,998.54,2903.93,60,0
    .goto 1420/0,919.01,2939.770,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,996.28,2899.11,60,0
    >>Kill |cRXP_ENEMY_Soldiers|r and |cRXP_ENEMY_Bonecasters|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #requires MillsOverun
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> Travel down the hills.
    >>|cRXP_WARN_Be careful. Don't take too much fall damage. Follow the waypoint for safety|r
    .isQuestComplete 354
step
    #optional
    #requires MillsOverun
    #completewith next
    >>Kill |cRXP_ENEMY_Gnolls|r and |cRXP_ENEMY_Mongrels|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
    .isOnQuest 358
step
    #optional
    #requires MillsOverun
    #label MaggotEye
    .goto 1420/0,382.63,2910.55
    >>Kill |cRXP_ENEMY_Maggot Eye|r. Loot him for his |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #optional
    #loop
    .goto 1420/0,342.87,2998.22,0
    .goto 1420/0,350.10,2962.37,50,0
    .goto 1420/0,342.87,2998.22,50,0
    .goto 1420/0,293.16,2974.12,50,0
    .goto 1420/0,254.75,2951.820,50,0
    .goto 1420/0,188.33,2950.02,50,0
    .goto 1420/0,65.42,2927.12,50,0
    .goto 1420/0,-15.92,2964.78,50,0
    .goto 1420/0,-49.36,3040.39,50,0
    .goto 1420/0,342.87,2998.22,50,0
    >>Kill |cRXP_ENEMY_Murlocs|r. Loot them for their |cRXP_LOOT_Scales|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    #optional
    #completewith RotHideGnolls
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #season 2
    #optional
    #completewith RotHideGnolls
    .goto 1420/0,329.31,2838.25,0
    .goto 1420/0,395.29,2774.69,0
    .goto 1420/0,318.02,2722.57,0
    >>Cast |T136071:0|t[Polymorph] on |cRXP_ENEMY_Odd Melons|r
    >>Loot the |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r on the ground
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    #label RotHideGnolls
    #loop
    .goto 1420/0,537.18,2555.98,0
    .goto 1420/0,488.83,2642.44,40,0
    .goto 1420/0,561.13,2596.65,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto 1420/0,537.18,2555.98,40,0
    .goto 1420/0,483.40,2514.41,40,0
    .goto 1420/0,537.18,2555.98,40,0
    >>Kill |cRXP_ENEMY_Mongrels|r and |cRXP_ENEMY_Graverobbers|r. Loot them for their |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    #softcore
    #completewith MillsTurnin
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .xp >10,1
step
    #optional
    #softcore
    #completewith MillsTurnin
    .subzone 159 >> Travel to Brill
    .xp <10,1
step
    #optional
    #hardcore
    #completewith MillsTurnin
    .subzone 159 >> Travel to Brill
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Turn in The Mills Overrun
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    #optional
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Turn in A New Plague
    .accept 369 >>Accept A New Plague
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #optional
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 369 >>Accept A New Plague
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    #optional
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Turn in Wanted: Maggot Eye
    .turnin 370 >>Turn in At War With The Scarlet Crusade
    .accept 371 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestComplete 370
step << Rogue
    #season 2
    .goto 1420/0,289.10,2313.170
    .use 208085 >>Use the |T133385:0|t[|cRXP_LOOT_Scarlet Lieutenant Signet Ring|r] to create |T134328:0|t[|cRXP_LOOT_Forged Scarlet Memorandum|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto 1420/0,289.10,2313.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamie Nore|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1
step
    #optional
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Turn in Wanted: Maggot Eye
    .accept 371 >>Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Turn in Wanted: Maggot Eye
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .turnin 358 >>Turn in Graverobbers
    .accept 359 >>Accept Forsaken Duties
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .accept 359 >>Accept Forsaken Duties
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #optional
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Buy a|r |T132891:0|t[Coarse Thread] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto 1420/0,250.69,2252.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yvette|r
    .turnin 361 >>Turn in A Letter Undelivered
    .target Yvette Farthing
    .isOnQuest 361
step
    #optional
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target Coleman Farthing
    .isQuestComplete 354
step
    #optional
    #label MillsTurnin
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .accept 355 >>Accept Speak with Sevren
    .target Coleman Farthing
    .isQuestComplete 362
step
    #optional
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .accept 355 >>Accept Speak with Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 354
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Turn in Speak with Coleman << Warrior
    .accept 1821 >>Accept Agamand Heirlooms << Warrior
    .accept 355 >>Accept Speak with Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 1819
step
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r on the second floor of the inn
    .turnin 375 >>Turn in The Chill of Death
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588 >>Train |T135926:0|t[Inner Fire]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145 >> Train |T135812:0|t[Fireball Rank 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Train |T132223:0|t[Overpower]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766 >> Train |T132219:0|t[Kick]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Train |T136168:0|t[Health Funnel]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto 1420/0,244.81,2269.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Renee|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T134532:0|t[Red-speckled Mushroom] |cRXP_BUY_from her|r <<Warrior/Rogue
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_and|r |T134532:0|t[Red-speckled Mushroom] |cRXP_BUY_from her|r << Warlock/Hunter
    .vendor >> Vendor Trash
    .collect 1179,20,359,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,359,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,359,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,359,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    #optional
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .turnin 359 >>Turn in Forsaken Duties
    .accept 360 >>Accept Return to the Magistrate
    .accept 356 >>Accept Rear Guard Patrol
    .target Deathguard Linnea
    .isQuestTurnedIn 358
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .accept 356 >>Accept Rear Guard Patrol
    .target Deathguard Linnea
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    #completewith HorrorsandSpirits
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #optional
    #completewith next
    >>Kill |cRXP_ENEMY_Bleeding Horrors|r and |cRXP_ENEMY_Wandering Spirits|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #completewith HorrorsandSpirits
    >>Cast |T136071:0|t[Polymorph] on |cRXP_ENEMY_Odd Melons|r
    >>Loot the |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r on the ground
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    .goto 1420/0,-467.79,1969.75
    >>Loot any of the plants on the ground for a |cRXP_PICK_Balnir Snapdragon|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #optional
    #label HorrorsandSpirits
    #loop
	.goto 1420/0,-324.55,2000.48,0
	.goto 1420/0,-324.55,2000.48,50,0
	.goto 1420/0,-330.88,2040.84,50,0
	.goto 1420/0,-359.34,2073.38,50,0
	.goto 1420/0,-421.25,2070.07,50,0
	.goto 1420/0,-464.63,2070.37,50,0
	.goto 1420/0,-516.14,2017.05,50,0
	.goto 1420/0,-466.44,1986.02,50,0
	.goto 1420/0,-436.61,1951.670,50,0
	.goto 1420/0,-355.28,1970.35,50,0
    >>Kill |cRXP_ENEMY_Bleeding Horrors|r and |cRXP_ENEMY_Wandering Spirits|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #loop
    .goto 1420/0,-423.96,1976.68,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto 1420/0,-423.96,1976.68,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Cast |T136071:0|t[Polymorph] on |cRXP_ENEMY_Odd Melons|r
    >>Loot the |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r on the ground
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>Use the |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r to create |T134332:0|t|cRXP_LOOT_[Spell Notes: Enlightenment]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_Use the|r |T134332:0|t|cRXP_LOOT_[Spell Notes: Enlightenment]|r |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Enlightenment]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Priest
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_Collect 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your Lesser Magic Wand. This is the last chance to get enough before Silverpine Forest|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Collect |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    #optional
    #loop
    .goto 1420/0,-573.53,2138.450,0
    .goto 1420/0,-528.35,2146.28,20,0
    .goto 1420/0,-624.59,2114.05,40,0
    .goto 1420/0,-654.87,2185.44,40,0
    .goto 1420/0,-652.16,2238.77,40,0
    .goto 1420/0,-550.49,2173.09,40,0
    .goto 1420/0,-452.43,2183.03,40,0
    .goto 1420/0,-407.69,2171.590,40,0
    .goto 1420/0,-406.34,2113.75,40,0
    .goto 1420/0,-453.33,2127.91,40,0
    .goto 1420/0,-573.53,2138.450,40,0
    >>Kill |cRXP_ENEMY_Captain Vachon|r and |cRXP_ENEMY_Scarlet Friars|r
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Scarlet Friars|r |cRXP_WARN_can cast|r |T135929:0|t[Lesser Heal]
    .complete 371,1 --Captain Vachon (1)
    .mob +Captain Vachon
    .complete 371,2 --Scarlet Friar (5)
    .mob +Scarlet Friar
    .isOnQuest 371
step
    #optional
    #label ScarletRings
    #loop
    .goto 1420/0,-573.53,2138.450,0
    .goto 1420/0,-624.59,2114.05,40,0
    .goto 1420/0,-654.87,2185.44,40,0
    .goto 1420/0,-652.16,2238.77,40,0
    .goto 1420/0,-550.49,2173.09,40,0
    .goto 1420/0,-452.43,2183.03,40,0
    .goto 1420/0,-407.69,2171.590,40,0
    .goto 1420/0,-406.34,2113.75,40,0
    .goto 1420/0,-453.33,2127.91,40,0
    .goto 1420/0,-573.53,2138.450,40,0
    >>Collect |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest
    #loop
    .goto 1420/0,-573.53,2138.450,0
    .goto 1420/0,-624.59,2114.05,40,0
    .goto 1420/0,-654.87,2185.44,40,0
    .goto 1420/0,-652.16,2238.77,40,0
    .goto 1420/0,-550.49,2173.09,40,0
    .goto 1420/0,-452.43,2183.03,40,0
    .goto 1420/0,-407.69,2171.590,40,0
    .goto 1420/0,-406.34,2113.75,40,0
    .goto 1420/0,-453.33,2127.91,40,0
    .goto 1420/0,-573.53,2138.450,40,0
    >>|cRXP_WARN_Collect 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your Lesser Magic Wand. This is the last chance to get enough before Silverpine Forest|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #loop
    .goto 1420/0,-808.96,2189.06,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto 1420/0,-808.96,2189.06,30,0
    .goto 1420/0,-878.10,2195.39,30,0
    .goto 1420/0,-945.88,2180.93,30,0
    .goto 1420/0,-985.64,2224.00,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto 1420/0,-1075.11,2314.38,30,0
    .goto 1420/0,-1072.85,2381.56,30,0
    .goto 1420/0,-1027.67,2432.17,30,0
    .goto 1420/0,-809.41,2431.26,30,0
    .goto 1420/0,-785.91,2352.64,30,0
    .goto 1420/0,-738.02,2268.29,30,0
    >>Kill |cRXP_ENEMY_Vicious Night Web Spiders|r. Loot them for their |cRXP_LOOT_Venom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
    .isOnQuest 369
step
    #optional
    #completewith LinneaTurnin
    .goto 1420/0,74.00,2022.47,60 >> Travel back toward |cRXP_FRIENDLY_Linnea|r
step
    #optional
    #completewith next
    >>Finish killing |cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_You can skip this quest if your rng has been bad|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label LinneaTurnin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Turn in Rear Guard Patrol
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #optional
    .goto 1420/0,275.54,2260.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Buy a|r |T132891:0|t[Coarse Thread] |cRXP_BUY_from|r |cRXP_FRIENDLY_her|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto 1420/0,280.06,2270.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Turn in Proof of Demise
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #optional
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Turn in At War With The Scarlet Crusade
    .target Executor Zygand
    .isQuestComplete 371
step
    #optional
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Turn in Return to the Magistrate
    .target Magistrate Sevren
    .isQuestTurnedIn 359
step
    #optional
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .turnin 355 >>Turn in Speak with Sevren
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step << Warrior
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .turnin 355 >>Turn in Speak with Sevren
    .accept 408 >>Accept The Family Crypt
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step
    #optional
    .goto 1420/0,346.94,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Turn in A New Plague
    .accept 492 >>Accept A New Plague
    .accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    .goto 1420/0,346.94,2259.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r upstairs
    .turnin 375 >>Turn in The Chill of Death
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588,1 >>Train |T135926:0|t[Inner Fire]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145,1 >> Train |T135812:0|t[Fireball Rank 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Train |T132223:0|t[Overpower]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766,1 >> Train |T132219:0|t[Kick]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Train |T136168:0|t[Health Funnel]
    .target Rupert Boch
    .xp <12,1
step << Warrior
    .goto 1420/0,891.90,2522.84,150,0
    .goto 1420/0,673.19,3026.84,20,0
    .goto 1420/0,670.48,3042.200,8 >> Travel to the crypt in Agamand Mills
    .isOnQuest 1821
step << Warrior
    #completewith CaptainDargol
    >>Loot the |cRXP_PICK_Agamand Weapon Racks|r on the ground
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #completewith next
    >>Kill |cRXP_ENEMY_Wailing Ancestors|r and |cRXP_ENEMY_Rotting Ancestors|r
    >>|cRXP_WARN_Be careful! The mobs in this crypt respawn dynamically!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Kill |cRXP_ENEMY_Captain Dargol|r. Loot him for his |cRXP_LOOT_Skull|r. He is at the bottom of the crypt
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
step << Warrior
    #completewith next
    >>Loot the |cRXP_PICK_Agamand Weapon Racks|r on the ground
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #loop
	.goto Tirisfal Glades,51.90,26.87,0
	.goto 1420/0,689.01,3058.47,15,0
	.goto 1420/0,656.02,3058.77,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Kill |cRXP_ENEMY_Wailing Ancestors|r and |cRXP_ENEMY_Rotting Ancestors|r
    >>|cRXP_WARN_Be careful! The mobs in this crypt respawn dynamically!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #loop
    .goto Tirisfal Glades,52.66,25.87,0
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87,12,0
    >>Loot the |cRXP_PICK_Agamand Weapon Racks|r on the ground
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << skip --Warrior
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Jump onto one of the weapon racks. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .isQuestComplete 408
step << skip --Warrior
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Warrior
    --#hardcore
    #completewith next
    .subzone 159 >>Travel to Brill
step << Warrior
    .goto 1420/0,265.15,2305.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sevren|r
    .turnin 408 >>Turn in The Family Crypt
    .target Magistrate Sevren
    .isQuestComplete 408
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r inside the inn
    .turnin 1821 >>Turn in Agamand Heirlooms
    .target Coleman Farthing
    .isQuestComplete 1821
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r inside the inn
    .turnin 1822 >>Heirloom Weapon
    .target Coleman Farthing
    .isQuestTurnedIn 1821
step
    #optional
    .goto 1420/0,233.06,2292.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captured Scarlet Zealot|r downstairs in the back of the inn
    .turnin 407 >>Turn in Fields of Grief
    .target Captured Scarlet Zealot
    .isQuestTurnedIn 365
step
    #optional
    .goto 1420/0,234.42,2289.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Captured Mountaineer|r downstairs in the back of the inn
    .turnin 492 >> Turn in A New Plague
    .target Captured Mountaineer
    .isOnQuest 492
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 588,1 >>Train |T135926:0|t[Inner Fire]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beryl|r on the second floor
	.train 6074 >> Train your class spells
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 145,1 >> Train |T135812:0|t[Fireball Rank 3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto 1420/0,233.06,2256.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r on the second floor
    .train 2137 >> Train your class spells
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Train |T132223:0|t[Overpower]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 1160 >> Train your class spells
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766,1 >> Train |T132219:0|t[Kick]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1758 >> Train your class spells
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Train |T136168:0|t[Health Funnel]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Train your class spells
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto 1458/0,239.14,1749.54,20,0
    .goto 1458/0,255.64,1724.70,20,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
step << Mage
    .goto 1458/0,56.57,1813.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anastasia|r in the Magic Quarter
    .turnin 1882 >>Turn in The Balnir Farmstead
    .target Anastasia Hartwell
step << Rogue
    #completewith Swordtraining3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining3
    .goto 1458/0,239.14,1749.54,20,0
    .goto 1458/0,255.64,1724.70,20,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto 1458/0,239.14,1749.54,20,0
    .goto 1458/0,255.64,1724.70,20,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
step << !Undead
    #label UCflightpath3
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Get the Undercity flight path
    >>|cRXP_WARN_Skip this step if you already took the flight path!|r
    .target Michael Garrett
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis Warren|r in the Trade Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass3
    .goto 1458/0,286.53,1616.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Louis Warren|r in the Trade Quarter
    >>|cRXP_BUY_Buy a|r |T135346:0|t[Cutlass] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Turn in Mennet Carkad
    .accept 1886 >>Accept The Deathstalkers
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining3
    .goto 1458/0,323.57,1668.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Archibald|r in the War Quarter
    .train 201 >>Train 1h Swords
    .target Archibald
    .money <0.1
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equip the|r |T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 201,1
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto 1458/0,239.14,1749.54,20,0
    .goto 1458/0,255.64,1724.70,20,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto 1458/0,308.89,1667.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from him|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equip the|r |T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    >>|cRXP_BUY_Buy Six|r |T134339:0|t[Discolored Worg Hearts] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Train |T136244:0|t[Enchanting]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.24,1681.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josef|r
    .train 3908 >> Train |T136249:0|t[Tailoring]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Turn all your|r |T132889:0|t[Linen Cloth] |cRXP_WARN_into|r |T132890:0|t[Bolt of linen Linen Cloth]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josef|r
    .train 7623 >> Train |T132662:0|t[Brown Linen Robe]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Buy|r |T132891:0|t[Coarse Thread] |cRXP_BUY_from her|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Create as many|r |T132662:0|t[Brown Linen Robes] |cRXP_WARN_as you can|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Buy a|r |T133942:0|t[Copper Rod] |cRXP_BUY_and|r |T135435:0|t[Simple Wood] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Disenchant all the|r |T132662:0|t[Brown Linen Robes] |cRXP_WARN_that you made and create a|r |T135225:0|t[Runed Copper Rod]
    >>|cRXP_WARN_If you did not get a|r |T132867:0|t[Lesser Magic Essence] |cRXP_WARN_then buy one from|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_if there is one available. Otherwise finish this step later|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Train |T135139:0|t[Lesser Magic Wand]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Create a|r |T135139:0|t[Lesser Magic Wand]
    >>|cRXP_WARN_If you did not get a|r |T132867:0|t[Lesser Magic Essence] |cRXP_WARN_then buy one from|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_if there is one available. Otherwise finish this step later|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equip the|r |T135139:0|t[Lesser Magic Wand]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <1.5
    #optional
    .abandon 806 >> Abandon Dark Storms
step
    #optional
    .abandon 408 >> Abandon The Family Crypt
step << Warrior
    #optional
    .abandon 1821 >> Abandon Agamand Heirlooms
step
    #optional
    #xprate >1.49
    .abandon 830 >> Abandon The Admiral's Orders
step
    #label LeaveUndercity3
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >> Travel to Silverpine Forest
    .zoneskip Silverpine Forest
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 1-7 Durotar
#version 1
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 7-13 Durotar


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_You have selected a guide meant for Orcs and Trolls. You should choose the same starter zone that you start in|r
step
    .goto 1411/1,-4251.46,-607.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Accept Your Place In The World
    .target Kaltunk
step
    #season 2
    .xp 2 >> Kill four |cRXP_ENEMY_Mottled Boars|r to reach level 2
    >>|cRXP_WARN_Loot them until you have 15 copper worth of vendor items << !Warlock !Priest
    >>|cRXP_WARN_Loot them until you have 30 copper worth of vendor items << Warlock/Priest
    .goto Durotar,44.32,71.16
    .mob Mottled Boar
step
    #season 2
    .goto Durotar,42.73,68.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    >>|cRXP_BUY_Vendor trash and buy the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] and |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] << Orc Warrior
    >>|cRXP_BUY_Vendor trash and buy the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] << Troll Warrior
    >>|cRXP_BUY_Vendor trash and buy the|r |T134920:0|t[|cRXP_FRIENDLY_Kajaric Icon|r] |cRXP_BUY_and|r |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r] << Shaman
    >>|cRXP_BUY_Vendor trash and buy all of the key AoE runes|r << Mage
    >>|cRXP_BUY_Vendor trash and buy all of the following runes:|r << Hunter/Warlock/Rogue/Priest
    .collect 206387,1 << Shaman --Kajaric Icon
    .collect 206381,1 << Shaman --Dyadic Icon
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204716,1 << Orc Warrior --Rune of Frenzied Assault
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    >> Ice Lance is only useful so you can turn in a quest later << Mage
    >>|cRXP_WARN_You will get the rest of your runes later|r
    .target Rune Broker
    .skipgossip
step
    #season 2
    .train 403470 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] to train |T132342:0|t[Victory Rush]<< Warrior
    .train 415936 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Living Bomb|r] to train |T236220:0|t[Living Bomb] << Mage
    .train 401759 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Burnout|r] to train |T236207:0|t[Burnout] << Mage
    .train 440858 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Frozen Orb|r] to train |T135851:0|t[Frozen Orb] << Mage
    .train 401760 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Ice Lance|r] to train |T135844:0|t[Ice Lance] << Mage
    .train 401768 >> Use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Living Flame|r] to train |T135820:0|t[Living Flame]  << Mage
    .train 410121 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r] to train |T236176:0|t[Chimera Shot] << Hunter
    .train 410122 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] to train |T132266:0|t[Lone Wolf] << Hunter
    .train 416086 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Close Combat|r] to train |T132394:0|t[Melee Specialist] << Hunter
    .train 440563 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Guerrilla|r] to train |T132171:0|t[Hit and Run] << Hunter
    .train 415423 >> Use the |T133739:0|t[|cRXP_FRIENDLY_Treatise on Aspect of the Viper|r] to train |T132160:0|t[Aspect of the Viper]|r] << Hunter
    .train 416009 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Tactics|r] to train |T136150:0|t[Demonic Tactics] << Warlock
    .train 425476 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] to train |T237562:0|t[Demonic Pact] << Warlock
    .train 416015 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r] to train |T135789:0|t[Incinerate] << Warlock
    .train 403919 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r] to train |T236298:0|t[Haunt] << Warlock
    .train 403619 >> Use the |T133733:0|t[|cRXP_FRIENDLY_Grimoire of Fel Armor|r] to train |T136156:0|t[Fel Armor] |cRXP_WARN_use it as your main armor spell|r << Warlock
    .train 402852 >> Use the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] to train |T237570:0|t[Homunculi] << Priest
    .train 425447 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] to train |T236317:0|t[Frenzied Assault] << Orc Warrior
    .train 410111 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Kill Command|r] to train |T236174:0|t[Kill Shot] << Hunter
    .train 409580 >> Use the |T133739:0|t[|cRXP_FRIENDLY_Treatise on the Heart of the Lion|r] to train |T132185:0|t[Heart of the Lion] << Hunter
    .train 400101 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Shadowstep|r] to train |T132303:0|t[Shadowstep] << Rogue
    .train 432301 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r] to train |T236285:0|t[Unfair Advantage] << Rogue
    .train 400105 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r] to train |T132323:0|t[Shadowstrike] << Rogue
    .train 424984 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r] to train |T132375:0|t[Saber Slash] << Rogue
    .train 415922 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Swashbuckler|r] to train |T134538:0|t[Blunderbuss] << Rogue
    .equip 18 >> Equip the |T134920:0|t[|cRXP_FRIENDLY_Kajaric Icon|r], you can use it after 30 seconds to train |T237582:0|t[Lava Burst] << Shaman
    .train 431663 >> Use the |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epiphany|r] to train |T136181:0|t[Mind Spike] << Priest
    .train 425216 >> Use the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpouse|r] to train |T237514:0|t[Void Plague] << Priest
    .train 402862 >> Use the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r] to train |T237545:0|t[Penance] << Priest
    .train 402849 >> Use the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise|r] to train |T136149:0|t[Shadow Word: Death] << Priest
    .use 206387 << Shaman --Kajaric Icon
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 203745 << Mage --Spell Notes: Ice Lance
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 206168 << Hunter --Rune of the Chimera
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
step << Warlock
    #optional
    #sticky
    .aura 403619 >> Make sure you remember to activate your |T136156:0|t[Fel Armor]
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Accept Vile Familiars
    .target Ruzan
step << Shaman
    #season 2
    #optional
    #label LavaBurst
    #sticky
    .train 410095 >> Use the |T134920:0|t[|cRXP_FRIENDLY_Kajaric Icon|r] from your character panel to train |T237582:0|t[Lava Burst]
step << Shaman
    #season 2
    #optional
    #requires LavaBurst
    #label Overload
    #sticky
    .equip 18,206381 >> Equip the |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .train 410094 >> Use it after 30 seconds to train |T136050:0|t[Overload]
    .use 206381
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto 1411/1,-4198.58,-602.41,12,0 << Warrior/Shaman
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Turn in Your Place In The World
    .accept 788 >>Accept Cutting Teeth
    .target Gornek
step << Priest
    #season 2
    .goto Durotar,40.61,67.81
    >>|cRXP_WARN_Run deeper into the den|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Vendor Trash. Buy a |r |T132513:0|t[Tattered Cloth Belt] |cRXP_BUY_from him to engrave a rune on|r
    .collect 3595,1 --Tattered Cloth Belt
    .target Huklah
step << Priest
    #season 2
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .accept 77642 >>Accept Wisdom of the Loa
    .turnin 77642 >>Turn in Wisdom of the Loa
    .target Ken'jai
step << Priest
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equip the|r |T132961:0|t[Tattered Cloth Gloves]
    .equip 6,3595 >> |cRXP_WARN_Equip the|r |T132513:0|t[Tattered Cloth Belt]
    .use 711
    .use 3595
    .engrave 6 >> Engrave |T136181:0|t[Mind Spike] on your belt
    .engrave 10 >> Engrave |T136149:0|t[Shadow Word: Death] on your gloves
    .engrave 7 >> Engrave |T237570:0|t[Homunculi] on your pants
step << Mage
    #season 2
    #requires Galgar
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Accept Spell Research << Troll Mage
    .turnin 77643 >>Turn in Spell Research << Troll Mage
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Mai'ah
step << Mage
    #season 2
    #optional
    .equip 10,711 >> |cRXP_WARN_Equip the|r |T132961:0|t[Tattered Cloth Gloves]
    .use 711
    .engrave 10 >>|cRXP_WARN_Engrave your|r gloves with|r |T236220:0|t[Living Bomb]
    .engrave 7 >>|cRXP_WARN_Engrave your pants with|r |T135820:0|t[Living Flame]
    .engrave 5 >>|cRXP_WARN_Engrave your chest with|r |T236207:0|t[Burnout]
step << Mage
    #season 2
    #optional
    #sticky
    .engrave 15 >> Be on the lookout for any cloak drops. Once you get one engrave |T135851:0|t[Frozen Orb] on it
    >>|cRXP_WARN_This spell is extremely overpowered|r
step << Hunter
    #season 2
    #xprate >1.49
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .accept 77590 >>Accept Rugged Terrain << Troll Hunter
    .accept 77584 >>Accept Hunt for the Rune << Orc Hunter
    .turnin 77590 >>Turn in Rugged Terrain << Troll Hunter
    .turnin 77584 >>Turn in Hunt for the Rune << Orc Hunter
    .target Jen'shan
step << Rogue
    #season 2
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r inside
    .accept 77592 >>Accept Atop the Cliffs << Troll Rogue
    .accept 77583 >>Accept Atop the Cliffs << Orc Rogue
    .turnin 77592 >>Turn in Atop the Cliffs << Troll Rogue
    .turnin 77583 >>Turn in Atop the Cliffs << Orc Rogue
    .train 1784 >>Train |T132320:0|t[Stealth]
    .target Rwag
step << Rogue
    #season 2
    #optional
    .equip 10 >> Equip the |T132952:0|t[Cracked Leather Gloves]
    .engrave 10 >> Engrave |T132375:0|t[Saber Slash] on your gloves
    .use 2125 --Cracked Leather Gloves
step << Warrior/Shaman
    #season 0
    .goto Durotar,42.28,68.48,10,0
    .goto 1411/1,-4230.31,-639.43 << Warrior
    .goto 1411/1,-4203.87,-623.92 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Train |T132333:0|t[Battle Shout] << Warrior
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior/Shaman
    #season 2
    .goto Durotar,42.28,68.48,10,0
    .goto 1411/1,-4230.31,-639.43 << Warrior
    .goto 1411/1,-4203.87,-623.92 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Train |T132333:0|t[Battle Shout] << Warrior
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon] << Shaman
    .accept 77588 >>Accept A Trial of Fitness << Troll Warrior
    .accept 77582 >>Accept A Trial of Fitness << Orc Warrior
    .turnin 77588 >>Turn in A Trial of Fitness << Troll Warrior
    .turnin 77582 >>Accept A Trial of Fitness << Orc Warrior
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior
    #season 2
    .equip 10 >> Equip the |T132938:0|t[Tarnished Chain Gloves] << Warrior
    .engrave 10 >> Engrave |T132342:0|t[Victory Rush] on your gloves << Warrior
    .engrave 7 >> Engrave |T236317:0|t[Frenzied Assault] on your pants << Orc Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto 1411/1,-4111.87,-607.00,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r
step << Warlock
    #softcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Accept Stolen Power
    .turnin 77586 >>Turn in Stolen Power
    .target Nartok
step << Warlock
    #season 2
    .goto Durotar,40.61,67.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Vendor Trash. Buy a pair of |r [Tattered Cloth Bracers] |cRXP_BUY_from him to engrave a rune on|r
    .collect 3596,1 --Tattered Cloth Bracers
    .target Huklah
step << Warlock
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equip the|r |T132961:0|t[Tattered Cloth Gloves]
    .equip 9,3596 >> |cRXP_ENEMY_Equip the|r |T132606:0|t[Tattered Cloth Bracers]
    .use 711
    .use 3596
    .engrave 10 >>|cRXP_WARN_Engrave your|r gloves with|r |T133816:0|t[Haunt] << Warlock
    .engrave 9 >> |cRXP_WARN_Engrave your|r bracers with |T135789:0|t[Incinerate]
    .engrave 7 >> |cRXP_WARN_Engrave your pants with |T237562:0|t[Demonic Pact]
step << Warlock
    #season 0
    #label Nartok
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto 1411/1,-4266.26,-563.29,25,0
    >>Kill |cRXP_ENEMY_Mottled Boars|r en route to the Burning Blade Coven
    >>|cRXP_WARN_Try to get to level 2 before getting there|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >> Travel toward the Burning Blade Coven
    .isOnQuest 1485
step << Warlock
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Kill |cRXP_ENEMY_Vile Familiars|r. Loot them for |cRXP_LOOT_Vile Familiar Heads|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step << Hunter
    #season 2
    #optional
    #completewith sarkoth
    .equip 10 >> Equip the |T132952:0|t[Cracked Leather Gloves]
    .engrave 7 >> Engrave |T236174:0|t[Kill Shot] on your pants
    .engrave 10 >> Engrave |T236176:0|t[Chimera Shot] on your gloves
    .aura 409583 >> Remember to activate your |T132185:0|t[Heart of the Lion]
    .use 2125 --Cracked Leather Gloves
step << Hunter
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Be on the lookout for any|r Chest/Belt/Cloak |cRXP_WARN_drops|r|cRXP_WARN_. Equip them and engrave the respective runes|r
    .engrave 5 >> Engrave |T132266:0|t[Lone Wolf] on your |T132724:0|t[Chest]
    .engrave 6 >> Engrave |T132394:0|t[Melee Specialist] on your |T132513:0|t[Belt]
    .engrave 15 >> Engrave |T132171:0|t[Hit and Run] on your |T133771:0|t[Cloak]
step << Rogue
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Be on the lookout for any|r Belt/Cloak/Bracer |cRXP_WARN_drops|r|cRXP_WARN_. Equip them and engrave the respective runes|r
    .engrave 6 >> Engrave |T132303:0|t[Shadowstep] on your |T132513:0|t[Belt]
    .engrave 15 >> Engrave |T134538:0|t[Blunderbuss] on your |T133771:0|t[Cloak]
    .engrave 9 >> Engrave |T236285:0|t[Unfair Advantage] on your |T133830:0|t[Bracers]
step
    #completewith Sarkoth
    .goto 1411/1,-4266.26,-563.29,35,0 << !Warlock
    .goto 1411/1,-4283.18,-512.53,45,0 << !Warlock
    >>Kill |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Accept Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Kill |cRXP_ENEMY_Sarkoth|r. Loot him for |cRXP_LOOT_Sarkoth's Mangled Claw|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto 1411/1,-4108.70,-397.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Turn in Sarkoth
    .accept 804 >>Accept Sarkoth
    .target Hana'zua
step
    #loop
    .goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    >>Kill |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver worth of vendor items|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 2 silver worth of vendor items|r << Warrior
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver 75 copper worth of vendor items|r << Warlock
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver 10 copper worth of vendor items|r << Hunter
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver worth of vendor items|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Turn in Vile Familiars
    .accept 1499 >>Accept Vile Familiars
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Cast|r |T136218:0|t[Summon Imp]
step << Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto 1411/1,-4198.58,-602.41,12,0 << !Warlock
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Turn in Cutting Teeth << Shaman
    .turnin 788 >>Turn in Cutting Teeth << !Shaman
    .accept 789 >>Accept Sting of the Scorpid
    .accept 2383 >>Accept Simple Parchment << Orc Warrior
    .accept 3065 >>Accept Simple Tablet << Troll Warrior
    .accept 3082 >>Accept Etched Tablet << Troll Hunter
    .accept 3083 >>Accept Encrypted Tablet << Troll Rogue
    .accept 3084 >>Accept Rune-Inscribed Tablet << Troll Shaman
    .accept 3085 >>Accept Hallowed Tablet << Troll Priest
    .accept 3086 >>Accept Glyphic Tablet << Troll Mage
    .accept 3087 >>Accept Etched Parchment << Orc Hunter
    .accept 3088 >>Accept Encrypted Parchment << Orc Rogue
    .accept 3089 >>Accept Rune-Inscribed Parchment << Orc Shaman
    .accept 3090 >>Accept Tainted Parchment << Orc Warlock
    .turnin 804,1 >>Turn in Sarkoth << Shaman
    .turnin 804 >>Turn in Sarkoth << !Shaman
    .target Gornek
step << Rogue
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Travel toward |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .train 53 >> Train |T132090:0|t[Backstab]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
    #label Rwag
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto 1411/1,-4111.87,-607.00,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
step << Warlock
    #season 2
    #label Nartok2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .target Nartok
step << Warlock
    #season 0
    #label Nartok2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .train 172 >> Train |T136118:0|t[Corruption]
    .target Nartok
step
    #label Galgar
    .goto 1411/1,-4221.85,-561.52,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Accept Galgar's Cactus Apple Surprise
    .target Galgar
    .xp >4,1
step << !Rogue
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.01 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << !Rogue
    #xprate >1.49
    #season 0 << Mage
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132794:0|t[Refreshing Spring Water] |cFF0E8312from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Buy|r |T132382:0|t[Rough Arrows] |cFF0E8312from her|r << Hunter
    >>|cRXP_WARN_Save 10 copper to train|r |T135932:0|t[Arcane Intellect] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Vendor Trash
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .accept 77587 >>Accept Icons of Power << Troll Shaman
    .accept 77585 >>Accept Icons of Power << Orc Shaman
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .accept 77587 >>Accept Icons of Power << Troll Shaman
    .accept 77585 >>Accept Icons of Power << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Turn in Glyphic Tablet << Troll
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Turn in Glyphic Tablet << Troll
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Accept Vile Familiars
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #season 2
    #xprate >1.49
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #xprate >1.49
    #season 0
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .target Jen'sha
step << Warrior
    #xprate >1.49
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.02
step << Warrior
    #xprate >1.49
    #season 2
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .target Frang
step << Priest
    #season 2
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Turn in Hallowed Tablet
    .accept 77642 >>Accept Wisdom of the Loa
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kzan|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Accept Lazy Peons
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Loot the |cRXP_LOOT_Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
step
    #completewith Tails
    .goto 1411/1,-4340.82,-628.50,45,0
    .goto 1411/1,-4375.71,-507.590,45,0
    .goto 1411/1,-4467.19,-506.53,45,0
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for |cRXP_LOOT_Scorpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Kill |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Kill |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << !Warlock
    #label Imps
    #loop
    .goto 1411/1,-4282.13,-250.97,0
    .goto 1411/1,-4282.13,-250.97,40,0
    .goto 1411/1,-4317.02,-258.02,40,0
    .goto 1411/1,-4351.39,-250.97,40,0
    .goto 1411/1,-4385.76,-256.96,40,0
    .goto 1411/1,-4383.65,-216.07,40,0
    .goto 1411/1,-4419.07,-221.01,40,0
    .goto 1411/1,-4457.67,-205.15,40,0
    .goto 1411/1,-4405.85,-189.99,40,0
    .goto 1411/1,-4409.55,-169.54,40,0
    .goto 1411/1,-4376.24,-197.390,40,0
    .goto 1411/1,-4360.38,-176.95,40,0
    .goto 1411/1,-4329.71,-196.33,40,0
    .goto 1411/1,-4319.67,-169.190,40,0
    .goto 1411/1,-4303.28,-186.46,40,0
    .goto 1411/1,-4281.07,-148.75,40,0
    >>Kill |cRXP_ENEMY_Vile Familiars|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto 1411/1,-4249.87,-246.04,0
    .goto 1411/1,-4249.87,-246.04,40,0
    .goto 1411/1,-4226.08,-250.62,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto 1411/1,-4181.66,-278.470,40,0
    .goto 1411/1,-4149.41,-319.00,40,0
    .goto 1411/1,-4112.40,-351.43,40,0
    .goto 1411/1,-4081.20,-354.25,40,0
    .goto 1411/1,-4046.83,-352.14,40,0
    .goto 1411/1,-4048.95,-383.16,40,0
    .goto 1411/1,-4053.71,-415.940,40,0
    .goto 1411/1,-4084.37,-449.08,40,0
    .goto 1411/1,-4121.91,-449.78,40,0
    .goto 1411/1,-4116.63,-513.23,40,0
    .goto 1411/1,-4073.80,-519.22,40,0
    .goto 1411/1,-4079.61,-553.06,40,0
    .goto 1411/1,-4082.26,-576.68,40,0
    .goto 1411/1,-4084.37,-606.290,40,0
    .goto 1411/1,-4115.57,-608.05,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto 1411/1,-4149.94,-543.55,40,0
    .goto 1411/1,-4177.43,-519.93,40,0
    .goto 1411/1,-4144.65,-507.94,40,0
    .goto 1411/1,-4149.41,-450.13,40,0
    .goto 1411/1,-4147.82,-416.65,40,0
    .goto 1411/1,-4148.88,-376.46,40,0
    .goto 1411/1,-4156.28,-350.73,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto 1411/1,-4210.22,-283.40,40,0
    .goto 1411/1,-4240.35,-293.27,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4386.82,-318.65,40,0
    .goto 1411/1,-4419.07,-345.79,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4455.03,-450.49,40,0
    .goto 1411/1,-4478.29,-449.08,40,0
    .goto 1411/1,-4451.85,-417.70,40,0
    .goto 1411/1,-4452.38,-385.63,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto 1411/1,-4446.57,-313.01,40,0
    .goto 1411/1,-4451.33,-283.40,40,0
    .goto 1411/1,-4419.60,-246.04,40,0
    .goto 1411/1,-4384.70,-281.990,40,0
    .goto 1411/1,-4349.81,-287.63,40,0
    .goto 1411/1,-4284.24,-283.05,40,0
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for |cRXP_LOOT_Scorpid Worker Tails|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto 1411/1,-4340.82,-628.50,0
	.goto 1411/1,-4340.82,-628.50,25,0
	.goto 1411/1,-4375.71,-507.590,25,0
	.goto 1411/1,-4467.19,-506.53,25,0
	.goto 1411/1,-4433.88,-329.93,25,0
	.goto 1411/1,-4452.38,-232.640,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto 1411/1,-4144.65,-269.65,25,0
	.goto 1411/1,-4125.62,-321.12,25,0
	.goto 1411/1,-4015.64,-371.53,25,0
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto 1411/1,-4198.58,-602.41,12,0
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Turn in Sting of the Scorpid << Shaman
    .turnin 789 >>Turn in Sting of the Scorpid << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .turnin 77587 >>Turn in Icons of Power << Troll Shaman
    .turnin 77585 >>Turn in Icons of Power << Orc Shaman
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Accept Call of Earth
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Mai'ah
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train your class spells
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train your class spells
    .turnin 3085 >>Turn in Hallowed Tablet
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .turnin 3085 >>Turn in Hallowed Tablet
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .turnin 3085 >>Turn in Hallowed Tablet
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Turn in Vile Familiars
    .accept 794 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .turnin 77590 >>Turn in Rugged Terrain << Troll Hunter
    .turnin 77584 >>Turn in Hunt for the Rune << Orc Hunter
    .target Jen'shan
    .xp <4,1
step << Hunter
    #season 2
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Turn in Rugged Terrain << Troll Hunter
    .turnin 77584 >>Turn in Hunt for the Rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 100 >> Train |T132337:0|t[Charge]
    .target Frang
    .money <0.01
step
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Turn in Lazy Peons
    .accept 6394 >>Accept Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    #loop
    .goto 1411/1,-4324.43,-480.10,0
    .goto 1411/1,-4324.43,-480.10,25,0
    .goto 1411/1,-4259.92,-411.01,25,0
    .goto 1411/1,-4279.48,-402.55,25,0
    .goto 1411/1,-4333.94,-360.95,25,0
    .goto 1411/1,-4335.53,-294.68,25,0
    .goto 1411/1,-4321.25,-243.220,25,0
    .goto 1411/1,-4366.20,-253.44,25,0
    .goto 1411/1,-4391.05,-328.52,25,0
    .goto 1411/1,-4440.75,-319.36,25,0
    .goto 1411/1,-4462.43,-405.370,25,0
    .goto 1411/1,-4398.98,-411.71,25,0
    >>Loot the |cRXP_LOOT_Cactus Apples|r near the Cacti
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
step
	#completewith Thazz
    #label Cave
    .goto 1411/1,-4360.38,-175.18,30 >>Enter the cave
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto 1411/1,-4361.44,-144.16,15,0
    .goto 1411/1,-4311.74,-113.14,15,0
    .goto 1411/1,-4274.19,-87.76,10 >>Travel toward |cRXP_LOOT_Thazz'ril's Pick|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Kill |cRXP_ENEMY_Felstalkers|r. Loot them for |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto 1411/1,-4274.19,-87.76
    >>Loot |cRXP_LOOT_Thazz'ril's Pick|r against the wall
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>Kill |cRXP_ENEMY_Yarrog Baneshadow|r. Loot him for the |cRXP_LOOT_Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.70,52.99,25,0
	.goto 1411/1,-4234.54,5.65,25,0
	.goto 1411/1,-4265.73,-26.43,25,0
	.goto 1411/1,-4275.25,-47.58,25,0
	.goto 1411/1,-4295.87,-54.63,25,0
	.goto 1411/1,-4332.36,-42.64,25,0
	.goto 1411/1,-4332.89,-74.020,25,0
	.goto 1411/1,-4330.24,-115.26,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4368.84,-138.52,25,0
	.goto 1411/1,-4349.28,-131.12,25,0
	.goto 1411/1,-4315.97,-131.47,25,0
	.goto 1411/1,-4300.10,-99.40,25,0
	.goto 1411/1,-4284.77,-105.740,25,0
	.goto 1411/1,-4282.13,-138.17,25,0
	.goto 1411/1,-4260.45,-150.16,25,0
	.goto 1411/1,-4238.77,-138.88,25,0
	.goto 1411/1,-4203.34,-102.92,25,0
	.goto 1411/1,-4211.27,-76.84,25,0
	.goto 1411/1,-4250.40,-88.82,25,0
    >>Kill |cRXP_ENEMY_Felstalkers|r. Loot them for |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the edge of the rock until it looks like they're floating, then logging out and back in|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLICK HERE for an example
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >> |cRXP_WARN_Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r near the arrow|r
    .target Spirit Healer
step
    #softcore
    #label Betrayers
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_You can talk to him from outside or on top of the bunker|r
    .accept 784 >>Accept Vanquish the Betrayers
    .target Gar'thok
step
    #softcore
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Torka|r
    .accept 815 >>Accept Break a Few Eggs
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Travel toward the tower
step
    #softcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto Durotar,49.60,40.04,8 >>Travel up the tower toward Furl
step
    #softcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith BurningBladeTurnin
    .hs >>Hearth to the Valley of Trials
    .use 6948
step
    #xprate <1.5
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    .goto 1411/1,-4221.85,-561.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.03
step
    #season 2
    .goto Durotar,42.74,68.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >> |cRXP_BUY_Vendor trash and buy all the |T134419:0|t|cRXP_WARN_[Runes]|r that you need from him|r
    .target Rune Broker
    .skipgossip
step
    #label BurningBladeTurnin
    .goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Turn in Burning Blade Medallion
    .accept 805 >>Accept Report to Sen'jin Village
    .target Zureetha Fargaze
step << Priest
    #season 0
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Accept In Favor of Spirituality
	.train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Ken'jai
step << Priest
    #season 2
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Accept In Favor of Spirituality
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Ken'jai
step << Mage
    #season 0
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target +Shikrik
    .goto 1411/1,-4203.87,-623.92
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target Canaga Earthcaller
step << Hunter
    #season 2
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
--    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
    .money <0.01
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .target Frang
    .money <0.02
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Travel toward |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .train 1776 >> Train |T132155:0|t[Gouge]
    .target Rwag
    .money <0.02
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact] |cRXP_BUY_from him|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vendor Trash
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    #season 2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .turnin 77586 >>Turn in Stolen Power
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .turnin 77586 >>Turn in Stolen Power
    .target Nartok
step << Warlock
    #season 0
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .target Nartok
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>Travel toward the |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Use the|r |T134743:0|t[Earth Sapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>Turn in Call of Earth
    .accept 1518 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>Turn in Call of Earth
    .target Canaga Earthcaller
step << Shaman
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
step
    #xprate >1.49
    .goto 1411/1,-4322.31,-611.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    #label Leave
    .goto 1411/1,-4452.38,-631.32,25,0
    .goto 1411/1,-4554.43,-628.50,20,0
    .goto Durotar,49.90,68.43,25 >>Exit the Valley of Trials
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 7-13 Durotar
#version 1
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 13-20 The Barrens

step
    .goto 1411/1,-4715.17,-599.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Accept A Peon's Burden
    .target Ukor
step
    #completewith next
    .subzone 367 >>Travel to Sen'Jin Village
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r. He patrols a little
    .accept 786 >>Accept Thwarting Kolkar Aggression
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Accept Practical Prey
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
    .accept 818 >>Accept A Solvent Spirit
    .target +Master Vornal
    .goto 1411/1,-4920.33,-814.270
    .turnin 805 >>Turn in Report to Sen'jin Village
    .accept 808 >>Accept Minshina's Skull
    .accept 826 >>Accept Zalazane
    .accept 823 >>Accept Report to Orgnil
    .target +Master Gadrin
    .goto 1411/1,-4920.33,-825.55
step
    #completewith next
    .goto 1411/1,-4931.96,-815.32,8,0
    .goto 1411/1,-4939.89,-793.12,8 >> Enter the big hut
step << Rogue
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Buy |r |T132414:0|t[Weighted Throwing Axe] |cRXP_BUY_from her|r
    .collect 3131,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money >0.001
    .money <0.005
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 83c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T132414:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Un'Thuwa
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +|cRXP_WARN_Cast|r |T136025:0|t[Find Minerals] |cRXP_WARN_and mine any Copper Vein you find for|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r|cRXP_WARN_. Make|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_from them|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto 1411/1,-4486.75,-1024.00,40,0
    .goto 1411/1,-4423.30,-1015.90,40,0
    >>Kill |cRXP_ENEMY_Kolkar Drudges|r and |cRXP_ENEMY_Kolkar Outrunners|r. Loot them for a |cRXP_LOOT_Severed Centaur Head|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #completewith MainIsle
    >>Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith MainIsle
    >>Kill |cRXP_ENEMY_Durotar Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #softcore
    #completewith MainIsle
    >>Loot the |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label MainIsle
    .goto 1411/1,-5501.95,-1167.12,150 >>Swim to the main island
    .isOnQuest 826
step
    #completewith ZalazaneKill1
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[Earth Shock] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto 1411/1,-5526.27,-1286.62
    >>Loot one of the |cRXP_LOOT_Skulls|r on the ground
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill1
    .goto 1411/1,-5526.27,-1286.62
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Save your|r |T136026:0|t[Earth Shock] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Shaman
    >>|cRXP_WARN_Save your|r |T132155:0|t[Gouge] |cRXP_WARN_for when he casts|r |T136052:0|t[Healing Wave] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step << Mage
    #season 2
    .goto 1411/1,-5526.27,-1286.62
    >>Kill |cRXP_ENEMY_Zalazane|r. Loot him for the |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the item
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: RING SEFF OSTROF|r] |cRXP_WARN_to learn|r |T236227:0|t[Fingers of Frost]
    .use 203753
step
    #completewith TrollsDone
    >>Kill |cRXP_ENEMY_Durotar Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith TigerFur
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Shellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith CrawlMakru
    >>Loot the |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label TrollsDone
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto Durotar,65.90,84.04,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto Durotar,68.50,84.32,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step << Priest
    #season 2
    #loop
    .goto 1411/1,-5517.29,-1320.46,0
    .goto 1411/1,-5517.29,-1320.46,40,0
    .goto 1411/1,-5479.74,-1284.50,40,0
    .goto 1411/1,-5449.08,-1248.55,40,0
    .goto Durotar,65.90,84.04,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto Durotar,68.50,84.32,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Kill the |cRXP_ENEMY_Voodoo Trolls|r. Loot them for |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step
    #label TigerFur
    #loop
    .goto 1411/1,-5123.90,-1132.93,0
    .goto 1411/1,-5413.65,-1288.73,50,0
    .goto 1411/1,-5384.57,-1312.35,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto 1411/1,-5128.65,-1135.39,50,0
    .goto 1411/1,-5111.73,-1182.98,50,0
    .goto 1411/1,-5179.41,-1321.51,50,0
    .goto 1411/1,-5209.55,-1353.24,50,0
    .goto 1411/1,-5213.25,-1412.46,50,0
    .goto 1411/1,-5154.56,-1412.11,50,0
    .goto 1411/1,-5084.24,-1382.14,50,0
    .goto 1411/1,-5123.90,-1132.93,50,0
    >>Kill |cRXP_ENEMY_Durotar Tigers|r. Loot them for their |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label CrawlMakru
    #loop
    .goto Durotar,62.88,93.48,0
    .goto Durotar,59.48,86.33,0
    .goto Durotar,59.92,80.80,0
    .goto Durotar,57.90,78.13,0
    .goto Durotar,53.27,83.05,0
    .goto Durotar,62.88,93.48,50,0
    .goto Durotar,59.48,86.33,50,0
    .goto Durotar,59.92,80.80,50,0
    .goto Durotar,57.90,78.13,50,0
    .goto Durotar,53.27,83.05,50,0
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r and |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    >>Kill |cRXP_ENEMY_Makrura Shellhides|r and |cRXP_ENEMY_Makrura Clackers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    .goto Durotar,59.86,89.64,0
    .goto Durotar,59.51,83.64,0
    .goto Durotar,60.94,78.75,0
    .goto Durotar,63.54,74.33,0
    .goto 1411/1,-5507.24,-708.520,0
    .goto Durotar,59.86,89.64,40,0
    .goto Durotar,59.51,83.64,40,0
    .goto Durotar,60.94,78.75,40,0
    .goto Durotar,63.54,74.33,40,0
    .goto 1411/1,-5507.24,-708.520,40,0
    .goto 1411/1,-5540.02,-795.23,40,0
    .goto 1411/1,-5593.43,-816.73,40,0
    .goto 1411/1,-5651.06,-824.49,40,0
    .goto 1411/1,-5679.08,-775.84,40,0
    .goto 1411/1,-5675.91,-688.78,40,0
    .goto 1411/1,-5647.36,-671.50,40,0
    .goto 1411/1,-5621.98,-648.24,40,0
    .goto 1411/1,-5544.25,-654.23,40,0
    >>Loot the |cRXP_PICK_Taillasher Eggs|r on the ground
    >>|cRXP_WARN_They're usually guarded by a|r |cRXP_ENEMY_Bloodtalon Taillasher|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #softcore
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r, or run back
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Travel to Sen'Jin Village
step
    .goto 1411/1,-4948.88,-768.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Jump into the hut|r
    .vendor >> Vendor trash and repair
    .target Trayexir
    .isOnQuest 808
step << Mage
    .goto 1411/1,-4939.36,-838.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Train your class spells
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r and |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Turn in Minshina's Skull
    .turnin 826,2 >>Turn in Zalazane << Shaman
    .turnin 826 >>Turn in Zalazane << !Shaman
    .target +Master Gadrin
    .goto 1411/1,-4920.86,-825.90
    .turnin 818 >>Turn in A Solvent Spirit
    .target +Master Vornal
    .goto 1411/1,-4920.86,-813.91
    .turnin 817 >>Turn in Practical Prey
    .target +Vel'rin Fang
    .goto 1411/1,-4920.86,-797.70
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto 1411/1,-4887.54,-752.93
    .skipgossip 208307,1
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
    .train 402852,1
step << Priest
    #season 2
    #completewith TravelToTiragarde
    .aura 418459 >>|cRXP_WARN_Now you have to find an Undead Priest with a Loa buff. You have to kneel before him and he has to /pray for you.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Desecrated Citadel|r] |cRXP_WARN_to train|r |T237570:0|t[Homunculi]
    .itemcount 205947,1
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_Bind your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_and|r |T134712:0|t[Really Sticky Glue]|cRXP_WARN_. Save them for emergency situations|r
step << Rogue
    #season 2
    .goto 1411/1,-4702.48,-259.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'so|r to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r]
    >>|cRXP_WARN_He is stealthed!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilation|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Travel to Razor Hill
step
    #hardcore
    #label Betrayers
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_You can talk to him from outside or on top of the bunker|r
    .accept 784 >>Accept Vanquish the Betrayers
    .target Gar'thok
step
    #hardcore
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Travel toward the tower
step
    #hardcore
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto Durotar,49.60,40.04,8 >>Travel up the tower toward Furl
step
    #hardcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #softcore
    #xprate <1.5
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Travel to Tiragarde Keep
    >>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #softcore
    #xprate >1.49
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Travel to Tiragarde Keep
    .isOnQuest 784
    .maxlevel 11
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Watch Commander Zalaphil|r |cRXP_WARN_is up, as he is a level 9 rare. You may have to use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have one|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto 1411/1,-5124.95,-243.92,8,0
    .goto 1411/1,-5115.96,-251.68,8,0
    .goto 1411/1,-5111.21,-232.29,8,0
    .goto 1411/1,-5097.46,-232.29,8 >> Move toward the second floor of the keep
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Kill |cRXP_ENEMY_Sailors|r and |cRXP_ENEMY_Marines|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
step
    #completewith AgedEnvelope
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto 1411/1,-5121.78,-245.68
    >>Kill |cRXP_ENEMY_Lieutenant Benedict|r. Loot him for his |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
    .maxlevel 11
step
    #label AgedEnvelope
    .goto 1411/1,-5128.13,-231.58,5,0
    .goto 1411/1,-5126.01,-221.36,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto 1411/1,-5131.83,-229.82,5,0
    .goto 1411/1,-5131.83,-222.42,5,0
    .goto 1411/1,-5096.40,-223.83
    >>|cRXP_WARN_Go upstairs in the keep|r
    >>Open |cRXP_PICK_Benedict's Chest|r. Loot it for the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r]
    >>Use the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r] to start the quest
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Accept The Admiral's Orders
    .use 4881
    .maxlevel 11
step
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
    .maxlevel 11
step
    #optional
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .maxlevel 11
step
    #label ScrapsFinished
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .maxlevel 11
step << Priest
    #season 2
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Kill |cRXP_ENEMY_Sailors|r and |cRXP_ENEMY_Marines|r. Loot them for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .maxlevel 11
step << Priest
    #season 2
    #completewith next
    .goto 1411/1,-4887.54,-752.93
    .emote KNEEL,208309
    .aura 417316 >>Kneel before the |cRXP_PICK_Loa Altar|r and talk to the |cRXP_FRIENDLY_Serpent Loa|r to get the |T136077:0|t[Meditation on the Loa] buff
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of Dark Purpose|r] |cRXP_WARN_to train|r |T237514:0|t[Void Plague]
step
    #softcore
    #completewith RazorTurnins1
    .goto 1411/1,-4992.24,-77.54,120,0
    .deathskip >> Die at the northern tower outside of Tiragarde Keep and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith next
    .subzone 362 >>Travel to Razor Hill
step
    #xprate <2.1
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Turn in Report to Orgnil
    .accept 806 >>Accept Dark Storms
    .target Orgnil Soulscar
step
    #xprate >2.09
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Turn in Report to Orgnil
    .target Orgnil Soulscar
step
    #xprate <2.1
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Turn in Vanquish the Betrayers
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 831 >>Accept The Admiral's Orders << !Mage !Shaman
    .accept 837 >>Accept Encroachment
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate <2.1
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Accept The Admiral's Orders << !Mage !Shaman
    .accept 837 >>Accept Encroachment
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    #xprate >2.09
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Turn in Vanquish the Betrayers
    .turnin 830 >>Turn in The Admiral's Orders
    .accept 831 >>Accept The Admiral's Orders
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate >2.09
    .goto 1411/1,-4709.36,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Accept The Admiral's Orders
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    .goto 1411/1,-4663.88,310.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Torka|r
    .turnin 815 >>Turn in Break a Few Eggs
    .target Cook Torka
    .isQuestComplete 815
step
    #completewith next
    .goto 1411/1,-4617.88,290.47,12,0
    .goto 1411/1,-4611.01,293.64,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto 1411/1,-4604.13,364.49,12,0
    .goto 1411/1,-4588.80,383.53,10 >>Travel toward the tower
step
    #completewith next
    .goto 1411/1,-4593.03,384.94,6,0
    .goto 1411/1,-4594.09,389.87,6,0
    .goto 1411/1,-4589.86,390.93,6,0
    .goto 1411/1,-4589.33,387.760,6,0
    .goto 1411/1,-4594.62,386.35,6,0
    .goto 1411/1,-4595.15,399.74,6,0
    .goto Durotar,49.60,40.04,8 >>Travel up the tower toward Furl
step
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Turn in Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (4s 01c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 84c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 40c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T132414:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 83c). You'll come back later if you don't have enough yet
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_and a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_from him|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    .vendor >> Vendor Trash
    .home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>Turn in A Peon's Burden
    .target Innkeeper Grosk
    .bindlocation 362
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Turn in In Favor of Spirituality
    .accept 5648 >> Accept Garments of Spirituality
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Cast |T135929:0|t[Lesser Heal] and |T135987:0|t[Power Word: Fortitude] on |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Turn in Garments of Spirituality
    .trainer >> Train your class spells
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Shaman
    #xprate >1.49
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Train your class spells
    .accept 2983 >>Accept Call of Fire
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Accept Veteran Uzzek
    .trainer >> Train your class spells
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>Accept Gan'rul's Summons
    .trainer >> Train your class spells
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Accept Hex of Weakness << Troll
    .accept 5660 >> Accept Touch of Weakness << Undead
    .trainer >> Train your class spells
    .target Tai'jin
step << Rogue
    #xprate >1.49
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Train your class spells
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .accept 6062 >>Accept Taming the Beast
    .trainer >> Train your class spells
    .target Thotar
step << Hunter
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .use 15917 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Dire Mottled Boar|r |cRXP_WARN_at max range|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .turnin 6062 >>Turn in Taming the Beast
    .accept 6083 >>Accept Taming the Beast
    .target Thotar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .accept 6083 >>Accept Taming the Beast
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Dismiss your |cRXP_ENEMY_Dire Mottled Boar|r by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame a|r |cRXP_ENEMY_Surf Crawler|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    >>|cRXP_WARN_Don't kill the|r |cRXP_ENEMY_Armored Scorpids|r |cRXP_WARN_you see. You'll need them later|r
    .use 15919 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Surf Crawler|r |cRXP_WARN_at max range|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .turnin 6083 >>Turn in Taming the Beast
    .accept 6082 >>Accept Taming the Beast
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Dismiss your |cRXP_ENEMY_Surf Crawler|r by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame an|r |cRXP_ENEMY_Armored Scorpid|r
step << Hunter
    #loop
    .goto Durotar,54.84,36.94,0
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .use 15920 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Armored Scorpid|r |cRXP_WARN_at max range|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
step << Hunter
    .goto Durotar,51.85,43.49
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .turnin 6082 >>Turn in Taming the Beast
    .accept 6081 >>Accept Training the Beast
    .target Thotar
step << Hunter
    #completewith ConscriptH
    +|cRXP_WARN_Put|r |T132164:0|t[Tame Beast]|cRXP_WARN_,|r |T136095:0|t[Dismiss Pet]|cRXP_WARN_, and|r |T132161:0|t[Call Pet] |cRXP_WARN_onto your Action Bars|r
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Buy|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from him|r. |cRXP_BUY_You will use this to feed your pet later|r
    .vendor >> Vendor Trash
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestAvailable 834 --Winds in the Desert
step << !Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimtak|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Grimtak
step
    #label ConscriptH
    #xprate >1.49
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step
    #xprate <2.1
    #loop
	.goto 1411/1,-4312.79,407.50,0
	.goto 1411/1,-4312.79,407.50,50,0
	.goto 1411/1,-4314.91,487.52,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto 1411/1,-4164.21,459.32,50,0
	.goto 1411/1,-4180.08,382.12,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Kill |cRXP_ENEMY_Razormane Dustrunners|r and |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Warrior
    #season 2
    #loop
    .goto 1411/1,-4565.01,82.49,0
    .goto 1411/1,-4617.35,18.34,30,0
    .goto 1411/1,-4615.77,72.98,30,0
    .goto 1411/1,-4578.75,76.15,30,0
    .goto 1411/1,-4570.29,109.99,30,0
    .goto 1411/1,-4543.33,81.08,30,0
    .goto 1411/1,-4526.41,70.86,30,0
    .goto 1411/1,-4478.29,59.23,30,0
    .goto 1411/1,-4450.80,62.40,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto 1411/1,-4565.01,82.49,30,0
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r and |cRXP_ENEMY_Razormane Scouts|r. Loot them for a |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step << Warrior/Shaman
    #xprate <2.1
    #completewith next
    .goto 1413/1,-3686.10,303.14,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate <2.1
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step
    #xprate >2.09
    #completewith next
    .goto 1413/1,-3686.10,303.14,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step
    #xprate >2.09
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
    .target Telf Joolam
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Enter Thunder Ridge and kill |cRXP_ENEMY_Lightning Hides|r. Loot them for their |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << !Warrior
    #xprate <2.1
    #completewith next
    .goto 1411/1,-4165.27,903.11,20 >>Jump into Thunder Ridge << !Hunter !Warlock
    .goto 1411/1,-4165.27,903.11,20 >>|cRXP_WARN_Dismiss your|r |T136218:0|t[Imp] |cRXP_WARN_by right clicking its unit frame and clicking dismiss|r << Warlock
    .goto 1411/1,-4165.27,903.11,20 >>|cRXP_WARN_Cast|r |T136095:0|t[Dismiss Pet] |cRXP_WARN_and then jump into Thunder Ridge|r << Hunter
step
    #xprate <2.1
    #softcore
    .goto 1411/1,-4190.12,868.22
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r and loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Be careful. Kill the patrolling|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_and the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_in the back before you pull him|r
    >>|cRXP_WARN_Pull him backwards towards the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_you just killed. Otherwise you may bodypull additional Burning Blade mobs|r
    >>|cRXP_WARN_Don't be afraid to die for the |cRXP_LOOT_Claw|r as you will be respawning at the |cRXP_FRIENDLY_Spirit Healer|r after|r
    >>|cRXP_WARN_Kill the imp first. Use|r |T132155:0|t[Gouge] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Rogue
    >>|cRXP_WARN_Kill the imp first. Use|r |T136026:0|t[Earth Shock] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Shaman
    >>|cRXP_WARN_You can cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_and kill the|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_Kill the imp first|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion], |T133728:0|t[Minor Healthstone] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #xprate <2.1
    #hardcore
    .goto 1411/1,-4190.12,868.22
    >>Kill |cRXP_ENEMY_Fizzle Darkstorm|r and loot him for his |cRXP_LOOT_Claw|r
    >>|cRXP_WARN_Be careful. Kill the patrolling|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_and the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_in the back before you pull him|r
    >>|cRXP_WARN_Pull him backwards towards the|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_you just killed. Otherwise you may bodypull additional Burning Blade mobs|r
    >>|cRXP_WARN_Kill the imp first. Use|r |T132155:0|t[Gouge] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Rogue
    >>|cRXP_WARN_Kill the imp first. Use|r |T136026:0|t[Earth Shock] |cRXP_WARN_when he casts|r |T136169:0|t[Soul Siphon] << Shaman
    >>|cRXP_WARN_You can cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_and kill the|r |cRXP_ENEMY_Imp|r |cRXP_WARN_first|r << Mage
    >>|cRXP_WARN_Kill the imp first|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << !Warlock
    >>|cRXP_WARN_Use a|r |T134829:0|t[Minor Healing Potion], |T133728:0|t[Minor Healthstone] |cRXP_WARN_if you have it and your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_if needed|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #xprate <2.1
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 806
step
    #xprate <2.1
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Fight your way out of Thunder Ridge
    .isQuestComplete 806
step
    #xprate <2.1
    #completewith next
    .goto 1411/1,-4414.31,999.70,50 >> Travel to Rezlak
step
    #xprate <2.1
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step << Warrior
    #xprate <2.1
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Dustwind Harpies|r. Loot them for a |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto 1411/1,-4613.12,902.410,40,0
    .goto 1411/1,-4651.19,893.24,40,0
    .goto 1411/1,-4693.49,832.97,40,0
    .goto 1411/1,-4598.32,854.12,40,0
    .goto 1411/1,-4642.20,696.20,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto 1411/1,-4466.13,630.980,40,0
    .goto 1411/1,-4526.41,679.98,40,0
    .goto 1411/1,-4457.67,720.17,40,0
    >>Loot the |cRXP_PICK_Stolen Supply Sacks|r from the ground
    .complete 834,1 --Sack of Supplies (5)
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto 1411/1,-4816.69,972.910,0
    .goto 1411/1,-4818.81,848.48,40,0
    .goto 1411/1,-4755.36,952.82,40,0
    .goto 1411/1,-4704.07,964.10,40,0
    .goto 1411/1,-4818.28,975.38,40,0
    .goto 1411/1,-4718.87,1076.19,40,0
    .goto 1411/1,-4672.87,1131.89,40,0
    .goto 1411/1,-4816.69,972.910,40,0
    >>Kill |cRXP_ENEMY_Dustwind Harpies|r. Loot them for a |cRXP_LOOT_Severed Harpy Head|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .target Rezlak
step << Shaman
    #xprate <2.1
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Travel toward Dustwind Cave
    >>|cRXP_WARN_Travel east around the hills to reach the cave. Follow the waypoint arrow|r
step << Shaman
    #xprate <2.1
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Kill |cRXP_ENEMY_Burning Blade Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Mage
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r inside the Skull Rock Cave. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step << Warrior/Shaman
    #xprate >2.09
    #completewith next
    .goto 1413/1,-3686.10,303.14,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step << Warrior
    #xprate >2.09
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
    .target Uzzek
step
    #xprate >2.09
    #softcore
    #completewith
    .goto The Barrens,50.72,32.61
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .subzoneskip 380
step
    #xprate >2.09
    #hardcore
    #completewith
    .goto 1413/1,-2680.87,-365.05,150 >> Travel to The Crossroads
step
    #xprate >2.09
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .target Thork
step
    #xprate >2.09
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target Zargh
step
    #xprate >2.09
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Get the The Crossroads flight path
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
    .target Devrak
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar

    --Mage/Shaman dont need to go ORG 100% route
step
    #xprate >2.09
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
    .target Innkeeper Gryshka
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Buy |r |T135419:0|t[Sharp Throwing Axe] |cRXP_BUY_from him|r
    .collect 3135,1 --Sharp Throwing Axe (200)
    .vendor >> Vendor your trash
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith AdmiralTurnin
    +|cRXP_WARN_Equip the|r |T135421:0|t[Sharp Throwing Axe]
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step
    #xprate >2.09
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #completewith AdmiralTurnin
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Enter Orgrimmar
    .zoneskip Orgrimmar
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >>Turn in Hex of Weakness
    .trainer >>Train your class spells
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >>Turn in Hex of Weakness
    .trainer >>Train your class spells
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Accept The Shattered Hand << Orc Rogue/Troll Rogue
    .target Therzok
step << Rogue
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Buy one or two|r |T135640:0|t[Jambiya] |cRXP_BUY_from him|r
    .collect 2207,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Kareth
step << Rogue
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equip the|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    #season 2
    .goto 1454/1,-4464.24,1853.97
    >>Loot the |cRXP_PICK_Dusty Chest|r for |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r]
    >>|cRXP_WARN_It's located in The Drag on the upper floor|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Precision|r] |cRXP_WARN_to train|r |T135610:0|t[Between the Eyes]
    .use 204174
    .itemcount 204174,1
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #label AdmiralTurnin
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
step
    #xprate >2.09
    #label AdmiralTurnin
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
step << Warlock
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Accept Hidden Enemies
    .target Thrall
step << Shaman/Hunter
    #season 2
    .goto 1454/1,-4226.54,1914.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor Lonetree|r
    .train 409580 >>|cRXP_WARN_Buy and use the|r |T133739:0|t|cRXP_LOOT_[Treatise on the Heart of the Lion]|r |cRXP_WARN_to learn|r |T132185:0|t[Heart of the Lion] << Hunter
    .train 425336 >>|cRXP_WARN_Buy and use the|r |T133747:0|t|cRXP_LOOT_[Revelation of Shamanistic Rage]|r |cRXP_WARN_to learn|r |T136088:0|t[Shamanistic Rage] << Shaman
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .target Zor Lonetree
    .xp <10,1
    .money <0.5
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto 1454/1,-4494.81,1793.070,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamja|r and |cRXP_FRIENDLY_Gru'ark|r
    +Kill |cRXP_ENEMY_Gru'ark|r when he becomes hostile
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto 1454/1,-4501.41,1780.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamja|r
    >>Receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] from her
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .use 204716
    .itemcount 204716,1
step << Troll Warrior
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Train Staves
    .target Hanashi
    .money <0.100
step << Troll Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135154:0|t[Quarter Staff] |cRXP_BUY_from him|r
    .collect 854,1,1502,1 --Collect Quarter Staff (1)
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Zendo'jian
    .train 227,3
step << Troll Warrior
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equip the|r |T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 227,3
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Travel to the Valley of Honor
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Turn in Training the Beast
    .target Ormak Grimshot
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Train your pet spells
    .target Xao'tsu
step << Hunter
    #season 0
    #completewith RazorTurnins2
    +|cRXP_WARN_Put|r |T132162:0|t[Beast Training]|cRXP_WARN_(under the General tab),|r |T132163:0|t[Revive Pet]|cRXP_WARN_, and|r |T132165:0|t[Feed Pet] |cRXP_WARN_onto your Action Bars|r
    >>|cRXP_WARN_Remember to train your pet whenever they get Training Points for|r |T132162:0|t[Beast Training]
step << Hunter
    #season 2
    #completewith End
    +|cRXP_WARN_Put|r |T132162:0|t[Beast Training]|cRXP_WARN_(under the General tab),|r |T132163:0|t[Revive Pet]|cRXP_WARN_, and|r |T132165:0|t[Feed Pet] |cRXP_WARN_onto your Action Bars|r
    >>|cRXP_WARN_Remember to train your pet whenever they get Training Points for|r |T132162:0|t[Beast Training]
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Buy a|r |T135499:0|t[Laminated Recurve Bow] |cRXP_BUY_from him|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equip the|r |T135499:0|t[Laminated Recurve Bow] |cRXP_WARN_when you are level 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equip the|r |T135499:0|t[Laminated Recurve Bow]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1506 >>Turn in Gan'rul's Summons
    .accept 1501 >>Accept Creature of the Void
    .target Gan'rul Bloodeye
step << Warlock
    #softcore
    #completewith next
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Enter Ragefire Chasm
step << Warlock
    #softcore
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isOnQuest 1501
step << Warlock
    #hardcore
    #completewith SkullRockWarlock
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step << Warlock
    #label SkullRockWarlock
    .goto Durotar,54.95,9.61
    .subzone 817 >>Travel to Skull Rock
    .isOnQuest 1501
step << Warlock
    #completewith VergaTablet
    >>Kill |cRXP_ENEMY_Gazz'uz|r if he is up. Loot him for |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r]. Use it to start the quest
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
    .unitscan Gazz'uz
step << Warlock
    #completewith next
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r. Loot them for a |cRXP_LOOT_Lieutenant's Insignia|r
    >>|cRXP_WARN_Skip this if you're unlucky with the drop|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warlock
    #label VergaTablet
    .goto Durotar,54.16,8.95,15,0
    .goto Durotar,51.62,9.76
    >>Loot the |cRXP_PICK_Burning Blade Stash|r in the back of the cave for |cRXP_LOOT_Tablet of Verga|r
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #softcore
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 1501
step << Warlock
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Enter Orgrimmar
    .zoneskip Orgrimmar
    .isQuestComplete 1501
step << Warlock
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Turn in Hidden Enemies
    .accept 5727 >>Accept Hidden Enemies
    .target Thrall
    .isQuestComplete 5726
step << Warlock
    #optional
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Accept Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1501 >>Turn in Creature of the Void
    .accept 1504 >>Accept The Binding
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 832 >>Accept Burning Shadows
    .turnin 832 >>Turn in Burning Shadows
    .target Neeru Fireblade
    .skipgossip
    .itemcount 4903,1
step << Warlock
    .goto 1454/1,-4376.29,1802.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isQuestTurnedIn 5726
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Use the|r |T134416:0|t[Glyphs of Summoning] |cRXP_WARN_at the Summoning Circle|r
    .use 6284
step << Warlock
    .goto Orgrimmar,49.45,50.02
    >>Kill the |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1504,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1504 >>Turn in The Binding
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Turn in Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    .destroy 14544 >>|cRXP_WARN_Destroy|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_as you no longer need it|r
step << Shaman/Mage/Hunter
    #xprate >2.09
    #completewith next
    .goto Durotar,45.54,12.14
    .zone Durotar >>Exit Orgrimmar
step << Hunter
    #xprate >2.09
    #completewith next
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>Tame a |cRXP_ENEMY_Venomtail Scorpid|r
    >>|cRXP_WARN_This will allow you to train|r |T132140:0|t[Claw Rank 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate >2.09
    #completewith next
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Travel toward Dustwind Cave
    >>|cRXP_WARN_Travel east around the hills to reach the cave. Follow the waypoint arrow|r
step << Shaman
    #xprate >2.09
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Kill |cRXP_ENEMY_Burning Blade Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Mage
    #xprate >2.09
    #season 2
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r inside the Skull Rock Cave. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: MILEGIN VALF|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step
    #xprate >2.09
    .hs >> Hearth to The Crossroads
    .use 6948
    .subzoneskip 380
    .bindlocation 380,1
    .cooldown item,6948,>0
step
    #xprate >2.09
    .goto 1454/1,-4313.46,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >> Fly to Crossroads
    .target Doras
    .subzoneskip 380
    .cooldown item,6948,<0
step
    #xprate <2.1
    #completewith RazorTurnins2
    .hs >> Hearth to Razor Hill
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <2.1
    .goto 1411/1,-4686.09,340.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grosk|r
    .vendor >> Vendor Trash
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #xprate <2.1
    #season 2
    .goto 1411/1,-4772.28,274.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vahi|r
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .use 204688 >>Use the |T134455:0|t[Rune Fragments] to create |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .train 403475 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1
step
    #xprate <2.1
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r and |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Turn in Dark Storms
    .target +Orgnil Soulscar
    .goto 1411/1,-4724.69,287.30
    .turnin 837 >>Turn in Encroachment
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Warrior
    #xprate <2.1
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <2.1
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Train your class spells
    .target Swart
    .xp <12,1
step << Hunter
    #xprate <2.1
    #completewith next
    .goto Durotar,36.29,47.38,0
    .goto Durotar,36.29,52.09,0
    .goto Durotar,36.29,47.38,40,0
    +Tame a |cRXP_ENEMY_Venomtail Scorpid|r
    >>|cRXP_WARN_This will allow you to train|r |T132140:0|t[Claw Rank 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step
    #xprate <2.1
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step
    #xprate <2.1
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Warrior
    #xprate <2.1
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
    .target Uzzek
step
    #optional
    #label End
]])
