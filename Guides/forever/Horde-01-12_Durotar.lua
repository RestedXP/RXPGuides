local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
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
step
    .goto 1411/1,-4251.46,-607.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Accept Your Place In The World
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_Kill |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 35 copper worth of vendor items (including your armor)|r << Warlock
    +|cRXP_WARN_Kill |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Shaman
    .goto 1411/1,-4281.07,-720.15,30,0 << Warlock
    .goto 1411/1,-4299.05,-494.9,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto 1411/1,-4214.45,-623.92.00
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
    .goto 1411/1,-4198.05,-605.59,12,0 << !Warrior !Shaman
    .goto 1411/1,-4198.58,-602.41,12,0 << Warrior/Shaman
    .goto 1411/1,-4186.42,-599.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Turn in Your Place In The World
    .accept 788 >>Accept Cutting Teeth
    --.accept 97279 >>Accept Wayward Weapons
    .target Gornek
    --97279 not worth doing, bad xp loot quest, no followup
step << Warrior/Shaman
    .goto 1411/1,-4198.05,-605.59,10,0
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
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4111.87,-607.00,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
step << Warlock
    #label Nartok
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << skip
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
    .goto 1411/1,-4357.74,-180.47,100 >> Travel toward the Burning Blade Coven
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
    #label Sarkoth
    .goto 1411/1,-4109.22,-546.370
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
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    >>Kill |cRXP_ENEMY_Mottled Boars|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #loop
	.goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
    .goto 1411/1,-4182.72,-448.72,40,0
    .xp 3+685 >> Grind to 685+/1400xp
    .mob Mottled Boar
step
    #optional
    #label Boars
step << skip
    .goto 1411/1,-4260.000,-404.200
    >>Loot |cRXP_PICK_Abandoned Training Weapons|r on the ground
    .complete 97279,1 --|6/6 Abandoned Training Weapon
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Grind |cRXP_ENEMY_Mottled Boars|r. Loot them until you have 1 silver worth of vendor items|r
    .mob Mottled Boar
	.money >0.01
step << Rogue
    #label Duokna2
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto 1411/1,-4214.45,-623.92.00
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
    .goto 1411/1,-4198.05,-605.59,12,0 << Warlock
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
    #completewith Rwag
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4144.65,-588.67,12 >>Travel toward |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .train 53 >> Train |T132090:0|t[Backstab]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto 1411/1,-4144.65,-588.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Turn in Encrypted Tablet << Troll Rogue
    .turnin 3088 >>Turn in Encrypted Parchment << Orc Rogue
    .target Rwag
step << skip
    .goto 1411/1,-4102.400,-588.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kzan Thornslash|r in the back of the cave
    .turnin 97279 >>Turn in Wayward Weapons
    .target Kzan Thornslash
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kzan|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135139:0|t[Short Staff] (97c)
    .target Kzan Thornslash
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step << Shaman
    .goto 1411/1,-4102.35,-588.67.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kzan|r
    >>|cRXP_BUY_Buy a|r |T135139:0|t[Short Staff] |cRXP_BUY_from him|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0097
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
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
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vendor Trash
    .target Hraug
    .money >0.01
step << Warlock
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
step << !Rogue !Shaman
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Turn in Rune-Inscribed Tablet << Troll
    .turnin 3089 >>Turn in Rune-Inscribed Parchment << Orc
    .target Shikrik
step << Mage
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
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Turn in Etched Tablet << Troll
    .turnin 3087 >>Turn in Etched Parchment << Orc
    .target Jen'shan
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment << Orc
    .turnin 3065 >>Turn in Simple Tablet << Troll
    .target Frang
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
    .goto 1411/1,-4177.96,-248.5,40,0
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
    .goto 1411/1,-4146.24,-583.03,40,0
    .goto 1411/1,-4149.94,-543.55,40,0
    .goto 1411/1,-4177.43,-519.93,40,0
    .goto 1411/1,-4144.65,-507.94,40,0
    .goto 1411/1,-4149.41,-450.13,40,0
    .goto 1411/1,-4147.82,-416.65,40,0
    .goto 1411/1,-4148.88,-376.46,40,0
    .goto 1411/1,-4156.28,-350.73,40,0
    .goto 1411/1,-4177.96,-315.13,40,0
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
    .goto 1411/1,-4442.34,-347.2,40,0
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
	.goto 1411/1,-4283.71,-228.76,25,0
	.goto 1411/1,-4220.26,-209.73,25,0
	.goto 1411/1,-4144.65,-269.65,25,0
	.goto 1411/1,-4125.62,-321.12,25,0
	.goto 1411/1,-4015.64,-371.53,25,0
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #loop
    .goto 1411/1,-4146.24,-483.97,0
    .goto 1411/1,-4146.24,-483.97,40,0
    .goto 1411/1,-4179.02,-473.75,40,0
    .goto 1411/1,-4218.15,-480.10,40,0
    .goto 1411/1,-4252.52,-483.62,40,0
    .goto 1411/1,-4283.71,-516.76,40,0
    .goto 1411/1,-4317.55,-516.76,40,0
    .goto 1411/1,-4350.33,-510.06,40,0
    .goto 1411/1,-4379.94,-515.70,40,0
    .goto 1411/1,-4379.94,-484.33,40,0
    .goto 1411/1,-4352.98,-445.90,40,0
    .goto 1411/1,-4385.76,-412.77,40,0
    .goto 1411/1,-4384.70,-383.16,40,0
    .goto 1411/1,-4383.12,-346.85,40,0
    .goto 1411/1,-4349.81,-313.720,40,0
    .goto 1411/1,-4315.44,-287.28,40,0
    .goto 1411/1,-4281.60,-321.82,40,0
    .goto 1411/1,-4239.83,-315.13,40,0
    .goto 1411/1,-4213.92,-309.84,40,0
    .goto 1411/1,-4184.31,-348.61,40,0
    .goto 1411/1,-4184.31,-382.45,40,0
    .goto 1411/1,-4183.25,-409.6,40,0
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
    .goto 1411/1,-4214.45,-565.40
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .goto 1411/1,-4203.87,-623.92
    .accept 1516 >>Accept Call of Earth
    .goto 1411/1,-4204.4,-629.91
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Mai'ah
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .money <0.01
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Train your class spells
    .turnin 3085 >>Turn in Hallowed Tablet
    .money <0.021
    .target Ken'jai
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Train |T135987:0|t[Power Word: Fortitude]
    .train 589 >> Train |T136207:0|t[Shadow Word: Pain]
    .turnin 3085 >>Turn in Hallowed Tablet
    .money <0.011
    .target Ken'jai
step << Priest
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
    .goto 1411/1,-4227.66,-635.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    .goto 1411/1,-4230.31,-639.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
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
    .goto 1411/1,-4220.26,-59.56
    >>Kill |cRXP_ENEMY_Yarrog Baneshadow|r. Loot him for the |cRXP_LOOT_Burning Blade Medallion|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto 1411/1,-4220.26,-59.56,0
	.goto 1411/1,-4220.26,-59.56,25,0
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
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
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
    #optional
    #loop
	.goto 1411/1,-4220.26,-59.56,25,0
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
    .goto 1411/1,-4326.01,-41.23
    .goto 1411/1,-4793.96,233.36,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the edge of the rock until it looks like they're floating, then logging out and back in|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLICK HERE for an example
step
    #softcore
    #completewith next
    .goto 1411/1,-4326.01,-41.23
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
    .goto 1411/1,-4616.82,317.26,12,0
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
    .goto 1411/1,-4585.1,396.92,8 >>Travel up the tower toward Furl
step
    #softcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto 1411/1,-4714.64,372.60
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
    .goto 1411/1,-4214.45,-565.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vendor Trash
    .target Duokna
    .money >0.03
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r and |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target +Shikrik
    .goto 1411/1,-4203.87,-623.92
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target +Canaga Earthcaller
    .goto 1411/1,-4204.4,-629.91
    .xp <6,1
step << Shaman
    .goto 1411/1,-4204.4,-629.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Turn in Call of Earth
    .accept 1517 >>Accept Call of Earth
    .target Canaga Earthcaller
step
    .goto 1411/1,-4228.19,-629.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Turn in Burning Blade Medallion
    .accept 805 >>Accept Report to Sen'jin Village
    .target Zureetha Fargaze
step
    .goto 1411/1,-4223.800,-631.000
    >>Click the |cRXP_PICK_Lost Journal|r on top of the barrel
    .accept 96652 >>Accept The Adventurer
    .isQuestTurnedIn 794
step << Priest
    .goto 1411/1,-4202.28,-617.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Accept In Favor of Spirituality
	.train 591 >>Train |T135924:0|t[Smite]
    .train 17 >>Train |T135940:0|t[Power Word: Shield]
    .target Ken'jai
step << Mage
    .goto 1411/1,-4210.22,-625.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .target Mai'ah
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
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
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
    .goto 1411/1,-4190.12,-603.12,15,0
    .goto 1411/1,-4157.87,-601.36,12,0
    .goto 1411/1,-4143.06,-594.31,12,0
    .goto 1411/1,-4120.86,-589.72,12,0
    .goto 1411/1,-4107.11,-604.18,12 >>Travel toward |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto 1411/1,-4107.11,-604.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Blood Pact] |cRXP_BUY_from him|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vendor Trash
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .train 1454 >> Train |T136126:0|t[Life Tap]
    .target Nartok
    .money <0.02
step << Warlock
    #optional
    .goto 1411/1,-4111.87,-607.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Train |T136197:0|t[Shadow Bolt]
    .target Nartok
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto 1411/1,-4255.16,-645.07,25,0
    .goto 1411/1,-4245.64,-691.95,25,0
    .goto 1411/1,-4146.77,-787.12,12,0
    .goto 1411/1,-4120.86,-813.21,8,0
    .goto 1411/1,-4220.79,-841.76,10,0
    .goto 1411/1,-4266.26,-853.39,15,0
    .goto 1411/1,-4295.87,-883.36,25 >>Travel toward the |cRXP_PICK_Shaman Shrine|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Use the|r |T134743:0|t[Earth Sapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto 1411/1,-4290.59,-878.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>Turn in Call of Earth
    .accept 1518 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga|r
    .goto 1411/1,-4204.4,-629.91
    .turnin 1518 >>Turn in Call of Earth
    .target Canaga Earthcaller
step << Shaman
    .goto 1411/1,-4203.87,-623.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
step
    #label Leave
    .goto 1411/1,-4452.38,-631.32,25,0
    .goto 1411/1,-4554.43,-628.50,20,0
    .goto 1411/1,-4600.96,-603.82,25 >>Exit the Valley of Trials
    .isOnQuest 805
]])

RXPGuides.RegisterGuide([[
#forever
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
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_He patrols a little|r
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
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (4s 79c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (3s 81c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 60c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[Large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 13c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 71c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
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
    .goto 1411/1,-4939.36,-838.941
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
    #completewith next
    .goto 1411/1,-5057.80,-866.79,40,0
    .goto 1411/1,-5014.97,-937.99,40,0
    .goto 1411/1,-4908.69,-998.27,40,0
    .goto 1411/1,-4829.91,-1091.33,40,0
    .goto 1411/1,-4722.57,-1117.42,40,0
    >>Run down the beach. Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r. You do not have to finish this step here.
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto 1411/1,-4722.57,-1117.42,75 >> Reach the end of the beach
    .isOnQuest 818
step
    #completewith Bonfire
    >>Kill |cRXP_ENEMY_Kolkar Drudges|r and |cRXP_ENEMY_Kolkar Outrunners|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    .goto 1411/1,-4653.84,-983.47,30 >>Enter the Kolkar base
    .isOnQuest 786
step << Priest
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Start collecting 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_as you quest throughout Durotar. This will be used to make your wand later|r
    >>|cRXP_WARN_Skip this step if you've already bought a wand or can get one cheap from the AH.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Start collecting 3 stacks of|r |T132889:0|t[Linen Cloth] |cRXP_WARN_as you quest throughout Durotar. This will be used to make your wand later|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_is up, he is a level 9 rare. You may have to use a |r |T134829:0|t[Minor Healing Potion] |cRXP_WARN_if you have it|r
    .unitscan Warlord Kolkanis
step
    .goto 1411/1,-4596.20,-1057.14
    >>Burn the |cRXP_PICK_Attack Plan|r inside the tent on the ground
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto 1411/1,-4482.52,-917.90
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Burn the |cRXP_PICK_Attack Plan|r on the ground
    .goto 1411/1,-4406.91,-974.30
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #softcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_This starts an escort quest|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Pal'juh|r is not there, feel free to skip this step and deathskip back to Sen'jin Village at the Bonfire|r
    .accept 99123,1 >>Accept Lost in the Shadows
    .target Pal'juh
step
    #hardcore
    .goto 1411/1,-4410.400,-963.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pal'juh|r
    >>|cRXP_WARN_This starts an escort quest|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Pal'juh|r is not there, feel free to skip this step|r
    .accept 99123,1 >>Accept Lost in the Shadows
    .target Pal'juh
step
    #softcore
    .goto 1411/1,-4681.300,-986.800
    >>Escort |cRXP_FRIENDLY_Pal'juh|r out of Kolkar Crag
    .complete 99123,1 --
    .target Pal'juh
    .isOnQuest 99123
step << skip
    #softcore
    .goto 1411/1,-4417.49,-985.23,-1
    .goto 1411/1,-5002.81,-774.08,-1
    .deathskip >> Die at the Bonfire and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 786
step << skip
    #hardcore
    #completewith next
    .goto 1411/1,-4656.48,-981.35,30 >>Leave the Kolkar base
    .isQuestComplete 786
step
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_He patrols a little|r
    .turnin 786,1 >>Turn in Thwarting Kolkar Aggression << Shaman
    .turnin 786 >>Turn in Thwarting Kolkar Aggression << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step
    .goto 1411/1,-4920.900,-814.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Vornal|r
    .turnin 99123 >>Turn in Lost in the Shadows
    .target Master Vornal
    .isQuestComplete 99123
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (4s 79c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (3s 81c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 60). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 13c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0513
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 71c). You'll come back later if you don't have enough yet
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4948.35,-769.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0271
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T132414:0|t[Weighted Throwing Axe]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T132401:0|t[large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equip the|r |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #optional
    .goto 1411/1,-4920.86,-813.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Turn in A Solvent Spirit
    .target Master Vornal
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    .goto 1411/1,-4903.41,-786.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Buy|r |T133974:0|t[Haunch of Meat] |cRXP_BUY_from him|r
    .vendor >> Vendor trash
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto 1411/1,-4938.83,-779.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #softcore
    #loop
    .goto 1411/1,-4828.32,-777.61,0
    .goto 1411/1,-4822.51,-881.59,25,0
    .goto 1411/1,-4845.24,-829.42,25,0
    .goto 1411/1,-4828.32,-777.61,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_He patrols a little|r
    .turnin 786,1 >>Turn in Thwarting Kolkar Aggression << Shaman
    .turnin 786 >>Turn in Thwarting Kolkar Aggression << !Shaman
    .target Lar Prowltusk
step
    #completewith next
    .goto 1411/1,-4710.400,-209.400
    >>Kill |cRXP_ENEMY_Ridgeshade Lurkers|r and |cRXP_ENEMY_Ridgeshade Creepers|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
step
    .goto 1411/1,-4565.700,-192.300
    >>Kill |cRXP_ENEMY_Ukorsbane|r (elite). Loot him for |T133628:0|t[|cRXP_LOOT_Ukor's Lost Pack|r]
    >>|cRXP_WARN_This is hard! Group up if possible. Skip this step if you can't kill it|r
    .collect 275722,1,96876 --Ukor's Lost Pack (x1)
    .accept 96876 >>Accept Ukor's Lost Pack
    .mob Ukorsbane
step
    .goto 1411/1,-4710.400,-209.400
    >>Kill |cRXP_ENEMY_Ridgeshade Lurkers|r and |cRXP_ENEMY_Ridgeshade Creepers|r
    .complete 96821,2 --|6/6 Ridgeshade Lurker slain
    .mob +Ridgeshade Lurker
    .complete 96821,1 --|6/6 Ridgeshade Creeper slain
    .mob +Ridgeshade Creeper
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
    .goto 1411/1,-4616.82,317.26,12,0
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
    .goto 1411/1,-4585.1,396.92,8 >>Travel up the tower toward Furl
step
    #hardcore
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Accept Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_BUY_him|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto 1411/1,-4714.64,372.60
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
    #softcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
    .subzone 372 >> Travel to Tiragarde Keep
    -->>|cRXP_WARN_Grind mobs on the way|r
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto 1411/1,-4979.200,-232.800
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
step
    #label Benedict
    .goto 1411/1,-5121.78,-245.68
    >>Kill |cRXP_ENEMY_Lieutenant Benedict|r. Loot him for his |cRXP_LOOT_Key|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    .goto 1411/1,-5128.13,-231.58,5,0
    .goto 1411/1,-5126.01,-221.36,5,0
    .goto 1411/1,-5124.42,-229.82,5,0
    .goto 1411/1,-5131.83,-229.82,5,0
    .goto 1411/1,-5131.83,-222.42,5,0
    .goto 1411/1,-5096.40,-223.83
    >>|cRXP_WARN_Go upstairs in the keep|r
    >>Open |cRXP_PICK_Benedict's Chest|r. Loot it for the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r]
    >>Use the |T133471:0|t[|cRXP_LOOT_Aged Envelope|r] to start the quest
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Accept The Admiral's Orders
    .use 4881
step  --northern tower
    #label AgedEnvelope
    .goto 1411/1,-4951.500,-59.600
    >>Loot the |cRXP_PICK_Raider's Shield|r on the ground
    .complete 96822,3 --|1/1 Raider's Shield
step
    #loop
    .goto 1411/1,-5081.60,-246.740,0
    .goto 1411/1,-5010.74,-254.50,30,0
    .goto 1411/1,-4995.41,-186.46,30,0
    .goto 1411/1,-5034.54,-148.75,30,0
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
    .goto 1411/1,-5034.54,-148.75,30,0
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
    .goto 1411/1,-5034.54,-148.75,30,0
    .goto 1411/1,-5057.80,-83.89,30,0
    .goto 1411/1,-4952.05,-113.50,30,0
    .goto 1411/1,-4943.06,-248.50,30,0
    .goto 1411/1,-5081.60,-246.740,30,0
    >>Kill |cRXP_ENEMY_Kul Tiras Sailors|r and |cRXP_ENEMY_Kul Tiras Marines|r. Loot them for their |cRXP_LOOT_Canvas Scraps|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2520 >> Grind to 2520+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2200 >> Grind to 2200+/4500xp
    .isOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+2070 >> Grind to 2070+/4500xp
    .isNotOnQuest 823
step << Priest
    #optional
    #loop
    .goto 1411/1,-5083.18,37.37,50,0
    .goto 1411/1,-5025.55,126.56,50,0
    .goto 1411/1,-5092.7,246.76,50,0
    .goto 1411/1,-5027.13,311.62,50,0
    .goto 1411/1,-4948.35,276.72,50,0
    .goto 1411/1,-4897.06,82.14,50,0
    .xp 7+1750 >> Grind to 1750+/4500xp
    .isOnQuest 823
step << skip
    #softcore
    #completewith RazorTurnins1
    .goto 1411/1,-4992.24,-77.54,120,0
    .deathskip >> Die at the northern tower outside of Tiragarde Keep and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step --camp quest
    .goto 1411/1,-4713.000,140.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brakk|r
    .turnin 96652 >>Turn in The Adventurer
    .accept 96604 >>Accept The Great Outdoors
    .target Brakk
    .isOnQuest 96652
step --camp quest
    #optional
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
    .goto 1411/1,-4616.82,317.26,12,0
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
    .goto 1411/1,-4585.1,396.92,8 >>Travel up the tower toward Furl
step
    .goto 1411/1,-4600.43,384.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Turn in Carry Your Weight
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto 1411/1,-4701.95,366.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Train |T136248:0|t[Mining]
    >>|cRXP_WARN_This will allow you to find|r |T135232:0|t|cRXP_LOOT_[Rough Stones]|r |cRXP_WARN_from nodes in order to craft|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Weapon Damage for 30 minutes)|r
    .target Krunn
step << Warrior/Rogue
    .goto 1411/1,-4706.71,358.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto 1411/1,-4714.64,372.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (4s 79c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .money <0.0479
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135641:0|t[Stiletto] (3s 81c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135641:0|t[Stiletto] |cRXP_BUY_from him|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .money <0.0381
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T132401:0|t[Large Axe] (4s 60c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T132401:0|t[large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .money <0.0460
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135421:0|t[Tomahawk] (5s 13c). You'll come back later if you don't have enough yet
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto 1411/1,-4713.06,382.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Buy a|r |T135421:0|t[Tomahawk] |cRXP_BUY_from him|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .money <0.0513
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
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135499:0|t[Hornwood Recurve Bow] (2s 83c). You'll come back later if you don't have enough yet
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto 1411/1,-4763.29,361.67
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
    .goto 1411/1,-4763.29,361.67
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
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Train your class spells
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Train your class spells
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Train your class spells
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .train 5116 >> Train your class spells
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Train your class spells
    .target Kaplak
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Turn in In Favor of Spirituality
    .accept 5648 >> Accept Garments of Spirituality
    .train 2052 >> Train |T135929:0|t[Lesser Heal Rank 2]
    .target Tai'jin
step << Priest
    .goto 1411/1,-4770.16,170.62
    >>Cast |T135929:0|t[Lesser Heal] and |T135987:0|t[Power Word: Fortitude] on |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Turn in Garments of Spirituality
    .trainer >> Train your class spells
    .target Tai'jin
step << Rogue/Warrior
    .goto 1411/1,-4826.74,330.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .money <0.01
    .target Rawrk
step
    .goto 1411/1,-4838.37,321.49
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
    .goto 1411/1,-5510.41,-634.14,100 >> Swim to the Island
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
    .goto 1411/1,-5446.96,-1154.08,40,0
    .goto 1411/1,-5445.90,-1112.13,40,0
    .goto 1411/1,-5525.22,-1103.67,40,0
    .goto 1411/1,-5580.21,-1097.32,40,0
    .goto 1411/1,-5584.44,-1163.95,40,0
    .goto 1411/1,-5582.85,-1250.31,40,0
    .goto 1411/1,-5517.29,-1293.67,40,0
    >>Kill |cRXP_ENEMY_Hexed Trolls|r and |cRXP_ENEMY_Voodoo Trolls|r
    >>Loot the |cRXP_PICK_Loa Idols|r on the ground
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
    .complete 97225,1 --Forgotten Loa Idols (x8)
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
    .goto 1411/1,-5383.51,-1184.04,50,0
    .goto 1411/1,-5382.45,-1039.870,50,0
    .goto 1411/1,-5417.88,-1015.54,50,0
    .goto 1411/1,-5445.38,-1055.02,50,0
    .goto 1411/1,-5149.80,-1013.08,50,0
    .goto 1411/1,-5166.72,-1091.33,50,0
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
    .goto 1411/1,-5002.81,-774.08,50,0
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
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Bind your|r |T133728:0|t[Faintly Glowing Skull] |cRXP_WARN_and|r |T134712:0|t[Really Sticky Glue]|cRXP_WARN_. Save them for emergency situations|r
step
    .goto 1411/1,-4715.100,-599.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ukor|r
    .turnin 96876 >>Turn in Ukor's Lost Pack
    .target Ukor
    .isOnQuest 96876
step --at low lvl razormanes
    #completewith QuilboarsScouts
    >>Loot the |cRXP_PICK_Prickly Pear Fruit|r on the ground
    .complete 96825,1 --|8/8 Prickly Pear Fruit
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
    .goto 1411/1,-4442.34,112.46,30,0
    .goto 1411/1,-4565.01,82.49,30,0
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r and |cRXP_ENEMY_Razormane Scouts|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step --at low lvl razormanes
    #loop
    .goto 1411/1,-4543.300,82.500,0
    .goto 1411/1,-4543.300,82.500,40,0
    .goto 1411/1,-4459.000,66.300,40,0
    >>Loot the |cRXP_PICK_Prickly Pear Fruit|r on the ground
    .complete 96825,1 --|8/8 Prickly Pear Fruit
step
    #loop
    .goto 1411/1,-4312.79,407.50,0
    .goto 1411/1,-4312.79,407.50,50,0
    .goto 1411/1,-4314.91,487.52,50,0
    .goto 1411/1,-4251.99,492.8,50,0
    .goto 1411/1,-4167.39,500.91,50,0
    .goto 1411/1,-4164.21,459.32,50,0
    .goto 1411/1,-4180.08,382.12,50,0
    .goto 1411/1,-4251.99,384.23,50,0
    >>Kill |cRXP_ENEMY_Razormane Dustrunners|r and |cRXP_ENEMY_Razormane Battleguards|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Hunter
    #optional
    #loop
	.goto 1411/1,-4475.12,92.72,0
	.goto 1411/1,-4475.12,92.72,50,0
	.goto 1411/1,-4401.09,205.52,50,0
	.goto 1411/1,-4270.49,260.51,50,0
	.goto 1411/1,-4166.33,233.01,50,0
	.goto 1411/1,-4130.37,182.25,50,0
	.goto 1411/1,-4208.1,98.71,50,0
	.goto 1411/1,-4300.1,57.11,50,0
	.goto 1411/1,-4456.61,65.57,50,0
    .xp 9+4470 >> Grind to 4470+/6500xp
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Torka|r and |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Turn in Break a Few Eggs
    .turnin 96825 >>Turn in This Fruit Could Bite Back
    .target +Cook Torka
    .goto 1411/1,-4665.47,311.62
    .turnin 825 >>Turn in From The Wreckage....
    .turnin 837 >>Turn in Encroachment
    .target +Gar'Thok
    .goto 1411/1,-4709.36,274.960
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .accept 6062 >>Accept Taming the Beast
    .trainer >> Train your class spells
    .target Thotar
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_and a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_from him|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto 1411/1,-4763.29,361.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to |cRXP_FRIENDLY_Ghrawt|r. Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from him|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto 1411/1,-4693.49,-183.64,0
    .goto 1411/1,-4699.31,101.88,40,0
    .goto 1411/1,-4696.14,37.73,40,0
    .goto 1411/1,-4693.49,-1.4,40,0
    .goto 1411/1,-4701.42,-66.26,40,0
    .goto 1411/1,-4649.61,-82.83,40,0
    .use 15917 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Dire Mottled Boar|r |cRXP_WARN_at max range|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .turnin 6062 >>Turn in Taming the Beast
    .accept 6083 >>Accept Taming the Beast
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
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
    .goto 1411/1,-5115.44,984.19,0
    .goto 1411/1,-5091.64,809.0,40,0
    .goto 1411/1,-5129.18,877.03,40,0
    .goto 1411/1,-5137.11,934.49,40,0
    >>|cRXP_WARN_Don't kill the|r |cRXP_ENEMY_Armored Scorpids|r |cRXP_WARN_you see. You'll need them later|r
    .use 15919 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Surf Crawler|r |cRXP_WARN_at max range|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
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
    .goto 1411/1,-4862.16,506.2,0
    .goto 1411/1,-4862.16,506.2,40,0
    .goto 1411/1,-4818.28,616.53,40,0
    .goto 1411/1,-4829.38,733.21,40,0
    .goto 1411/1,-4908.17,727.57,40,0
    .goto 1411/1,-4933.55,776.21,40,0
    .goto 1411/1,-4973.73,846.71,40,0
    .goto 1411/1,-4984.31,906.29,40,0
    .use 15920 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Armored Scorpid|r |cRXP_WARN_at max range|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
    .isQuestTurnedIn 6062
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .turnin 6082 >>Turn in Taming the Beast
    .accept 6081 >>Accept Training the Beast
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith Rezlak1
    +|cRXP_WARN_Put|r |T132164:0|t[Tame Beast]|cRXP_WARN_,|r |T136095:0|t[Dismiss Pet]|cRXP_WARN_, and|r |T132161:0|t[Call Pet] |cRXP_WARN_onto your Action Bars|r
step << Hunter
    .goto 1411/1,-4666.0,305.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Buy|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from him|r. |cRXP_BUY_You will use this to feed your pet later|r
    .vendor >> Vendor Trash
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step
    #optional
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
    .xp <10,1
step << Hunter/Shaman
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Accept Lost But Not Forgotten
    .target Misha Tor'kren
step
    #completewith next
    .goto 1411/1,-4414.31,999.70,50 >> Travel to Rezlak
step
    #label Rezlak1
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
step
    #loop
    .goto 1411/1,-4590.39,1036.36,0
    .goto 1411/1,-4590.39,1036.36,40,0
    .goto 1411/1,-4590.39,950.7,40,0
    .goto 1411/1,-4613.12,902.410,40,0
    .goto 1411/1,-4651.19,893.24,40,0
    .goto 1411/1,-4693.49,832.97,40,0
    .goto 1411/1,-4598.32,854.12,40,0
    .goto 1411/1,-4642.20,696.20,40,0
    .goto 1411/1,-4505.79,597.14,40,0
    .goto 1411/1,-4466.13,630.980,40,0
    .goto 1411/1,-4526.41,679.98,40,0
    .goto 1411/1,-4457.67,720.17,40,0
    >>Loot the |cRXP_PICK_Stolen Supply Sacks|r from the ground
    .complete 834,1 --Sack of Supplies (5)
step
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
    .target Rezlak
step
    #completewith next
    .goto 1411/1,-4327.07,932.02,40,0
    .goto 1411/1,-4198.05,911.22,30,0
    .goto 1411/1,-4165.27,903.11,20 >>Jump into Thunder Ridge << !Hunter !Warlock
    .goto 1411/1,-4165.27,903.11,20 >>|cRXP_WARN_Dismiss your|r |T136218:0|t[Imp] |cRXP_WARN_by right clicking its unit frame and clicking dismiss|r << Warlock
    .cast 2641 |cRXP_WARN_Cast|r |T136095:0|t[Dismiss Pet] |cRXP_WARN_and then jump into Thunder Ridge|r << Hunter
step
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
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4449.74,1188.64
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 806
    .xp >10,1
step << Hunter/Shaman
    #softcore
    .goto 1411/1,-4035.2,679.63,60 >> Fight your way out of Thunder Ridge
    .isQuestComplete 806
    .xp <10,1
step << Hunter/Shaman
    #hardcore
    .goto 1411/1,-4035.2,679.63,60 >> Fight your way out of Thunder Ridge
    .isQuestComplete 806
step << Hunter/Shaman
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_This will start a 45 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    .accept 812 >>Accept Need for a Cure
    .target Rhinag
step << Shaman
    #optional
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    .xp 9+2520 >>Grind to 2520+/6500 into level 9
step << Shaman
    #optional
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    +Grind until your hearthstone cooldown is <5 minutes
    .cooldown item,6948,<0
step << Hunter/Shaman
    #label EnterOrg
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Enter Orgrimmar
    .zoneskip Orgrimmar
step << Hunter/Shaman
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
step << Hunter/Shaman
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Accept Hidden Enemies
    .target Thrall
step << Hunter
    #completewith next
    .goto 1454/1,-4634.65,1911.96,30 >> Travel to the Valley of Honor
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
    .goto 1454/1,-4819.1,2099.05
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
step << Hunter/Shaman
    #label FindAntidote
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ghan|r in the Cleft of Shadow
    .accept 813 >>Accept Finding the Antidote
    .target Kor'ghan
    .isOnQuest 812
step << Hunter/Shaman
    #completewith RazorTurnins2
    #label NeedACure
    >>|cRXP_WARN_Abandon Need for a Cure. This will remove the timer on the quest but you will still be able to do it|r
    .abandon 812 >>Abandon Need for a Cure
    .isOnQuest 812
step << Priest
    #optional
    #loop
    .goto Durotar,41.61,24.54,40,0
    .goto Durotar,39.93,24.24,40,0
    .goto Durotar,39.03,26.73,40,0
    .goto Durotar,39.20,31.80
    .xp 9+3150 >>Grind to 3150+/6500 into level 9
step
    #completewith RazorTurnins2
    .hs >> Hearth to Razor Hill
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>0,1
step
    #completewith RazorTurnins2
    .subzone 362 >>Travel to Razor Hill
    .isQuestComplete 806
    .cooldown item,6948,<0
step
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
step << Hunter
    .goto 1411/1,-4724.69,287.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Turn in Dark Storms
    .accept 828 >>Accept Margoz
    .target Orgnil Soulscar
step << !Hunter
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
step << Warrior
    .goto 1411/1,-4827.27,311.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Train your class spells
    --.accept 1505 >>Accept Veteran Uzzek
    .target Tarshaw Jaggedscar
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Train your class spells
    .accept 2983 >>Accept Call of Fire
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    .goto 1411/1,-4839.96,307.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Train your class spells
    .target Swart
step << Warlock
    .goto 1411/1,-4837.31,356.030
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Train your class spells
    .target Dhugru Gorelust
step << Warlock
    .goto 1411/1,-4854.76,345.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Firebolt Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    .goto 1411/1,-4831.5,295.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Accept Hex of Weakness << Troll
    .accept 5660 >> Accept Touch of Weakness << Undead
    .trainer >> Train your class spells
    .target Tai'jin
step << Hunter
    .goto 1411/1,-4704.07,275.31
    >>Go inside the bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r inside
    .train 13549 >> Train your class spells
    .target Thotar
step << Rogue
    .goto 1411/1,-4710.94,268.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Train your class spells
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 10-12 Durotar
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal (Orc/Troll) << !Hunter !Shaman !Tauren !Skyborne
#next 12-17 The Barrens << Orc Hunter/Troll Hunter/Orc Shaman/Troll Shaman


step << Shaman/Hunter
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step << Shaman
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step << Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
    .target Kranal Fiss
step << Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Travel the path up the mountain toward |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #label CallofFire3
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
    .target Telf Joolam
step << Hunter
    #completewith MargozTurnIn
    +Tame a |cRXP_ENEMY_Venomtail Scorpid|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #completewith next
    .subzone 371 >>Travel toward Dustwind Cave
step << Shaman
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Kill |cRXP_ENEMY_Burning Blade Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step
    #completewith next
    .goto 1411/1,-4939.36,824.51,80,0
    .goto 1411/1,-4945.18,1101.92,50 >> Travel to |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step
    #label MargozTurnIn
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Turn in Margoz
    .accept 827 >>Accept Skull Rock
    .target Margoz
    .isQuestTurnedIn 806
step << !Shaman !Hunter
    #completewith next
    .goto 1411/1,-4949.41,925.67,50,0
    .goto 1411/1,-4929.32,823.45,50,0
    .goto 1411/1,-4774.39,780.80,50 >> Travel toward Dustwind Cave
    .isQuestTurnedIn 828
step << !Shaman !Hunter
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4749.01,822.39,12,0
    >>Kill |cRXP_ENEMY_Burning Blade Orcs|r. Loot them for their |cRXP_LOOT_Collars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step << Shaman/Hunter
    #completewith Gazzuz
    .goto 1411/1,-4876.97,1452.310,60 >> Travel toward Skull Rock
step << Shaman/Hunter
    #completewith Gazzuz
    >>Kill |cRXP_ENEMY_Venomtail Scorpids|r. Loot them for their |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Shaman/Hunter
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
step << Shaman/Hunter
    #label Gazzuz
    .goto 1411/1,-4701.42,1455.83
    >>Kill |cRXP_ENEMY_Gazz'uz|r. Loot him for his |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r]
    >>|cRXP_WARN_Use the |T134085:0|t[|cRXP_LOOT_Eye of Burning Shadow|r] to start the quest|r
    >>|cRXP_WARN_Use your|r |T134712:0|t[Really Sticky Glue] |cRXP_WARN_on the|r |cRXP_ENEMY_Voidwalker|r |cRXP_WARN_to avoid being hit, and|r |T134829:0|t[Healing Potions] |cRXP_WARN_to restore health. Use LoS (line of sight) to avoid|r |cRXP_ENEMY_Gazz'uz|r |cRXP_WARN_his Shadow Bolts|r
    >>|cRXP_WARN_You can run to bodies of water found within the cave to evade the|r |cRXP_ENEMY_Voidwalker|r |cRXP_WARN_after killing|r |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Be careful as he is VERY difficult. You can skip this quest if you need|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Accept Burning Shadows
    .use 4903
	.unitscan Gazz'uz
step << Shaman/Hunter
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
step << Shaman/Hunter
    #completewith Ravine
    >>Kill |cRXP_ENEMY_Venomtail Scorpids|r. Loot them for their |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto 1411/1,-4945.18,1101.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Turn in Skull Rock
    .accept 829 >>Accept Neeru Fireblade
    .target Margoz
    .isQuestTurnedIn 806
step
    #label Ravine
    #completewith next
    .subzone 370 >> Drop down into Drygulch Ravine
step
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
    .use 277661 >>Loot |cRXP_ENEMY_Dustwind Storm Witches|r for a |T134336:0|t[|cRXP_LOOT_Dull Storm Orb|r]. Use it to accept the quest
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .collect 277661,1,97281 --Dull Storm Orb (x1)
    .accept 97281 >>Accept A Simmering Storm
step << skip
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    --#hardcore
    #completewith next
    .goto 1411/1,-4804.53,830.5,60,0
    .goto 1411/1,-4698.78,842.48,60,0
    .goto 1411/1,-4414.31,999.70,60 >> Travel through the cave toward |cRXP_FRIENDLY_Rezlak|r
step
    #label SecuringLinesTurnIn
    .goto 1411/1,-4414.31,999.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
    .turnin 97281 >>Turn in A Simmering Storm
    .accept 97282 >>Accept Stormy Potential
    .target Rezlak
step << Shaman/Hunter
    #loop
    .goto 1411/1,-4010.35,1031.42,0
    .goto 1411/1,-4217.09,1087.47,60,0
    .goto 1411/1,-4100.24,1113.2,60,0
    .goto 1411/1,-4108.7,1229.88,60,0
    .goto 1411/1,-4013.52,1209.08,60,0
    .goto 1411/1,-4010.35,1031.42,60,0
    >>Finish killing |cRXP_ENEMY_Venomtail Scorpids|r. Loot them for their |cRXP_LOOT_Poison Sacs|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #completewith next
    .goto 1411/1,-4047.300,918.400
    >>Kill |cRXP_ENEMY_Thunder Lizards|r and |cRXP_ENEMY_Lightning Hides|r. Loot them for their |cRXP_LOOT_Charged Thunder Lizard Organs|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step
    .goto 1411/1,-4117.500,747.200
    >>Kill |cRXP_ENEMY_Halikor|r (elite). Loot him for |T134061:0|t[|cRXP_LOOT_Halikor's Hoof|r]
    >>|cRXP_WARN_This is hard! Group up if possible. It has 800 health but his damage is manageable. Skip this step if you can't kill it|r
    .collect 275723,1,96877 --Halikor's Hoof (x1)
    .accept 96877 >>Accept Halikor's Hoof
    .mob Halikor
step
    .goto 1411/1,-4047.300,918.400
    >>Kill |cRXP_ENEMY_Thunder Lizards|r and |cRXP_ENEMY_Lightning Hides|r. Loot them for their |cRXP_LOOT_Charged Thunder Lizard Organs|r
    .complete 97282,1 --|5/5 Charged Thunder Lizard Organ
    .mob Lightning Hide
    .mob Charged Thunder Lizard Organ
step
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto 1411/1,-4414.500,999.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 97282 >>Turn in Stormy Potential
    .target Rezlak
step
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Enter Orgrimmar
step << !Rogue
    .goto 1454/1,-4342.77,1616.56,15,0
    .goto 1454/1,-4347.54,1634.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vendor and Repair
    .target Urtharo
step << Shaman
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
step << !Shaman !Hunter
    #label Admiralorders1
    .goto 1454/1,-4133.36,1939.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Turn in The Admiral's Orders
    .target Nazgrel
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Turn in Hidden Enemies
    .accept 5727 >>Accept Hidden Enemies
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Shaman/Hunter
    .goto 1454/1,-4125.79,1920.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Turn in Hidden Enemies
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Rogue
    .goto 1454/1,-4280.21,1773.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Accept The Shattered Hand << Orc Rogue/Troll Rogue
    .target Therzok
step << Shaman/Hunter
    .goto 1454/1,-4343.19,1772.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Turn in Finding the Antidote
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto 1454/1,-4362.13,1834.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Train your class spells
    .target Mirket
step << Shaman/Hunter
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Turn in Neeru Fireblade
    .turnin 832 >>Turn in Burning Shadows
    .accept 809 >>Accept Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto 1454/1,-4374.75,1800.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Turn in Neeru Fireblade
    .accept 809 >>Accept Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step
    .goto 1454/1,-4568.100,1855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kamari|r
    .turnin 96877 >>Turn in Halikor's Hoof
    .target Kamari
    .isOnQuest 96877
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Enter Ragefire Chasm
step << skip --!Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Shaman !Hunter
    --#hardcore
    #completewith ZeptoUC1
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1454/1,-4424.40,1817.58
    .subzone 2437 >> Enter Ragefire Chasm
step << skip --Shaman/Hunter
    #softcore
    #completewith FoundtheCure
    .goto 1411/1,-4450.27,1188.64
    .deathskip >> Die and Respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Shaman/Hunter
    --#hardcore
    #completewith FoundtheCure
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    #label FoundtheCure
    .goto 1411/1,-4158.93,1153.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Accept Need for a Cure
    .turnin 812 >>Turn in Need for a Cure
    .target Rhinag
step << Shaman/Hunter
    .goto 1411/1,-3802.55,650.72,50,0
    .goto 1411/1,-3803.08,503.38,50,0
    .goto 1411/1,-3783.51,238.65,50,0
    .goto 1411/1,-3774.53,150.88,50,0
    .goto 1411/1,-3797.79,317.260
    >>Travel south alongside the river toward Far Watch Post
    >>Kill |cRXP_ENEMY_Dreadmaw Crocolisks|r on the way. Loot them for |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Skip and abandon this quest if it won't drop|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto 1411/1,-4241.94,742.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Turn in Lost But Not Forgotten
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #label FarWatchPost
    .goto 1413/1,-3686.10,303.14,40 >> Travel to Far Watch Post
    .zoneskip The Barrens
step << Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Turn in Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Shaman/Hunter
    .goto 1413/1,-3694.2,259.22
    >>|cRXP_WARN_Loot the|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_next to|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. This item has a 30 minute timer, so be sure to be quick|r
    .turnin 926 >>Turn in Flawed Power Stone
    .isOnQuest 924
step << Rogue/Mage/Priest/Warlock/Warrior
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
#forever
<< Horde
#name 10-12 Tirisfal (Orc/Troll)
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor !Hunter !Shaman !Tauren !Skyborne
#next 12-14 Silverpine Forest << !Hunter !Shaman !Tauren !Skyborne

step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto 1420/0,240.75,1877.57,20,0
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
step << Orc Rogue/Troll Rogue !Undead
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Michael|r
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
    >>|cRXP_BUY_Buy Three|r |T133884:0|t[Murloc Eyes] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << skip --Orc Rogue/Troll Rogue
    .goto 1458/0,59.07,1747.75
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Perform a Logout Skip in the Magic Quarter by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLICK HERE for an example|r
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
    .zoneskip Undercity,1
step
    #completewith next
    .zone Tirisfal Glades >>Exit Undercity
    .zoneskip Undercity,1
step
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Travel to Brill
step
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Terrence|r
    .accept 96895 >>Accept The Argent Emissary
    .target Deathguard Terrence
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
    .maxlevel 11
step << Warrior
    #optional
    .abandon 1505 >>Abandon Veteran Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandon Path of Defense
    .isOnQuest 1498
step << Warrior
    .goto 1420/0,238.49,2254.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Accept Speak with Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warlock
    .goto 1420/0,248.88,2251.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ageron|r inside the inn
    .accept 1478 >> Accept Halgar's Summons
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto 1420/0,243.01,2270.70
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
    .goto 1420/0,288.64,2285.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>Accept Wanted: Maggot Eye
    .accept 99134 >>Accept Discipline
    .maxlevel 11
step
    #completewith Branches
    .use 286176 >>|cRXP_WARN_Use|r |T133490:0|t[Executor's Motivator] |cRXP_WARN_on any |cRXP_FRIENDLY_Deathguard|r in and around Brill|r
    .complete 99134,1 --|5/5 Deathguards motivated
    --too many .mobs, will cause clutter
step
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    .goto 1420/0,391.400,2289.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Bartholomew|r
    .accept 86784 >>Accept Sticks and Bones
    .target Deathguard Bartholomew
    .maxlevel 11
step
    #completewith Sticks << !Warlock
    #completewith LockUC << Warlock
    >>Loot |cRXP_PICK_Dry Branches|r on the ground underneath trees near Brill
    .complete 86784,1 --|6/6 Dry Branch
    .isOnQuest 86784
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Turn in Speak with Dillinger
    .accept 1819 >> Accept Ulag the Cleaver
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,360.04,2376.14
    >>|cRXP_WARN_Click the|r |cRXP_WARN_Mausoleum Trigger|r |cRXP_WARN_on the ground. This will summon|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Kill him|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto 1420/0,403.87,2287.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Turn in Ulag the Cleaver
    .accept 1820 >> Accept Speak with Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warlock
    #label LockUC
    #completewith UCflightpath1
    .goto 1420/0,240.75,1877.57,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
step << Warlock
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
step << Warlock !Undead
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Get the Undercity flight path
    .target Michael Garrett
step << Warlock
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Rhyker|r
    >>|cRXP_BUY_Buy Three|r |T133884:0|t[Murloc Eyes] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1478 >> Turn in Halgar's Summons
    .accept 1473 >> Accept Creature of the Void
    .isQuestAvailable 1504
step << Warlock
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
step << Warlock
    #optional
    #completewith next
    .goto 1420/0,726.06,1801.95
    >>Loot |cRXP_PICK_Perrine's Chest|r for |T133733:0|t[Egalin's Grimoire]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    .goto 1420/0,726.06,1801.95
    >>Loot |cRXP_PICK_Perrine's Chest|r on the ground for |T133733:0|t[Egalin's Grimoire]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,714.8,1604.24,35,0
    .goto 1458/0,652.73,1623.44,35,0
    .goto 1458/0,634.02,1669.66,35,0
    .goto 1458/0,539.52,1665.17,10,0
    .goto 1458/0,481.48,1659.8,10,0
    .goto 1458/0,476.49,1632.15,10,0
    .goto 1458/0,439.08,1627.02,10,0
    .goto 1458/0,435.05,1598.86,10,0
    .zone Undercity >> Travel back into the Undercity through the sewers
step << Warlock
    .goto 1458/0,57.05,1711.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r in the Magic Quarter
    .turnin 1473 >> Turn in Creature of the Void
    .accept 1471 >> Accept The Binding
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto 1458/0,41.99,1704.480
    .cast 9221 >>|cRXP_WARN_Use the|r |T134416:0|t[Runes of Summoning] |cRXP_WARN_at the Summoning Circle|r
    .use 6284
step << Warlock
    .goto 1458/0,41.99,1704.480
    >>Kill the |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto 1458/0,57.34,1711.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Turn in The Binding
    .target Carendin Halgar
    .isQuestAvailable 1504
step << skip --Warlock
    .goto 1458/0,59.07,1747.75
    .goto 1458/0,221.78,1780.14,30 >>|cRXP_WARN_Perform a Logout Skip by positioning your character on the highest part of the lowest staircase until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLICK HERE for an example|r
    >>|cRXP_WARN_If you can't do this, just run out of Undercity normally|r
    .zoneskip Undercity,1
step << Warlock
    #completewith KillDevlin
    .goto 1420/0,235.32,1883.89,50,0
    .zone Tirisfal Glades >> Exit Undercity
    .zoneskip Tirisfal Glades
step
    #optional
    #label Sticks
step
    #label Branches
    #loop
    .goto 1420/0,603.600,2268.300,40,0
    .goto 1420/0,539.700,2220.400,40,0
    .goto 1420/0,305.600,2180.100,40,0
    .goto 1420/0,375.600,2246.400,40,0
    .goto 1420/0,442.800,2259.400,40,0
    >>Loot |cRXP_PICK_Dry Branches|r on the ground underneath trees near Brill
    .complete 86784,1 --|6/6 Dry Branch
    .isOnQuest 86784
step
    .goto 1420/0,445.500,2165.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eleanor Shackleton|r
    .turnin 86784 >>Turn in Sticks and Bones
    .target Eleanor Shackleton
    .isQuestComplete 86784
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Duskbat|r that you see. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    .goto 1420/0,882.41,2511.1,150 >> Travel northwest toward Agamand Mills
    .isOnQuest 362
step
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Thurman's Letter|r] |cRXP_WARN_may drop from these mobs. Accept the quest if it does|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Accept A Letter Undelivered
    .use 2839
step
    #label KillDevlin
    .goto 1420/0,894.16,2609.00
    >>Kill |cRXP_ENEMY_Devlin|r. Loot him for his |cRXP_LOOT_Remains|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    .goto 1420/0,803.78,2752.40
    >>Kill |cRXP_ENEMY_Nissa|r. Loot her for her |cRXP_LOOT_Remains|r. She can be inside the building
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
    .isOnQuest 354
step
    #label ThurmanGregor
    #loop
    .goto 1420/0,996.28,2899.11,0
    .goto 1420/0,1058.19,2775.59,60,0
    .goto 1420/0,998.54,2903.93,60,0
    .goto 1420/0,919.01,2939.770,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,996.28,2899.11,60,0
    >>Kill |cRXP_ENEMY_Thurman|r and |cRXP_ENEMY_Gregor|r. Loot them for their |cRXP_LOOT_Remains|r
    >>|cRXP_WARN_They can patrol around|r
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
    .isOnQuest 354
step
    #completewith MaggotEye
    .goto 1420/0,578.75,2886.75,15,0
    .goto 1420/0,557.96,2850.91,15,0
    .goto 1420/0,510.06,2865.06,15,0
    .goto 1420/0,477.98,2860.55,40,0
    .goto 1420/0,422.85,2882.84,50 >> Travel down the hills
    >>|cRXP_WARN_Be careful. Don't take too much fall damage. Follow the waypoint for safety|r
    .isQuestComplete 354
step
    #label MaggotEye
    .goto 1420/0,382.63,2910.55
    >>Kill |cRXP_ENEMY_Maggot Eye|r. Loot him for his |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 398
step
    #loop
    .goto 1420/0,138.300,2829.600,0
    .goto 1420/0,138.300,2829.600,50,0
    .goto 1420/0,121.200,2727.400,50,0
    .goto 1420/0,127.500,2601.800,50,0
    .goto 1420/0,211.400,2545.500,50,0
    .goto 1420/0,146.300,2408.000,50,0
    .goto 1420/0,94.600,2312.100,50,0
    .goto 1420/0,39.900,2248.100,50,0
    .goto 1420/0,-137.100,2206.000,50,0
    .goto 1420/0,-190.800,2387.700,50,0
    >>Kill |cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .accept 356 >>Accept Rear Guard Patrol
    .target Deathguard Linnea
step
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96895 >>Turn in The Argent Emissary
    .accept 96897 >>Accept The Cult of the Damned
    .accept 96898 >>Accept Remnants of War
    .target Hadric Harlson
step
    .goto 1420/0,-130.500,1907.800
    >>Kill |cRXP_ENEMY_Dark Enforcers|r and |cRXP_ENEMY_Dark Neophytes|r. Loot them for |cRXP_LOOT_Necrotic Crystal Fragments|r
    >>|cRXP_LOOT_Necrotic Crystal Fragments|r |cRXP_WARN_can also be looted on the ground|r
    >>|cRXP_WARN_Be careful! These mobs hit hard. |cRXP_ENEMY_Dark Enforcers|r also have an instant cast 50-70 damage ability|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step
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
step
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadric Harlson|r
    .turnin 96897 >>Turn in The Cult of the Damned
    .turnin 96898 >>Turn in Remnants of War
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson
step
    #label LinneaTurnin
    .goto 1420/0,74.00,2022.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Turn in Rear Guard Patrol
    .target Deathguard Linnea
step
    #completewith MillsTurnin
    .subzone 159 >> Travel to Brill
step
    #optional
    #loop
    .goto 1420/0,290.400,2272.900,30,0
    .goto 1420/0,257.200,2239.500,30,0
    .goto 1420/0,313.400,2259.400,30,0
    .use 286176 >>|cRXP_WARN_Use|r |T133490:0|t[Executor's Motivator] |cRXP_WARN_on any |cRXP_FRIENDLY_Deathguard|r in and around Brill|r
    .complete 99134,1 --|5/5 Deathguards motivated
    .isOnQuest 99134
step
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Turn in Wanted: Maggot Eye
    .turnin 99134 >>Turn in Discipline
    .target Executor Zygand
    .isQuestComplete 398
    .isQuestComplete 99134
step
    #optional
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 99134 >>Turn in Discipline
    .target Executor Zygand
    .isQuestComplete 99134
step
    #optional
    .goto 1420/0,295.87,2277.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Turn in Wanted: Maggot Eye
    .target Executor Zygand
    .isQuestComplete 398
step
    #completewith Doomweed
    #optional
    .destroy 286176 >>|cRXP_WARN_Destroy the|r |T133490:0|t[Executor's Motivator] |cRXP_WARN_as it's no longed needed for anything|r
step
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
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Turn in Deaths in the Family
    .turnin 362 >>Turn in The Haunted Mills
    .target Coleman Farthing
    .isQuestComplete 354
    .isQuestComplete 362
step
    #optional
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Turn in Deaths in the Family
    .target Coleman Farthing
    .isQuestComplete 354
step
    #optional
    #label MillsTurnin
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .turnin 362 >>Turn in The Haunted Mills
    .target Coleman Farthing
    .isQuestComplete 362
step << Warrior
    .goto 1420/0,244.36,2262.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Turn in Speak with Coleman
    .accept 1821 >>Accept Agamand Heirlooms
    .target Coleman Farthing
    .isQuestTurnedIn 1819
step
    #optional
    .goto 1420/0,236.68,2249.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretchen|r upstairs
    .turnin 375 >>Turn in The Chill of Death
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto 1420/0,251.14,2265.28
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
    .goto 1420/0,238.49,2255.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Train |T132223:0|t[Overpower]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto 1420/0,243.01,2271.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marion|r on the second floor
    .train 1766 >> Train |T132219:0|t[Kick]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto 1420/0,250.24,2259.25
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
step << Rogue
    #completewith Swordtraining3
    .goto 1420/0,240.75,1877.57,20,0
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
    .goto 1420/0,240.75,1877.57,20,0
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
    .goto 1458/0,71.92,1435.70
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
    .goto 1420/0,240.75,1877.57,20,0
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
    >>|cRXP_BUY_Buy Three|r |T133884:0|t[Murloc Eyes] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest
    .goto 1458/0,273.87,1482.360
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
    .goto 1458/0,194.34,1681.63
    >>|cRXP_WARN_Turn all your|r |T132889:0|t[Linen Cloth] |cRXP_WARN_into|r |T132890:0|t[Bolt of linen Linen Cloth]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,194.34,1681.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josef|r
    .train 7623 >> Train |T132662:0|t[Brown Linen Robe]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,196.16,1684.83
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
    .goto 1458/0,275.02,1487.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Buy a|r |T133942:0|t[Copper Rod] |cRXP_BUY_and|r |T135435:0|t[Simple Wood] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Disenchant all the|r |T132662:0|t[Brown Linen Robes] |cRXP_WARN_that you made and create a|r |T135225:0|t[Runed Copper Rod]
    >>|cRXP_WARN_If you did not get a|r |T132867:0|t[Lesser Magic Essence] |cRXP_WARN_then buy one from|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_if there is one available. Otherwise finish this step later|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto 1458/0,273.2,1491.71
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
    .abandon 375 >>Abandon The Chill of Death 
step
    #label LeaveUndercity3
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Travel to Silverpine Forest
    .zoneskip Silverpine Forest
]])