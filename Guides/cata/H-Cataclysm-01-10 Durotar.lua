local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction ~= 'Horde' then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Valley of Trials
#next 6-10 Durotar
#version 1
--#group RXP Cataclysm (H)
#defaultfor Orc
#group RXP Cataclysm 1-80 (H)
#subweight 10000


step << !Orc
    #completewith next
    +You have selected a guide meant for Orcs. You should choose the same starter zone that you start in
step
    .goto 1411,43.29,68.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaltunk|r
    .accept 25152 >>Accept Your Place In The World
    .target Kaltunk
step
    .goto 1411,43.23,68.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25152 >>Turn in Your Place In The World
    .accept 25126 >>Accept Cutting Teeth
    .target Gornek
step
    .goto 1411,44.96,65.65,30,0
    .goto 1411,45.09,64.90,30,0
    .goto 1411,43.62,64.74,30,0
    .goto 1411,43.97,63.57
    >>Kill |cRXP_ENEMY_Mottled Boars|r
    .complete 25126,1 --Mottled Boar slaughtered (6)
    .mob Mottled Boar
step
    .goto 1411,43.28,68.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25126 >>Turn in Cutting Teeth
    .accept 25172 >>Accept Invaders in Our Home
    .target Gornek
step
#loop
	.line 1411,44.39,70.04,45.25,70.47,45.31,71.80,45.11,72.80,44.58,73.46,43.82,74.37,42.69,72.72,42.13,72.47,41.38,72.37,40.73,71.02,41.43,70.77,41.96,71.50,42.69,71.41,43.02,71.23,43.43,70.84,44.39,70.04
	.goto 1411,44.39,70.04,30,0
	.goto 1411,45.25,70.47,30,0
	.goto 1411,45.31,71.80,30,0
	.goto 1411,45.11,72.80,30,0
	.goto 1411,44.58,73.46,30,0
	.goto 1411,43.82,74.37,30,0
	.goto 1411,42.69,72.72,30,0
	.goto 1411,42.13,72.47,30,0
	.goto 1411,41.38,72.37,30,0
	.goto 1411,40.73,71.02,30,0
	.goto 1411,41.43,70.77,30,0
	.goto 1411,41.96,71.50,30,0
	.goto 1411,42.69,71.41,30,0
	.goto 1411,43.02,71.23,30,0
	.goto 1411,43.43,70.84,30,0
	.goto 1411,44.39,70.04,30,0
    >>Kill |cRXP_ENEMY_Northwatch Scouts|r
    >>|cRXP_WARN_They are stealthed|r
    .complete 25172,1 --Northwatch Scout (7)
    .mob Northwatch Scout
    --VV Check on yard range for these stealthed mobs
step
#loop
	.line 1411,44.39,70.04,45.25,70.47,45.31,71.80,45.11,72.80,44.58,73.46,43.82,74.37,42.69,72.72,42.13,72.47,41.38,72.37,40.73,71.02,41.43,70.77,41.96,71.50,42.69,71.41,43.02,71.23,43.43,70.84,44.39,70.04
	.goto 1411,44.39,70.04,30,0
	.goto 1411,45.25,70.47,30,0
	.goto 1411,45.31,71.80,30,0
	.goto 1411,45.11,72.80,30,0
	.goto 1411,44.58,73.46,30,0
	.goto 1411,43.82,74.37,30,0
	.goto 1411,42.69,72.72,30,0
	.goto 1411,42.13,72.47,30,0
	.goto 1411,41.38,72.37,30,0
	.goto 1411,40.73,71.02,30,0
	.goto 1411,41.43,70.77,30,0
	.goto 1411,41.96,71.50,30,0
	.goto 1411,42.69,71.41,30,0
	.goto 1411,43.02,71.23,30,0
	.goto 1411,43.43,70.84,30,0
	.goto 1411,44.39,70.04,30,0
    .xp 2+650 >> Grind to 650+/900xp
    .mob Northwatch Scout
step
    .goto 1411,43.27,68.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25172 >>Turn in Invaders in Our Home
    .accept 25127 >>Accept Sting of the Scorpid
    .accept 3088 >>Accept Encrypted Parchment << Rogue
    .accept 3087 >>Accept Etched Parchment << Hunter
    .accept 25138 >>Accept Glyphic Parchment << Mage
    .accept 3089 >>Accept Rune-Inscribed Parchment << Shaman
    .accept 2383 >> Accept Simple Parchment << Warrior
    .accept 3090 >>Accept Tainted Parchment << Warlock
    .target Gornek
step << Rogue
    .goto 1411,42.37,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 3088 >>Turn in Encrypted Parchment
    .accept 25141 >>Accept Eviscerate
    .train 2098 >> Train |T132292:0|t[Eviscerate]
    .target Rwag
step << Hunter
    .goto 1411,42.84,69.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karranisha|r
    .turnin 3087 >>Turn in Etched Parchment
    .accept 25139 >>Accept Steady Shot
    .train 56641 >> Train |T132213:0|t[Steady Shot]
    .target Karranisha
step << Mage
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acrypha|r
    .turnin 25138 >>Turn in Glyphic Parchment
    .accept 25149 >>Accept Arcane Missiles
    .train 5143 >> Train |T136096:0|t[Arcane Missiles]
    .target Acrypha
step << Shaman
    .goto 1411,42.39,68.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 3089 >>Turn in Rune-Inscribed Parchment
    .accept 25143 >>Accept Primal Strike
    .train 73899 >> Train |T460956:0|t[Primal Strike]
    .target Shikrik
step << Warrior
    .goto 1411,42.88,69.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Turn in Simple Parchment
    .accept 25147 >>Accept Charge
    .train 100 >> Train |T132337:0|t[Charge]
    .target Frang
step << Warlock
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Turn in Tainted Parchment
    .accept 25145 >>Accept Immolate
    .train 348 >> Train |T135817:0|t[Immolate]
    .target Nartok
step << Rogue
    .goto 1411,43.18,69.47
	>>Cast |T132292:0|t[Eviscerate] on a |cRXP_ENEMY_Training Dummy|r
	.complete 25141,1 --Cast Eviscerate (x3)
	.mob Training Dummy
step << Hunter
    .goto 1411,43.18,69.47
	>>Cast |T132213:0|t[Steady Shot] on a |cRXP_ENEMY_Training Dummy|r
	.complete 25139,1 --Cast Steady Shot (x5)
	.mob Training Dummy
step << Mage
    .goto 1411,43.18,69.47
	>>Cast |T136096:0|t[Arcane Missiles] on a |cRXP_ENEMY_Training Dummy|r
	.complete 25149,1 --Arcane Missiles (x2)
	.mob Training Dummy
step << Shaman
    .goto 1411,43.18,69.47
	>>Cast |T460956:0|t[Primal Strike] on a |cRXP_ENEMY_Training Dummy|r
	.complete 25143,1 --Cast Primal Strike (x3)
	.mob Training Dummy
step << Warrior
    .goto 1411,43.18,69.47
	>>Cast |T132337:0|t[Charge] on a |cRXP_ENEMY_Training Dummy|r
	.complete 25147,1 --Cast Charge (x1)
	.mob Training Dummy
step << Warlock
    .goto 1411,43.18,69.47
	>>Cast |T135817:0|t[Immolate] on a |cRXP_ENEMY_Training Dummy|r
	.complete 25145,1 --Cast Immolate (x5)
	.mob Training Dummy
step << Rogue
    .goto 1411,42.37,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rwag|r
    .turnin 25141 >>Turn in Eviscerate
    .target Rwag
step << Hunter
    .goto 1411,42.84,69.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karranisha|r
    .turnin 25139 >>Turn in Steady Shot
    .target Karranisha
step << Mage
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acrypha|r
    .turnin 25149 >>Turn in Arcane Missiles
    .target Acrypha
step << Shaman
    .goto 1411,42.39,68.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shikrik|r
    .turnin 25143 >>Turn in Primal Strike
    .target Shikrik
step << Warrior
    .goto 1411,42.88,69.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frang|r
    .turnin 25147 >>Turn in Charge
    .target Frang
step << Warlock
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 25145 >>Turn in Immolate
    .target Nartok
step
    .goto 1411,42.67,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .accept 25136 >>Accept Galgar's Cactus Apple Surprise
    .target Galgar
step
    .goto 1411,43.46,67.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .accept 25134 >>Accept Lazy Peons
    .target Foreman Thazz'ril
step
    #completewith Sarkoth
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for their |cRXP_LOOT_Tails|r
    .complete 25127,1 --Scorpid Worker Tail (8)
    .mob Scorpid Worker
 step
    #completewith ScorpidTails
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 25134,1 --Peons Awoken (4)
    .use 16114
    .target Lazy Peon
step
    #completewith ScorpidTails
    >>Loot the |cRXP_LOOT_Cactus Apples|r
    .complete 25136,1 --Cactus Apple (6)
step
    .goto 1411,40.65,62.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .accept 25129 >>Accept Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto 1411,40.55,67.23
    >>Kill |cRXP_ENEMY_Sarkoth|r. Loot him for his |cRXP_LOOT_Claw|r
    .complete 25129,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    #label ScorpidTails
    #loop
    .goto 1411,40.140,67.939,0
    .waypoint 1411,40.081,66.990,30,0
    .waypoint 1411,40.140,67.939,30,0
    .waypoint 1411,40.753,68.579,30,0
    .waypoint 1411,41.270,67.971,30,0
    .waypoint 1411,41.389,65.804,30,0
    .waypoint 1411,40.022,66.103,30,0
    >>Kill |cRXP_ENEMY_Scorpid Workers|r. Loot them for their |cRXP_LOOT_Tails|r
    .complete 25127,1 --Scorpid Worker Tail (8)
    .mob Scorpid Worker
step
    .goto 1411,42.72,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
    .isQuestComplete 25136
step
    .goto 1411,43.23,68.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25127 >>Turn in Sting of the Scorpid
    .target Gornek
step
    .goto 1411,42.47,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Canaga|r
    .accept 25128 >>Accept Hana'zu
    .target Canaga Earthcaller
step
    .goto 1411,43.45,67.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .accept 25131 >>Accept Vile Familiars
    .target Zureetha Fargaze
step
    .goto 1411,43.53,67.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 37446 >>Turn in Lazy Peons
    .target Foreman Thazz'ril
	.isQuestComplete 37446
step
    #completewith VileFamiliars
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 25134,1 --Peons Awoken (4)
    .use 16114
    .target Lazy Peon
step
    #completewith WakePeons
    >>Loot the |cRXP_LOOT_Cactus Apples|r
    .complete 25136,1 --Cactus Apple (6)
step
    #label VileFamiliars
    #loop
    .goto 1411,45.26,57.37,0
    .goto 1411,46.90,59.59,40,0
    .goto 1411,46.94,58.61,40,0
    .goto 1411,46.25,58.00,40,0
    .goto 1411,46.48,57.25,40,0
    .goto 1411,45.86,57.43,40,0
    .goto 1411,45.82,56.60,40,0
    .goto 1411,45.22,57.51,40,0
    .goto 1411,45.10,56.72,40,0
    .goto 1411,44.55,56.14,40,0
    .goto 1411,44.38,56.79,40,0
    .goto 1411,43.78,57.46,40,0
    .goto 1411,43.95,58.65,40,0
    .goto 1411,43.11,58.25,40,0
    .goto 1411,45.26,57.37,40,0
    >>Kill |cRXP_ENEMY_Vile Familiars|r
    .complete 25131,1 --Vile Familiar (8)
    .mob Vile Familiar
step
    #completewith next
    .goto 1411,43.90,57.80,20,0
    .goto 1411,42.85,57.27,20,0
    .goto 1411,41.15,58.91,20,0
    .goto 1411,40.91,60.24,20,0
    .goto 1411,40.43,62.93,20,0
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 25134,1 --Peons Awoken (4)
    .use 16114
    .target Lazy Peon
step
    .goto 1411,40.65,62.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hana'zua|r
    .turnin 25128 >>Turn in Hana'zua
    .turnin 25129 >>Turn in Sarkoth
    .accept 25130 >>Accept Back to the Den
    .target Hana'zua
step
    #label WakePeons
    #loop
    .goto 1411,45.53,65.80,0
    .goto 1411,38.84,61.82,20,0
    .goto 1411,39.78,67.17,20,0
    .goto 1411,40.71,68.62,20,0
    .goto 1411,40.42,62.96,20,0
    .goto 1411,46.74,60.65,20,0
    .goto 1411,47.08,57.87,20,0
    .goto 1411,43.90,57.78,20,0
    .goto 1411,42.84,57.25,20,0
    .goto 1411,41.14,58.93,20,0
    .goto 1411,40.89,60.23,20,0
    .goto 1411,45.53,65.80,20,0
    >>|cRXP_WARN_Use the|r |T133486:0|t[Foreman's Blackjack] |cRXP_WARN_on sleeping |r|cRXP_FRIENDLY_Lazy Peons|r
    .complete 25134,1 --Peons Awoken (4)
    .use 16114
    .target Lazy Peon
step
    .goto 1411,42.73,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
    .isQuestComplete 25136
step
    .goto 1411,43.45,67.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 25131 >>Turn in Vile Familiars
    .target Zureetha Fargaze
step
    .goto 1411,43.53,67.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 25134 >>Turn in Lazy Peons
    .accept 25135 >>Accept Thazz'ril's Pick
    .target Foreman Thazz'ril
step
    .goto 1411,43.45,67.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .accept 25132 >>Accept Burning Blade Medallion
    .target Zureetha Fargaze
step
    #loop
    .goto 1411,44.85,59.65,0
    .goto 1411,40.52,60.35,20,0
    .goto 1411,41.59,58.59,20,0
    .goto 1411,42.60,58.76,20,0
    .goto 1411,44.64,58.22,20,0
    .goto 1411,45.45,58.45,20,0
    .goto 1411,44.85,59.65,20,0
    >>Loot the |cRXP_LOOT_Cactus Apples|r
    .complete 25136,1 --6/6 Cactus Apple
step
    #completewith next
    .goto 1411,45.41,55.69,30 >> Enter the cave
step
    #completewith Yarrog
	>>Kill |cRXP_ENEMY_Felstalkers|r
    .complete 25132,1 --5/5 Felstalker slain
    .mob Felstalker
step
    .goto 1411,45.36,56.44,15,0
    .goto 1411,44.57,54.76,15,0
    .goto 1411,43.73,53.79
    >>Loot |cRXP_LOOT_Thazz'ril's Pick|r on the ground
    .complete 25135,1 --1/1 Thazz'ril's Pick
step
	#label Yarrog
    .goto 1411,43.15,55.47,15,0
    .goto 1411,42.43,53.49
    >>Kill |cRXP_ENEMY_Yarrog Baneshadow|r. Loot him for his |cRXP_LOOT_Medallion|r
    .complete 25132,2 --1/1 Burning Blade Medallion
    .mob Yarrog Baneshadow
step
    .goto 1411,42.42,54.14,15,0
    .goto 1411,42.98,55.32,15,0
    .goto 1411,44.48,54.98,15,0
    .goto 1411,44.77,54.56,15,0
    .goto 1411,44.81,53.15,15,0
    .goto 1411,44.10,52.94,15,0
    .goto 1411,42.70,52.97
	>>Kill |cRXP_ENEMY_Felstalkers|r
    .complete 25132,1 --5/5 Felstalker slain
    .mob Felstalker
step
    #completewith next
    .goto 1411,42.50,54.48,-1
    .goto 1411,44.77,54.64,-1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    >>|cRXP_WARN_Make sure you die near the waypoint arrow|r
    .target Spirit Healer
step
    .goto 1411,43.23,68.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gornek|r
    .turnin 25130 >>Turn in Back to the Den
    .target Gornek
step
    .goto 1411,42.74,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galgar|r
    .turnin 25136 >>Turn in Galgar's Cactus Apple Surprise
    .target Galgar
step
    .goto 1411,43.45,67.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zureetha|r
    .turnin 25132 >>Turn in Burning Blade Medallion
    .accept 25133 >>Accept Report to Sen'jin Village << Orc
    .target Zureetha Fargaze
step
    .goto 1411,43.53,67.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 25135 >>Turn in Thazz'ril's Pick
    .target Foreman Thazz'ril

    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Darkspear Isle
#next 6-10 Durotar
#version 1
--#group RXP Cataclysm (H)
#defaultfor Troll
#group RXP Cataclysm 1-80 (H)
#subweight 10000

step << !Troll
    #completewith next
    +|cRXP_WARN_You have selected a guide meant for Trolls. You should choose the same starter zone that you start in|r
step
    .goto 1411,62.45,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'thala|r
	.accept 24770 >> Accept The Rise of the Darkspear << Rogue
	.accept 24607 >> Accept The Rise of the Darkspear << Warrior
	.accept 24750 >> Accept The Rise of the Darkspear << Mage
	.accept 24758 >> Accept The Rise of the Darkspear << Shaman
	.accept 24764 >> Accept The Rise of the Darkspear << Druid
	.accept 24776 >> Accept The Rise of the Darkspear << Hunter
	.accept 24782 >> Accept The Rise of the Darkspear << Priest
	.accept 26272 >> Accept The Rise of the Darkspear << Warlock
    .target Jin'thala
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24770 >> Turn in The Rise of the Darkspear
    .accept 24771 >> Accept The Basics: Hitting Things
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 24607 >> Turn in The Rise of the Darkspear
    .accept 24639 >> Accept The Basics: Hitting Things
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24750 >> Turn in The Rise of the Darkspear
    .accept 24751 >> Accept The Basics: Hitting Things
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24758 >> Turn in The Rise of the Darkspear
    .accept 24759 >> Accept The Basics: Hitting Things
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24764 >> Turn in The Rise of the Darkspear
    .accept 24751 >> Accept The Basics: Hitting Things
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24776 >> Turn in The Rise of the Darkspear
    .accept 24777 >> Accept The Basics: Hitting Things
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24782 >> Turn in The Rise of the Darkspear
    .accept 24783 >> Accept The Basics: Hitting Things
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26272 >> Turn in The Rise of the Darkspear
    .accept 26273 >> Accept The Basics: Hitting Things
    .target Voldreka
step
    .goto 1411,66.912,83.481 << Hunter
    .goto 1411,67.907,84.600 << Druid
    .goto 1411,68.617,84.307 << Mage
    .goto 1411,67.825,82.582 << Priest
    .goto 1411,65.927,83.015 << Rogue
    .goto 1411,65.069,82.878 << Warlock
    .goto 1411,64.732,84.031 << Shaman
    .goto 1411,65.931,84.338 << Warrior
 	>>Kill |cRXP_ENEMY_Tiki Targets|r
	.complete 24771,1 << Rogue --Kill Tiki Target (x6)
	.complete 24639,1 << Warrior --Kill Tiki Target (x6)
	.complete 24751,1 << Mage --Kill Tiki Target (x6)
	.complete 24759,1 << Shaman --Kill Tiki Target (x6)
	.complete 24751,1 << Druid --Kill Tiki Target (x6)
	.complete 24777,1 << Hunter --Kill Tiki Target (x6)
	.complete 24783,1 << Priest --Kill Tiki Target (x6)
	.complete 26273,1 << Warlock --Kill Tiki Target (x6)
	.mob Tiki Target
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24771 >> Turn in The Basics: Hitting Things
    .accept 24773 >> Accept A Rough Start
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 24639 >> Turn in The Basics: Hitting Things
    .accept 211 >> Accept A Rough Start
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24751 >> Turn in The Basics: Hitting Things
    .accept 24753 >> Accept A Rough Start
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24759 >> Turn in The Basics: Hitting Things
    .accept 24761 >> Accept A Rough Start
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24765 >> Turn in The Basics: Hitting Things
    .accept 24767 >> Accept A Rough Start
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24777 >> Turn in The Basics: Hitting Things
    .accept 24779 >> Accept A Rough Start
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24783 >> Turn in The Basics: Hitting Things
    .accept 24785 >> Accept A Rough Start
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26273 >> Turn in The Basics: Hitting Things
    .accept 26275 >> Accept A Rough Start
    .target Voldreka
step << Rogue
    #loop
    .goto 1411,65.51,80.26,0
    .goto 1411,64.49,80.21,0
    .goto 1411,65.51,80.26,40,0
    .goto 1411,65.08,79.72,40,0
    .goto 1411,64.49,80.21,40,0
    .goto 1411,64.78,81.23,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their |cRXP_LOOT_Pelts|r
	.complete 24773,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Warrior
    #loop
    .goto 1411,64.71,86.19,0
    .goto 1411,66.60,87.54,0
    .goto 1411,64.71,86.19,40,0
    .goto 1411,65.45,86.86,40,0
    .goto 1411,65.38,87.62,40,0
    .goto 1411,66.60,87.54,40,0
    .goto 1411,66.86,86.75,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their |cRXP_LOOT_Pelts|r
	.complete 24639,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Mage
    #loop
    .goto 1411,69.46,86.13,0
    .goto 1411,69.35,82.48,0
    .goto 1411,69.46,86.13,40,0
    .goto 1411,69.45,85.51,40,0
    .goto 1411,69.35,83.72,40,0
    .goto 1411,69.35,82.48,40,0
    .goto 1411,69.25,81.02,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their |cRXP_LOOT_Pelts|r
	.complete 24753,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Shaman
    #loop
    .goto 1411,63.99,83.54,0
    .goto 1411,64.99,79.80,0
    .goto 1411,63.99,83.54,40,0
    .goto 1411,64.73,81.40,40,0
    .goto 1411,64.52,80.28,40,0
    .goto 1411,64.99,79.80,40,0
    .goto 1411,65.55,80.36,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their |cRXP_LOOT_Pelts|r
	.complete 24761,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Druid
    #loop
    .goto 1411,69.46,86.13,0
    .goto 1411,69.35,82.48,0
    .goto 1411,69.46,86.13,40,0
    .goto 1411,69.45,85.51,40,0
    .goto 1411,69.35,83.72,40,0
    .goto 1411,69.35,82.48,40,0
    .goto 1411,69.25,81.02,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their |cRXP_LOOT_Pelts|r
	.complete 24767,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Hunter
    #loop
    .goto 1411,67.19,81.74,0
    .goto 1411,68.81,80.40,0
    .goto 1411,67.19,81.74,40,0
    .goto 1411,66.11,80.56,40,0
    .goto 1411,66.33,80.15,40,0
    .goto 1411,67.11,79.64,40,0
    .goto 1411,68.13,79.69,40,0
    .goto 1411,68.81,80.40,40,0
    .goto 1411,69.02,81.08,40,0
    .goto 1411,68.47,81.43,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their |cRXP_LOOT_Pelts|r
	.complete 24779,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Priest
    #loop
    .goto 1411,67.19,81.74,0
    .goto 1411,69.02,81.08,0
    .goto 1411,67.19,81.74,40,0
    .goto 1411,66.11,80.56,40,0
    .goto 1411,66.33,80.15,40,0
    .goto 1411,67.11,79.64,40,0
    .goto 1411,68.13,79.69,40,0
    .goto 1411,68.81,80.40,40,0
    .goto 1411,69.02,81.08,40,0
    .goto 1411,68.47,81.43,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their |cRXP_LOOT_Pelts|r
	.complete 24785,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Warlock
    #loop
    .goto 1411,65.51,80.26,0
    .goto 1411,64.78,81.23,0
    .goto 1411,65.51,80.26,40,0
    .goto 1411,65.08,79.72,40,0
    .goto 1411,64.49,80.21,40,0
    .goto 1411,64.78,81.23,40,0
    >>Kill |cRXP_ENEMY_Wildmane Cats|r. Loot them for their |cRXP_LOOT_Pelts|r
	.complete 26275,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24773 >> Turn in A Rough Start
    .accept 24774 >> Accept Proving Pit
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 211 >> Turn in A Rough Start
    .accept 212 >> Accept Proving Pit
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24753 >> Turn in A Rough Start
    .accept 24754 >> Accept Proving Pit
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24761 >> Turn in A Rough Start
    .accept 24762 >> Accept Proving Pit
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24767 >> Turn in A Rough Start
    .accept 24768 >> Accept Proving Pit
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24779 >> Turn in A Rough Start
    .accept 24780 >> Accept Proving Pit
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24785 >> Turn in A Rough Start
    .accept 24786 >> Accept Proving Pit
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26275 >> Turn in A Rough Start
    .accept 26276 >> Accept Proving Pit
    .target Voldreka
step << Rogue
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Jailor|r
	.complete 24774,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Warrior
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 212,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Mage
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r
	.complete 24754,1 << Mage --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Shaman
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r
    .complete 24762,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Druid
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r
	.complete 24768,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Hunter
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r
	.complete 24780,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Priest
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r
	.complete 24786,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Warlock
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darkspear Jailor|r
	.complete 26276,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Rogue
    .goto 1411,65.29,83.74
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r
	.complete 24774,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Warrior
    .goto 1411,65.29,83.74
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r
	.complete 212,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Mage
    .goto 1411,67.37,83.94
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r
	.complete 24754,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Shaman
    .goto 1411,65.29,83.74
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r
	.complete 24762,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Druid
    .goto 1411,67.37,83.94
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r
	.complete 24768,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Hunter
    .goto 1411,67.37,83.94
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r
	.complete 24780,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Priest
    .goto 1411,67.37,83.94
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r
	.complete 24786,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Warlock
    .goto 1411,65.29,83.74
    >>Kill the |cRXP_ENEMY_Captive Spitescale Scout|r
	.complete 26276,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24774 >>Turn in Proving Pit
    .accept 24772 >>Accept The Arts of a Rogue
    .train 2098 >> Train |T132292:0|t[Eviscerate]
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 212 >>Turn in Proving Pit
    .accept 210 >>Accept The Arts of a Warrior
    .train 100 >> |T132337:0|t[Charge]
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24754 >>Turn in Proving Pit
    .accept 24752 >>Accept The Arts of a Mage
    .train 5143 >>Train |T136096:0|t[Arcane Missiles]
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24762 >>Turn in Proving Pit
    .accept 24760 >>Accept The Arts of a Shaman
    .train 73899 >>Train |T460956:0|t[Primal Strike]
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24768 >>Turn in Proving Pit
    .accept 24766 >>Accept The Arts of a Druid
    .train 774 >>Train |T136081:0|t[Rejuvenation]
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24780 >>Turn in Proving Pit
    .accept 24778 >>Accept The Arts of a Hunter
    .train 56641 >>Train |T132213:0|t[Steady Shot]
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24786 >>Turn in Proving Pit
    .accept 24784 >>Accept The Arts of a Priest
    .train 2061 >>Train |T135907:0|t[Flash Heal]
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26276 >>Turn in Proving Pit
    .accept 26274 >>Accept The Arts of a Warlock
    .train 348 >>Train |T135817:0|t[Immolate]
    .target Voldreka
step << Rogue
	.goto 1411,65.91,83.45
	>>Cast |T132292:0|t[Eviscerate] on a |cRXP_ENEMY_Tiki Target|r
	.complete 24772,1 --Cast Eviscerate (x3)
	.mob Tiki Target
step << Warrior
	.goto 1411,65.98,84.42
	>>Cast |T132337:0|t[Charge] on a |cRXP_ENEMY_Tiki Target|r
	.complete 210,1 --Cast Charge (x3)
	.mob Tiki Target
step << Mage
	.goto 1411,68.91,84.31
	>>Cast |T136096:0|t[Arcane Missiles] on a |cRXP_ENEMY_Tiki Target|r
	.complete 24752,1 --Cast Arcane Missiles (x3)
	.mob Tiki Target
step << Shaman
	.goto 1411,64.86,84.69
	>>Cast |T460956:0|t[Primal Strike] on a |cRXP_ENEMY_Tiki Target|r
	.complete 24760,1 --Cast Primal Strike (x3)
	.mob Tiki Target
step << Druid
	.goto 1411,67.91,84.60
	>>Cast |T136081:0|t[Rejuvenation] on a |cRXP_FRIENDLY_Wounded Darkspear Watcher|r
	.complete 24766,1 --Cast Rejuvenation (x1)
	.target Wounded Darkspear Watcher
step << Hunter
	.goto 1411,67.18,83.12
	>>Cast |T132213:0|t[Steady Shot] on a |cRXP_ENEMY_Tiki Target|r
	.complete 24778,1 --Steady Shot (x3)
	.mob Tiki Target
step << Priest
	.goto 1411,67.35,83.24
	>>Cast |T135907:0|t[Flash Heal] on a |cRXP_FRIENDLY_Wounded Darkspear Watcher|r
	.complete 24784,1 --Cast Flash Heal (x5)
	.target Wounded Darkspear Watcher
step << Warlock
	.goto 1411,65.07,82.88
	>>Cast |T135817:0|t[Immolate] on a |cRXP_ENEMY_Tiki Target|r
	.complete 26274,1 --Cast Immolate (x3)
	.mob Tiki Target
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Legati|r
    .turnin 24772 >>Turn in The Arts of a Rogue
    .accept 24775 >>Accept More Than Expected
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nortet|r
    .turnin 211 >>Turn in The Arts of a Warrior
    .accept 212 >>Accept More Than Expected
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soratha|r
    .turnin 24752 >>Turn in The Arts of a Mage
    .accept 24755 >>Accept More Than Expected
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nekali|r
    .turnin 24760 >>Turn in The Arts of a Shaman
    .accept 24763 >>Accept More Than Expected
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24766 >>Turn in The Arts of a Druid
    .accept 24769 >>Accept More Than Expected
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ortezza|r
    .turnin 24778 >>Turn in The Arts of a Hunter
    .accept 24781 >>Accept More Than Expected
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tunari|r
    .turnin 24784 >>Turn in The Arts of a Priest
    .accept 24787 >>Accept More Than Expected
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Voldreka|r
    .turnin 26274 >>Turn in The Arts of a Warlock
    .accept 26277 >>Accept More Than Expected
    .target Voldreka
step
    .goto 1411,68.86,88.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 213 >>Turn in More Than Expected << Warrior
    .turnin 24755 >>Turn in More Than Expected << Mage
    .turnin 24763 >>Turn in More Than Expected << Shaman
    .turnin 24769 >>Turn in More Than Expected << Druid
    .turnin 24775 >>Turn in More Than Expected << Rogue
    .turnin 24781 >>Turn in More Than Expected << Hunter
    .turnin 24787 >>Turn in More Than Expected << Priest
    .turnin 26277 >>Turn in More Than Expected << Warlock
    .accept 25064 >>Accept Moraya
    .target Vol'Jin
step
    .goto 1411,68.50,87.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora'Jin|r
    .accept 25037 >> Accept Crab Fishin'
    .target Tora'Jin
step
    .goto 1411,67.26,87.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r
    .turnin 25064 >> Turn in Moraya
    .accept 24622 >> Accept A Troll's Truest Companion
    .target Moraya
step
    #label CrossBridge
    #completewith Kijara
    .goto 1411,66.09,89.14,40,0
    .goto 1411,64.94,89.02,40,0
    .goto 1411,63.42,93.50,40 >> Cross the Bridge
step
    #require CrossBridge
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r. Loot them for their |cRXP_LOOT_Meat|r
    .complete 25037,1 --Collect Fresh Crawler Meat (x5)
    .mob Pygmy Surf Crawler
step
    #label Kijara
    .goto 1411,63.20,95.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kijara|r
    .turnin 24622 >>Turn in A Troll's Truest Companion
    .accept 24623 >>Accept Saving the Young
    .target Kijara
step
    .goto 1411,63.44,95.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tegashi|r
    .accept 24625 >>Accept Consort of the Sea Witch
    .accept 24624 >>Accept Mercy for the Lost
    .target Tegashi
step
    #completewith Bloodtalons
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r. Loot them for their |cRXP_LOOT_Meat|r
    .complete 25037,1 --Collect Fresh Crawler Meat (x5)
    .mob Pygmy Surf Crawler
step
	#completewith Bloodtalons
	.goto 1411,61.32,91.76,40,0
	>>Use your |T132161:0|t[|cRXP_LOOT_Bloodtalon Whistle|r] when you are near |cRXP_FRIENDLY_Lost Bloodtalon Hatchling|r to rescue them
	.complete 24623,1 --Rescue Bloodtalon Hatchling (x12)
	.target Bloodtalon Hatchling
	.use 52283
step
    #completewith next
   	.goto 1411,60.89,91.69,40,0
	>>Kill |cRXP_ENEMY_Corrupted Bloodtalon|r
	.complete 24624,1 --Kill Corrupted Bloodtalon (x8)
	.mob Corrupted Bloodtalon
step
   	.goto 1411,60.39,89.79
	>>Kill |cRXP_ENEMY_Naj'Tess|r. Loot loot him for his |cRXP_LOOT_Orb|r
	.complete 24625,1 --Collect Naj'Tess' Orb of Corruption (x1)
	.mob Naj'Tess
step
	#label Bloodtalons
#loop
	.line 1411,61.70,91.31,61.58,90.08,61.54,89.48,60.93,88.45,60.78,87.63,59.66,87.65,59.46,88.82,59.13,89.94,58.60,90.66,59.46,90.85,60.21,91.14,60.91,91.69,61.70,91
	.goto 1411,61.70,91.31,30,0
	.goto 1411,61.58,90.08,30,0
	.goto 1411,61.54,89.48,30,0
	.goto 1411,60.93,88.45,30,0
	.goto 1411,60.78,87.63,30,0
	.goto 1411,59.66,87.65,30,0
	.goto 1411,59.46,88.82,30,0
	.goto 1411,59.13,89.94,30,0
	.goto 1411,58.60,90.66,30,0
	.goto 1411,59.46,90.85,30,0
	.goto 1411,60.21,91.14,30,0
	.goto 1411,60.91,91.69,30,0
	.goto 1411,61.70,91.00,30,0
	>>Kill |cRXP_ENEMY_Corrupted Bloodtalon|r
	.complete 24624,1 --Kill Corrupted Bloodtalon (x8)
	.mob Corrupted Bloodtalon
step
#loop
	.line 1411,61.70,91.31,61.58,90.08,61.54,89.48,60.93,88.45,60.78,87.63,59.66,87.65,59.46,88.82,59.13,89.94,58.60,90.66,59.46,90.85,60.21,91.14,60.91,91.69,61.70,91
	.goto 1411,61.70,91.31,30,0
	.goto 1411,61.58,90.08,30,0
	.goto 1411,61.54,89.48,30,0
	.goto 1411,60.93,88.45,30,0
	.goto 1411,60.78,87.63,30,0
	.goto 1411,59.66,87.65,30,0
	.goto 1411,59.46,88.82,30,0
	.goto 1411,59.13,89.94,30,0
	.goto 1411,58.60,90.66,30,0
	.goto 1411,59.46,90.85,30,0
	.goto 1411,60.21,91.14,30,0
	.goto 1411,60.91,91.69,30,0
	.goto 1411,61.70,91.00,30,0
	>>Use your |T132161:0|t[|cRXP_LOOT_Bloodtalon Whistle|r] when you are near |cRXP_FRIENDLY_Lost Bloodtalon Hatchling|r to rescue them
	.complete 24623,1 --Rescue Bloodtalon Hatchling (x12)
	.target Bloodtalon Hatchling
	.use 52283
step
	#completewith next
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r. Loot them for their |cRXP_LOOT_Meat|r
    .complete 25037,1 --Collect Fresh Crawler Meat (x5)
    .mob Pygmy Surf Crawler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tegashi|r and |cRXP_FRIENDLY_Kijara|r
    .turnin 24625 >>Turn in Consort of the Sea Witch
    .turnin 24624 >>Turn in Mercy for the Lost
    .goto 1411,63.44,95.23
    .turnin 24623 >>Turn in Saving the Young
    .accept 24626 >>Accept Young and Vicious
    .goto 1411,63.20,95.52
    .target Tegashi
    .target Kijara
step
    #loop
	.line 463,45.93,86.53,46.15,88.00,43.81,88.49,43.46,91.82,44.25,91.93,45.27,89.85,45.95,89.71,46.91,93.18,47.68,92.85,47.84,88.58,48.45,90.12,47.51,88.96,47.42,86.91,46.21,85.10,46.03,83.83,44.17,82.86,42.43,83.12,41.15,85.98,40.87,88.56,42.30,88.10,43.60,85.27,44.56,85.10,45.93,86.53
    .goto 463,45.93,86.53,30,0
    .goto 463,44.56,85.10,30,0
    .goto 463,43.60,85.27,30,0
    .goto 463,42.30,88.10,30,0
    .goto 463,40.87,88.56,30,0
    .goto 463,41.15,85.98,30,0
    .goto 463,42.43,83.12,30,0
    .goto 463,44.17,82.86,30,0
    .goto 463,46.03,83.83,30,0
    .goto 463,46.21,85.10,30,0
    .goto 463,47.42,86.91,30,0
    .goto 463,47.51,88.96,30,0
    .goto 463,48.45,90.12,30,0
    .goto 463,47.84,88.58,30,0
    .goto 463,47.68,92.85,30,0
    .goto 463,46.91,93.18,30,0
    .goto 463,45.95,89.71,30,0
    .goto 463,45.27,89.85,30,0
    .goto 463,44.25,91.93,30,0
    .goto 463,43.46,91.82,30,0
    .goto 463,43.81,88.49,30,0
    .goto 463,46.15,88.00,30,0
    >>Use the |T134326:0|t[Bloodtalon Lasso] on |cRXP_FRIENDLY_Swiftclaw|r
    >>|cRXP_WARN_He spawns next to you and then runs counter-clockwise around the island|r
    .complete 24626,1 --1/1 Capture Swiftclaw
    .unitscan Swiftclaw
    .use 50053
step
    .goto 1411,63.40,93.52,40,0
    .goto 1411,64.81,89.25,40,0
    .goto 1411,65.80,88.52
    >>Ride |cRXP_FRIENDLY_Swiftclaw|r back to the Raptor Pen
    .complete 24626,2 --1/1 Return Swiftclaw to the Raptor Pens
step
    .goto 1411,66.65,90.61
    .goto 1411,66.67,91.36
    .goto 1411,67.72,91.16
    .goto 1411,68.07,90.26
    .goto 1411,67.59,90.40
    >>Kill |cRXP_ENEMY_Pygmy Surf Crawlers|r. Loot them for their |cRXP_LOOT_Meat|r
    .complete 25037,1 --Collect Fresh Crawler Meat (x5)
    .mob Pygmy Surf Crawler
step
    .goto 1411,67.24,87.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moraya|r
    .turnin 24626 >>Turn in Young and Vicious
    .target Moraya
step
    .goto 1411,68.50,87.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tora'jin|r
    .turnin 25037 >>Turn in Crab Fishin'
    .target Tora'Jin
step << Troll
    .goto 1411,67.98,89.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tortunga|r
    .accept 25035 >>Accept Breaking the Line
    .target Tortunga << Troll
step << Troll
    .goto 1411,68.02,89.06
    .gossipoption 112038 >> Talk to |cRXP_FRIENDLY_Jornun|r
    .timer 39,Breaking the Line RP
    .target Jornun
    .isOnQuest 25035
step << Troll
    .goto 1411,67.96,74.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r
    .turnin 25035 >>Turn in Breaking the Line
    .accept 24812 >>Accept No More Mercy
    .accept 24813 >>Accept Territorial Fetish
    .target Morakki
step << Troll
    #completewith next
    >>Kill |cRXP_ENEMY_Spitescale Nagas|r
    .complete 24812,1 --12/12 Spitescale Naga Slain
    .mob Spitescale Wavethrasher
    .mob Spitescale Siren
step << Troll
    #loop
    .goto 1411,69.043,71.780,0
    .goto 1411,68.748,72.676,12,0
    .goto 1411,69.043,71.780,12,0
    .goto 1411,69.219,70.538,12,0
    .goto 1411,68.692,70.474,12,0
    .goto 1411,69.288,69.600,12,0
    .goto 1411,68.760,69.642,12,0
    .goto 1411,68.363,70.769,12,0
    .use 52065>>Use the |T132482:0|t[Territorial Fetish] next to |cRXP_PICK_Spitescale Flags|r
    .complete 24813,1 --8/8 Territorial Fetish placed
step << Troll
    #loop
    .goto 1411,69.043,71.780,0
    .goto 1411,68.748,72.676,12,0
    .goto 1411,69.043,71.780,12,0
    .goto 1411,69.219,70.538,12,0
    .goto 1411,68.692,70.474,12,0
    .goto 1411,69.288,69.600,12,0
    .goto 1411,68.760,69.642,12,0
    .goto 1411,68.363,70.769,12,0
    >>Kill |cRXP_ENEMY_Spitescale Nagas|r
    >>|cfff78300Don't jump down|r
    .complete 24812,1 --12/12 Spitescale Naga Slain
    .mob Spitescale Wavethrasher
    .mob Spitescale Siren
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r
    .goto 1411,67.96,74.08
    .turnin 24812 >>Turn in No More Mercy
    .turnin 24813 >>Turn in Territorial Fetish
    .accept 24814 >>Accept An Ancient Enemy
    .target Morakki
step << Troll
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morakki|r
    .goto 1411,67.96,74.08
    .turnin 24812 >>Turn in No More Mercy
    .turnin 24813 >>Turn in Territorial Fetish
    .target Morakki
step << skip
    .goto 1411,68.60,74.87,10,0
    .goto 1411,69.12,73.99,10,0
    .goto 1411,69.09,72.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin|r to start the event
    .complete 24814,1 --Speak with Vol'jin at Spitescale Cove (1)
    .skipgossip
    .target Vol'jin
step << skip
    .goto 1411,68.47,71.44
    >>Focus on killing the adds, let |cRXP_FRIENDLY_Vanira|r and |cRXP_FRIENDLY_Vol'jin|r kill |cRXP_ENEMY_Zar'jira|r
    .complete 24814,2 --Zar'jira slain (1)
    .mob Zar'jira
    .isQuestTurnedIn 25035
step << skip
    .goto 1411,69.13,72.32
    .gossipoption 37251 >> Talk to |cRXP_FRIENDLY_Vanira|r to go back to Darkspear Hold
    .target Vanira
    .isOnQuest 24814
    --VV Add timer in case it's not an instant teleport
step << skip
    .goto 1411,68.86,88.69
    -->>|cRXP_WARN_Wait out the RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 24814 >>Turn in An Ancient Enemy
    .accept 25073 >>Accept Sen'jin Village
    .isQuestTurnedIn 25035
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Durotar
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H)
#defaultfor Orc/Troll
#group RXP Cataclysm 1-80 (H)
#subweight 10000

step << skip
    #completewith BreakingtheChain
    .goto 1411,67.21,86.10,40,0
    .goto 1411,63.67,82.61,40,0
    .goto 1411,60.48,81.45,40,0
    .goto 1411,60.09,79.68,40,0
    .subzone 367 >> Travel to Sen'Jin Village
step << Troll
    #completewith BreakingtheChain
    .goto 1411,64.10,74.25,40,0
    .subzone 367 >> Travel to Sen'Jin Village
step << Orc
    #completewith BreakingtheChain
    .goto 1411,48.47,67.93,40,0
    .goto 1411,50.44,68.39,40,0
    .subzone 367 >> Travel to Sen'Jin Village
step
    #optional << Troll
    .goto 1411,55.95,74.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gadrin|r
    .turnin 25073 >>Turn in Sen'jin Village << Troll
    .turnin 25133 >>Turn in Report to Sen'jin Village << Orc
    .accept 25167 >>Accept Breaking the Chain
    .target Master Gadrin
    .isQuestTurnedIn 24814 << Troll
step << Troll
    #label BreakingtheChain
    .goto 1411,55.95,74.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gadrin|r
    .accept 25167 >>Accept Breaking the Chain
    .target Master Gadrin
step << Shaman
    .goto 1411,56.27,75.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cona|r
    .train 8042 >> Train your class spells
    .target Cona
step << Druid
    .goto 1411,56.18,75.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Den'chulu|r
    .train 8921 >> Train your class spells
    .target Den'chulu
step << Hunter
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai'zan|r
    .train 2973 >> Train your class spells
    .target Hai'zan
    .xp <6,1
step
    #completewith next
    .goto 1411,56.13,74.53,10,0
    .goto 1411,56.30,73.89,10 >> Go inside the big hut
step << Mage/Priest/Warlock/Druid
    #completewith next
    .goto 1411,56.41,73.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'tasi|r
    .vendor >> Vendor trash
    .target Tai'tasi
step << Warrior
    .goto 1411,56.70,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeniss|r
    .train 34428 >> Train your class spells
    .target Yeniss
step << Warrior/Shaman/Paladin
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,25168,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,25168,1 --Collect Gladius (1)
    .target Trayexir
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,25168,1 --Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0270
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior/Shaman/Paladin
    #completewith Bombay
    +Equip the |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    #completewith Bombay
    +Equip the |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith Bombay
    +Equip the |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Buy a|r |T132401:0|t[Large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,25168,1 --Large Axe (1)
    .money <0.0459
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    #completewith Bombay
    +Equip the |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Mage/Priest/Warlock
    #completewith next
    .goto 1411,56.59,73.25,10,0
    .goto 1411,56.50,72.90,10,0
    .goto 1411,56.33,73.28,10 >> Go upstairs
step << Mage
    .goto 1411,56.37,73.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bomsanchu|r upstairs
    .train 2136 >> Train your class spells
    .target Bomsanchu
step << Priest
    .goto 1411,56.41,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parata|r upstairs
    .train 589 >> Train your class spells
    .target Parata
step << Warlock
    .goto 1411,56.31,73.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gusini|r upstairs
    .train 87389 >> Train your class spells
    .target Gusini
step << Mage/Priest/Warlock
    #completewith next
    .goto 1411,55.71,75.28,10 >> Jump down toward |cRXP_FRIENDLY_Bom'bay|r
step
    #label Bombay
    .goto 1411,55.71,75.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bom'bay|r
    .accept 25170 >>Accept Cleaning Up the Coastline
    .target Bom'bay
step
    #completewith next
    .goto 1411,56.45,78.44,40,0
    .goto 1411,53.52,82.09,40,0
    .goto 1411,52.63,83.01,40,0
    >>Kill |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    .complete 25170,1 --Collect Crawler Mucus (5)
    .mob Surf Crawler
step
    #loop
    .goto 1411,52.32,81.53,0
    .goto 1411,51.14,79.19,0
    .goto 1411,49.67,79.64,0
    .goto 1411,52.32,81.53,30,0
    .goto 1411,51.14,79.19,20,0
    .goto 1411,49.67,79.64,30,0
    >>Kill |cRXP_ENEMY_Northwatch Supply Crates|r and |cRXP_ENEMY_Northwatch Lugs|r
    >>|cRXP_WARN_You may have to wait for more to respawn|r
    .complete 25167,1 --Northwatch Supply Crates destroyed (3)
    .complete 25167,2 --Northwatch Lug (10)
    .mob Northwatch Lug
    .mob Northwatch Supply Crate
step
    #loop
    .goto 1411,55.68,78.92,0
    .goto 1411,53.52,82.09,0
    .waypoint 1411,56.59,79.22,40,0
    .waypoint 1411,55.68,78.92,40,0
    .waypoint 1411,55.74,79.45,40,0
    .waypoint 1411,55.79,80.54,40,0
    .waypoint 1411,55.15,80.25,40,0
    .waypoint 1411,54.67,80.47,40,0
    .waypoint 1411,54.48,81.37,40,0
    .waypoint 1411,53.52,82.09,40,0
    .waypoint 1411,52.63,83.01,40,0
    .waypoint 1411,56.45,78.44,40,0
    >>Kill |cRXP_ENEMY_Surf Crawlers|r. Loot them for their |cRXP_LOOT_Mucus|r
    .complete 25170,1 --Collect Crawler Mucus (5)
    .mob Surf Crawler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bom'bay|r, |cRXP_FRIENDLY_Gadrin|r and |cRXP_FRIENDLY_Lar|r
    .turnin 25170 >>Turn in Cleaning Up the Coastline
    .accept 25165 >>Accept Never Trust a Big Barb and a Smile
    .goto 1411,55.78,75.36
    .turnin 25167 >>Turn in Breaking the Chain
    .accept 25168 >>Accept Purge the Valley
    .goto 1411,55.91,74.72
    .accept 25169 >>Accept The War of Northwatch Aggression
    .goto 1411,55.47,75.06
    .target Bom'bay
    .target Master Gadrin
    .target Lar Prowltusk
step << Shaman
    .goto 1411,56.27,75.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cona|r
    .train 8042 >> Train your class spells
    .target Cona
step << Druid
    .goto 1411,56.18,75.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Den'chulu|r
    .train 8921 >> Train your class spells
    .target Den'chulu
step << Hunter
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai'zan|r
    .train 2973 >> Train your class spells
    .target Hai'zan
    .xp <6,1
step << Warrior
    .goto 1411,56.70,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeniss|r
    .train 34428 >> Train your class spells
    .target Yeniss
step << Warrior/Shaman/Paladin
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,25168,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Buy a|r |T135321:0|t[Gladius] |cRXP_BUY_from him|r
    .collect 2488,1,25168,1 --Collect Gladius (1)
    .target Trayexir
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Buy a|r |T135499:0|t[Hornwood Recurve Bow] |cRXP_BUY_from him|r
    .collect 2506,1,25168,1 --Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0270
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior/Shaman/Paladin
    #completewith AttackPlans
    +Equip the |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    #completewith AttackPlans
    +Equip the |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith AttackPlans
    +Equip the |T135499:0|t[Hornwood Recurve Bow]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Buy a|r |T132401:0|t[Large Axe] |cRXP_BUY_from him|r
    .collect 2491,1,25168,1 --Large Axe (1)
    .money <0.0459
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    #completewith AttackPlans
    +Equip the |T132401:0|t[Large Axe]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Mage
    .goto 1411,56.37,73.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bomsanchu|r upstairs
    .train 2136 >> Train your class spells
    .target Bomsanchu
step << Priest
    .goto 1411,56.41,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parata|r upstairs
    .train 589 >> Train your class spells
    .target Parata
step << Warlock
    .goto 1411,56.31,73.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gusini|r upstairs
    .train 87389 >> Train your class spells
    .target Gusini
step
    #loop
    .goto 1411,52.72,75.35,0
    .waypoint 1411,54.15,74.77,40,0
    .waypoint 1411,53.15,76.15,40,0
    .waypoint 1411,52.72,75.35,40,0
    .waypoint 1411,52.27,74.29,40,0
    .waypoint 1411,51.60,73.68,40,0
    .waypoint 1411,51.40,74.88,40,0
    >>Attack |cRXP_ENEMY_Clattering Scorpids|r
    >>|cRXP_WARN_Use the|r |T136061:0|t[Poison Extraction Totem] |cRXP_WARN_when|r |cRXP_ENEMY_Clattering Scorpids|r |cRXP_WARN_cast|r |T132287:0|t[Envenom]
    >>|cRXP_WARN_This has a 15 second cooldown. Pull multiple|r |cRXP_ENEMY_Clattering Scorpids|r |cRXP_WARN_simultaneously time to expedite the process|r
    .complete 25165,1 --Sample of Scorpid Venom Collected (6)
    .mob Clattering Scorpid
    .use 52505
step
    #completewith AttackPlans
    .goto 1411,50.83,79.13,15,0
    >>Kill |cRXP_ENEMY_Northwatch Infantryman|r and |cRXP_ENEMY_Northwatch Rangers|r
    .complete 25168,1 --Northwatch Troop (12)
    .mob Northwatch Infantryman
    .mob Northwatch Ranger
step
    >>Destroy the |cRXP_PICK_Attack Plans|r on the ground
    .goto 1411,49.82,81.43
    .complete 25169,1 --Attack Plan: Valley of Trials burned (1)
step
    >>Destroy the |cRXP_PICK_Attack Plans|r on the ground
    .goto 1411,47.91,77.56
    .complete 25169,2 --Attack Plan: Sen'jin Village burned (1)
step
    #label AttackPlans
    .goto 1411,46.42,78.77
    >>Destroy the |cRXP_PICK_Attack Plans|r on the ground
    .complete 25169,3 --Attack Plan: Orgrimmar burned (1)
step
    #loop
    .goto 1411,48.36,79.40,0
    .goto 1411,46.63,79.76,40,0
    .goto 1411,47.27,80.88,40,0
    .goto 1411,47.84,79.84,40,0
    .goto 1411,47.79,77.95,40,0
    .goto 1411,49.03,79.33,40,0
    .goto 1411,49.89,79.04,40,0
    .goto 1411,49.97,80.86,40,0
    .goto 1411,48.36,79.40,40,0
    >>Kill |cRXP_ENEMY_Northwatch Infantryman|r and |cRXP_ENEMY_Northwatch Rangers|r
    .complete 25168,1 --Northwatch Troop (12)
    .mob Northwatch Infantryman
    .mob Northwatch Ranger
step
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    --VV Beta test needed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bom'bay|r, |cRXP_FRIENDLY_Lar|r and |cRXP_FRIENDLY_Master Gadrin|r
    .turnin 25165 >>Turn in Never Trust a Big Barb and a Smile
    .goto 1411,55.74,75.42
    .turnin 25169 >>Turn in The War of Northwatch Aggression
    .goto 1411,55.42,75.11
    .turnin 25168 >>Turn in Purge the Valley
    .accept 25171 >>Accept Riding On
    .goto 1411,55.91,74.78
    .target Bom'bay
    .target Lar Prowltusk
    .target Master Gadrin
step
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vendor Trash and Repair
    .target Trayexir
step << Rogue
    .goto 1411,56.05,73.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Munalti|r
    .train 15087 >> Train your class spells
    .target Munalti
    .xp <8,1
step << Shaman
    .goto 1411,56.27,75.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cona|r
    .train 324 >> Train your class spells
    .target Cona
    .xp <8,1
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Den'chulu|r
    .goto 1411,56.18,75.24
    .train 768 >> Train your class spells
    .target Den'chulu
    .xp <8,1
step << Hunter
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai'zan|r
    .train 2973 >> Train your class spells
    .target Hai'zan
    .xp <6,1
    .xp >8,1
step << Hunterw
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai'zan|r
    .train 5116 >> Train your class spells
    .target Hai'zan
    .xp <8,1
step << Warrior
    .goto 1411,56.70,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeniss|r
    .train 772 >> Train your class spells
    .target Yeniss
    .xp <7,1
step << Mage
    .goto 1411,56.37,73.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bomsanchu|r upstairs
    .train 96089 >> Train your class spells
    .target Bomsanchu
    .xp <7,1
step << Priest
    .goto 1411,56.41,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parata|r upstairs
    .train 588 >> Train your class spells
    .target Parata
    .xp <8,1
step << Warlock
    .goto 1411,56.31,73.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gusini|r upstairs
    .train 687 >> Train your class spells
    .target Gusini
    .xp <8,1
step
    .goto 1411,55.26,74.66
    .gossipoption 112084 >> Talk to |cRXP_FRIENDLY_Jhash|r
    >>|cRXP_WARN_Take the ride to Razor Hill|r
    .timer 67, Riding on RP
    .target Raider Jhash
    .isOnQuest 25171
step
    .goto 1411,51.51,41.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grosk|r
    .home >> Set your Hearthstone to Razor Hill
    .target Innkeeper Grosk
    .isQuestAvailable 2517
step
    .goto 1411,52.04,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'Thok|r on the top floor
    .turnin 25171 >>Turn in Riding On
    .accept 25173 >>Accept From Bad to Worse
    .target Gar'Thok
step
    .goto 1411,53.03,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gail|r
    .accept 25176 >>Accept Exploiting the Situation
    .target Gail Nozzywig
step
    #label TravelToTiragarde
    #completewith Palliter
    .subzone 372>> Travel to Tiragarde Keep
step
    #completewith Palliter
    >>Kill |cRXP_ENEMY_Northwatch Marines|r and |cRXP_ENEMY_Northwatch Sharpshooters|r
    .complete 25173,1 --Northwatch Marine (6)
    .mob +Northwatch Marine
    .complete 25173,2 --Northwatch Sharpshooter (6)
    .mob +Northwatch Sharpshooter
step
    #completewith Palliter
    >>Loot the |cRXP_LOOT_Kul Tiras Treasure|r on the ground
    .complete 25176,1 --Kul Tiras Treasure (6)
step
    #completewith next
    #requires TravelToTiragarde
    .goto 1411,59.48,58.82,8,0
    .goto 1411,59.81,58.44,8,0
    .goto 1411,59.58,57.88,8,0
    .goto 1411,59.31,57.88,8 >>Move toward |cRXP_ENEMY_Lieutenant Palliter|r on the second floor of the keep
step
    #label Palliter
    .goto 1411,59.75,58.31
    >>Kill |cRXP_ENEMY_Lieutenant Palliter|r
    .complete 25173,3 --Lieutenant Palliter (1)
    .mob Lieutenant Palliter
step
    #completewith next
    >>Kill |cRXP_ENEMY_Northwatch Marines|r and |cRXP_ENEMY_Northwatch Sharpshooters|r
    .complete 25173,1 --Northwatch Marine (6)
    .mob +Northwatch Marine
    .complete 25173,2 --Northwatch Sharpshooter (6)
    .mob +Northwatch Sharpshooter
step
    #loop
    .goto 1411,59.84,58.12,0
    .goto 1411,57.93,58.57,15,0
    .goto 1411,57.17,56.21,15,0
    .goto 1411,58.23,55.44,15,0
    .goto 1411,59.44,56.13,15,0
    .goto 1411,59.32,58.03,8,0
    .goto 1411,59.84,58.12,15,0
    >>Loot the |cRXP_LOOT_Kul Tiras Treasure|r on the ground
    .complete 25176,1 --Kul Tiras Treasure (6)
step
    #loop
    .goto 1411,59.02,57.24,0
    .goto 1411,58.50,58.88,40,0
    .goto 1411,57.67,58.53,40,0
    .goto 1411,57.87,57.50,40,0
    .goto 1411,57.34,56.57,40,0
    .goto 1411,58.41,56.40,40,0
    .goto 1411,59.02,57.24,40,0
    >>Kill |cRXP_ENEMY_Northwatch Marines|r and |cRXP_ENEMY_Northwatch Sharpshooters|r
    .complete 25173,1 --Northwatch Marine (6)
    .mob +Northwatch Marine
    .complete 25173,2 --Northwatch Sharpshooter (6)
    .mob +Northwatch Sharpshooter
step
    #completewith next
    .goto 1411,58.71,56.76,-1
    .goto 1411,58.56,54.00,-1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    >>|cRXP_WARN_Make sure you die near the waypoint or further North of the keep|r
step
    .goto 1411,52.00,43.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 25173 >>Turn in From Bad to Worse
    .accept 25177 >>Accept Storming the Beaches
    .target Gar'Thok
step << skip
    .goto 1411,50.70,42.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimtak|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target Grimtak
step
    .goto 1411,53.05,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gail|r
    .turnin 25176 >>Turn in Exploiting the Situation
    .accept 25178 >>Accept Shipwreck Searching
    .target Gail Nozzywig
step << skip
    .goto 1411,53.04,43.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burok|r
    .turnin 6365 >>Turn in Meats to Orgrimmar
    .accept 6384 >>Accept Ride to Orgrimmar
    .target Burok
step << Rogue
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r in the bunker on the top floor
    .train 15087 >> Train your class spells
    .target Kaplak
    .xp <8,1
step << Shaman
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r inside
    .train 324 >> Train your class spells
    .target Swart
    .xp <8,1
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabul|r
    .goto 1411,53.10,41.61
    .train 768 >> Train your class spells
    .target Jabul
    .xp <8,1
step << Hunter
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r in the bunker on the bottom floor
    .train 5116 >> Train your class spells
    .target Thotar
    .xp <8,1
step << Warrior
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r inside
    .train 772 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <7,1
step << Mage
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 122 >> Train your class spells
    .target Un'Thuwa
    .xp <8,1
step << Priest
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parata|r inside
    .train 588 >>Train your class spells
    .target Tai'jin
    .xp <8,1
step << Warlock
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghugru|r outside
    .train 687 >>Train your class spells
    .target Ghugru Gorelust
    .xp <8,1
step
    #loop
    .goto 1411,58.98,46.57,0
    .goto 1411,57.91,45.11,10,0
    .goto 1411,57.91,45.11,10,0
    .goto 1411,58.41,43.50,10,0
    .goto 1411,59.02,43.37,10,0
    .goto 1411,59.84,44.31,10,0
    .goto 1411,59.34,41.92,10,0
    .goto 1411,59.71,41.51,10,0
    .goto 1411,58.98,46.57,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Injured Razor Hill Grunt|r lying on the ground
    .accept 25179 >>Accept Loss Reduction
    .target Injured Razor Hill Grunt
step
    #completewith GnomishTools
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Injured Razor Hill Grunts|r
    .complete 25179,1 --Injured Razor Hill Grunt Rescued (4)
    .target Injured Razor Hill Grunt
    .skipgossip
step
    #completewith RazorGrunts
    >>Kill |cRXP_ENEMY_Foaming Sea Elementals|r
    .complete 25177,1 --Foaming Sea Elemental (11)
    .mob Foaming Sea Elemental
step
    #label GnomishTools
    #loop
    .goto 1411,59.850,43.579,0
    .goto 1411,59.522,51.990,0
    .waypoint 1411,57.918,44.936,50,0
    .waypoint 1411,59.850,43.579,50,0
    .waypoint 1411,59.228,47.383,50,0
    .waypoint 1411,59.531,49.920,50,0
    .waypoint 1411,59.522,51.990,50,0
    .waypoint 1411,57.824,49.763,50,0
    .waypoint 1411,57.986,46.174,50,0
    >>Loot the |cRXP_PICK_Gnomish Toolboxes|r on the ground
    .complete 25178,1 --Gnomish Tools (4)
step
    #label RazorGrunts
    #loop
    .goto 1411,58.98,46.57,0
    .goto 1411,57.91,45.11,10,0
    .goto 1411,58.41,43.50,10,0
    .goto 1411,59.02,43.37,10,0
    .goto 1411,59.84,44.31,10,0
    .goto 1411,59.34,41.92,10,0
    .goto 1411,59.71,41.51,10,0
    .goto 1411,58.98,46.57,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Injured Razor Hill Grunts|r
    .complete 25179,1 --Injured Razor Hill Grunt Rescued (4)
    .target Injured Razor Hill Grunt
    .skipgossip
step
    #loop
    .goto 1411,59.850,43.579,0
    .goto 1411,59.522,51.990,0
    .waypoint 1411,57.918,44.936,50,0
    .waypoint 1411,59.850,43.579,50,0
    .waypoint 1411,59.228,47.383,50,0
    .waypoint 1411,59.531,49.920,50,0
    .waypoint 1411,59.522,51.990,50,0
    .waypoint 1411,57.824,49.763,50,0
    .waypoint 1411,57.986,46.174,50,0
    >>Kill |cRXP_ENEMY_Foaming Sea Elementals|r
    .complete 25177,1 --Foaming Sea Elemental (11)
    .mob Foaming Sea Elemental
step
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    .goto 1411,53.08,43.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gail|r
    .turnin 25178 >>Turn in Shipwreck Searching
    .accept 25227 >>Accept Thonk
    .target Gail Nozzywig
step
    .goto 1411,51.97,43.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'Thok|r on the top floor
    .turnin 25177 >>Turn in Storming the Beaches
    .turnin 25179 >>Turn in Loss Reduction
    .target Gar'Thok
step
    #xprate <1.2
    .goto 1411,52.25,43.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil|r
    .accept 25232 >>Accept The Burning Blade
    .target Orgnil Soulscar
step << Rogue
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r in the bunker on the top floor
    .train 15087 >> Train your class spells
    .target Kaplak
    .xp <8,1
step << Shaman
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r inside
    .train 324 >> Train your class spells
    .target Swart
    .xp <8,1
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabul|r
    .goto 1411,53.10,41.61
    .train 768 >> Train your class spells
    .target Jabul
    .xp <8,1
step << Hunter
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r in the bunker on the bottom floor
    .train 5116 >> Train your class spells
    .target Thotar
    .xp <8,1
step << Warrior
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r inside
    .train 772 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <7,1
step << Mage
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 122 >> Train your class spells
    .target Un'Thuwa
    .xp <8,1
step << Priest
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parata|r inside
    .train 588 >>Train your class spells
    .target Tai'jin
    .xp <8,1
step << Warlock
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghugru|r outside
    .train 687 >>Train your class spells
    .target Ghugru Gorelust
    .xp <8,1
step
    .goto 1411,51.900,41.147
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wuark|r
    .vendor >> Vendor trash and repair
    .target Wuark
step
    #optional
    .maxlevel 9,FlyORG
step
    #completewith next
    .goto 1411,50.86,42.26,40,0
    .goto 1411,49.58,40.51,12 >> Travel toward the watchtower
step
    .goto 1411,49.60,40.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thonk|r on top of the watchtower
    .turnin 25227 >>Turn in Thonk
    .accept 25187 >>Accept Lost in the Floods
    .target Thonk
step
    .goto 1411,49.60,40.17
    >>|cRXP_WARN_Use|r |T134441:0|t[Thonk's Spyglass] |cRXP_WARN_to find|r |cRXP_FRIENDLY_Raggaran|r|cRXP_WARN_,|r |cRXP_FRIENDLY_Flooded hut|r|cRXP_WARN_,|r |cRXP_FRIENDLY_Misha|r|cRXP_WARN_, and|r |cRXP_FRIENDLY_Zen'Taji|r
    >>|cRXP_WARN_You cannot skip this cinematic|r
    .complete 25187,1 --Find Raggaran (1)
    .complete 25187,2 --Find flooded hut (1)
    .complete 25187,3 --Find Misha (1)
    .complete 25187,4 --Find Zen'Taji (1)
    .use 52514
step
    .goto 1411,49.60,40.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thonk|r
    .turnin 25187 >>Turn in Lost in the Floods
    .accept 25188 >>Accept Watershed Patrol
    .target Thonk
step
    .goto 1411,43.38,30.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Misha|r
    .accept 25193 >>Accept Lost But Not Forgotten
    .target Misha Tor'kren
step
    #completewith Screamlash
    >>Kill |cRXP_ENEMY_Dreadmaw Toothgnashers|r. Loot them for their |cRXP_LOOT_Teeth|r
    .complete 25193,1 --Durotar Crocolisk Tooth (250)
    .mob Dreadmaw Toothgnasher
step
    #completewith next
    .goto 1411,35.84,41.38,30 >> Travel toward |cRXP_FRIENDLY_Zen'Taji|r
step
    .goto 1411,35.84,41.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'Taji|r
    .accept 25194 >>Accept Unbidden Visitors
    .target Zen'Taji
step
    #loop
    .goto 1411,35.26,39.70,0
    .goto 1411,35.26,39.70,50,0
    .goto 1411,34.96,36.71,50,0
    .goto 1411,34.90,35.09,50,0
    .goto 1411,34.96,32.48,50,0
    .goto 1411,35.05,30.18,50,0
    .goto 1411,35.23,28.96,50,0
    .goto 1411,34.79,43.39,50,0
    .goto 1411,34.64,44.87,50,0
    .goto 1411,35.37,46.05,50,0
    .goto 1411,35.26,39.70,50,0
    >>Attack |cRXP_ENEMY_Wayward Plainstriders|r alongside the river to make them flee into the Barrens
    .complete 25194,1 --Wayward Plainstrider Returned (3)
    .unitscan Wayward Plainstrider
step
    .goto 1411,35.84,41.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'Taji|r
    .turnin 25194 >>Turn in Unbidden Visitors
    .accept 25195 >>Accept That's the End of That Raptor
    .target Zen'Taji
step
    #loop
    .goto 1411,35.819,33.161,0
    .goto 1411,35.643,29.209,0
    .waypoint 1411,35.819,33.161,40,0
    .waypoint 1411,36.019,31.471,40,0
    .waypoint 1411,35.643,29.209,40,0
    >>Kill |cRXP_ENEMY_Screamslash|r
    .complete 25195,1 --Screamslash (1)
    .unitscan Screamslash
    --VV Coords
step
    #label Screamlash
    .goto 1411,35.83,41.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zen'Taji|r
    .turnin 25195 >>Turn in That's the End of That Raptor
    .complete 25188,4 --Help Zen'Taji (1)
    .target Zen'Taji
step
    #loop
    .goto 1411,42.441,35.524,0
    .goto 1411,39.455,34.623,0
    .waypoint 1411,43.839,34.132,40,0
    .waypoint 1411,42.441,35.524,40,0
    .waypoint 1411,41.548,35.852,40,0
    .waypoint 1411,40.731,36.627,40,0
    .waypoint 1411,39.455,34.623,40,0
    >>Kill |cRXP_ENEMY_Dreadmaw Toothgnashers|r. Loot them for their |cRXP_LOOT_Teeth|r
    .complete 25193,1 --Durotar Crocolisk Tooth (250)
    .mob Dreadmaw Toothgnasher
step
    .goto 1411,43.45,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Misha|r
    .turnin 25193 >>Turn in Lost But Not Forgotten
    .complete 25188,3 --Help Misha Tor'kren (1)
    .target Misha Tor'kren
step
    .goto 1411,40.49,35.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tekla|r
    .accept 25189 >>Accept Spirits Be Praised
    .target Grandmatron Tekla
step
    .goto 1411,42.70,49.90
    >>Escort |cRXP_FRIENDLY_Tekla|r to |cRXP_FRIENDLY_Raggaran|r
    .complete 25189,1 --Escort Grandmatron Tekla to Raggaran
    .complete 25188,1 --Help Grandmatron Tekla (1)
    .target Grandmatron Tekla
step
    .goto 1411,42.66,49.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raggaran|r
    .turnin 25189 >>Turn in Spirits Be Praised
    .accept 25190 >>Accept Raggaran's Rage
    .target Raggaran
step
    #loop
    .goto 1411,43.57,50.27,0
    .goto 1411,43.57,50.27,40,0
    .goto 1411,44.15,49.45,40,0
    .goto 1411,44.54,50.09,40,0
    .goto 1411,46.66,48.37,40,0
    .goto 1411,47.43,48.63,40,0
    .goto 1411,48.53,49.04,40,0
    .goto 1411,49.21,48.60,40,0
    .goto 1411,50.13,49.39,40,0
    .goto 1411,43.57,50.27,40,0
    >>Kill |cRXP_ENEMY_Razormane Quilboars|r and |cRXP_ENEMY_Razormane Scouts|r
    .complete 25190,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 25190,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    .goto 1411,42.75,49.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raggaran|r
    .turnin 25190 >>Turn in Raggaran's Rage
    .accept 25192 >>Accept Raggaran's Fury
    .target Raggaran
step
#loop
	.line 1411,41.83,39.47,41.83,39.47,42.34,40.36,43.09,40.43,43.67,41.35,44.42,40.23,44.34,39.12,44.40,38.38,45.08,37.76,43.88,37.22,43.32,37.02,42.63,36.62,41.98,36.95
	.goto 1411,41.83,39.47,30,0
	.goto 1411,41.83,39.47,30,0
	.goto 1411,42.34,40.36,30,0
	.goto 1411,43.09,40.43,30,0
	.goto 1411,43.67,41.35,30,0
	.goto 1411,44.42,40.23,30,0
	.goto 1411,44.34,39.12,30,0
	.goto 1411,44.40,38.38,30,0
	.goto 1411,45.08,37.76,30,0
	.goto 1411,43.88,37.22,30,0
	.goto 1411,43.32,37.02,30,0
	.goto 1411,42.63,36.62,30,0
	.goto 1411,41.98,36.95,30,0
    >>Kill |cRXP_ENEMY_Razormane Dustrunners|r and |cRXP_ENEMY_Razormane Battleguards|r
    .complete 25192,1 --Razormane Dustrunner (5)
    .mob +Razormane Dustrunner
    .complete 25192,2 --Razormane Battleguard (5)
    .mob +Razormane Battleguard
step
    .goto 1411,42.72,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raggaran|r
    .turnin 25192 >>Turn in Raggaran's Fury
    .complete 25188,2 --Help Raggaran (1)
    .target Raggaran
step
    #xprate >1.19
    #completewith FlyORG
    .hs >> Hearth to Razor Hill
    .cooldown item,6948,>0,1
step
    #xprate >1.19
    #completewith FlyORG
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .cooldown item,6948,<0
step
    #xprate >1.19
    #completewith next
    .goto 1411,50.86,42.26,40,0
    .goto 1411,49.58,40.51,12 >> Travel toward the tower
step
    #xprate >1.19
    .goto 1411,49.60,40.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thonk|r
    .turnin 25188 >>Turn in Watershed Patrol
    .target Thonk
step
    #xprate <1.2
    #completewith DustwindCave
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Rogue
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r in the bunker on the top floor
    .train 61922 >> Train your class spells
    .target Kaplak
    .xp <10,1
step << Shaman
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r inside
    .train 3599 >> Train your class spells
    .target Swart
    .xp <10,1
step << Druid
    .goto 1411,53.10,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabul|r
    .train 5215 >> Train your class spells
    .target Jabul
    .xp <10,1
step << Hunter
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r in the bunker on the bottom floor
    .train 1978 >> Train your class spells
    .target Thotar
    .xp <10,1
step << Warrior
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r inside
    .train 71 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Mage
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 2139 >> Train your class spells
    .target Un'Thuwa
    .xp <9,1
step << Priest
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parata|r inside
    .train 8092 >> Train your class spells
    .target Tai'jin
    .xp <9,1
step << Warlock
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghugru|r outside
    .train 1120 >> Train your class spells
    .target Ghugru Gorelust
    .xp <10,1
step
    #xprate <1.2
    #label DustwindCave
    #completewith next
    .goto 1411,52.82,28.88,40 >> Travel inside the cave
step
    #xprate <1.2
    #loop
    .goto 1411,52.66,29.15,0
    .goto 1411,52.66,29.15,15,0
    .goto 1411,53.04,29.18,15,0
    .goto 1411,52.75,28.40,15,0
    .goto 1411,53.02,27.87,15,0
    .goto 1411,53.14,27.29,15,0
    .goto 1411,53.44,26.94,15,0
    .goto 1411,52.77,26.67,15,0
    .goto 1411,52.20,26.90,15,0
    .goto 1411,51.90,26.06,15,0
    .goto 1411,52.20,24.46,15,0
    .goto 1411,52.66,29.15,15,0
    >>Kill |cRXP_ENEMY_Burning Blade Neophytes|r and |cRXP_ENEMY_Burning Blade Thugs|r. Loot them for their |cRXP_LOOT_Spellscrolls|r
    .complete 25232,1 --Burning Blade Spellscroll (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
step
    #xprate <1.2
    #completewith next
    .goto 1411,54.36,29.18,70,0
    .goto 1411,56.13,28.06,70,0
    .goto 1411,56.30,24.76,70,0
    .goto 1411,56.11,21.96,40,0
    .goto 1411,56.21,20.23 >> Travel to Vek'nag
step
    #xprate <1.2
    .goto 1411,56.21,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vek'nag|r
    .accept 25256 >>Accept Sent for Help
    .target Vek'nag
step
    #xprate <1.2
    .goto 1411,58.81,23.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiketooth|r
    .turnin 25256 >>Turn in Sent for Help
    .accept 25257 >>Accept Ghislania
    .accept 25258 >>Accept Griswold Hanniston
    .accept 25259 >>Accept Gaur Icehorn
    .target Spiketooth
step
    #xprate <1.2
    #completewith next
    .goto 1411,59.41,23.47
    +|cRXP_WARN_Talk to |cRXP_FRIENDLY_Gaur Icehorn|r to turn him hostile|r
    .target Gaur Icehorn
    .skipgossip
step
    #xprate <1.2
    .goto 1411,59.41,23.47
    >>Kill |cRXP_ENEMY_Gaur Icehorn|r
    .complete 25259,1 --Gaur defeated (1)
    .mob Gaur Icehorn
step
    #xprate <1.2
    #completewith next
    .goto 1411,59.68,22.63
    +|cRXP_WARN_Talk to |cRXP_FRIENDLY_Ghislania|r to turn her hostile|r
    .target Ghislania
    .skipgossip
step
    #xprate <1.2
    .goto 1411,59.68,22.63
    >>Kill |cRXP_ENEMY_Ghislania|r
    .complete 25257,1 --Ghislania defeated (1)
    .mob Ghislania
step
    #xprate <1.2
    #completewith next
    .goto 1411,59.06,22.26
    +|cRXP_WARN_Talk to |cRXP_FRIENDLY_Griswold|r to turn him hostile|r
    .target Griswold
    .skipgossip
step
    #xprate <1.2
    .goto 1411,59.06,22.26
    >>Kill |cRXP_ENEMY_Griswold|r
    .complete 25258,1 --Griswold defeated (1)
    .mob Griswold
step
    #xprate <1.2
    .goto 1411,58.80,23.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiketooth|r
    .turnin 25257 >>Turn in Ghislania
    .turnin 25258 >>Turn in Griswold Hanniston
    .turnin 25259 >>Turn in Gaur Icehorn
    .target Spiketooth
step
    #xprate <1.2
    #completewith Orgnil
    .goto 1411,57.13,27.37,40,0
    .goto 1411,55.79,31.03,40,0
    .goto 1411,53.90,35.53,40,0
    .goto 1411,52.81,39.75,40 >> Run back to Razor Hill
    .cooldown item,6948,<0
step
    #xprate <1.2
    #completewith Orgnil
    .hs >> Hearth to Razor Hill
    .cooldown item,6948,>0
step
    #xprate <1.2
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil|r
    .goto 1411,52.24,43.16
    .turnin 25232 >>Turn in The Burning Blade
    .accept 25196 >>Accept The Dranosh'ar Blockade
    .target Orgnil Soulscar
    .maxlevel 9
step
    #xprate <1.2
    #label Orgnil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orgnil|r
    .goto 1411,52.24,43.16
    .turnin 25232 >>Turn in The Burning Blade
    .target Orgnil Soulscar
step << Rogue
    #xprate <1.2
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r in the bunker on the top floor
    .train 61922 >> Train your class spells
    .target Kaplak
    .xp <10,1
step << Shaman
    #xprate <1.2
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swart|r inside
    .train 3599 >> Train your class spells
    .target Swart
    .xp <10,1
step << Druid
    #xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabul|r
    .goto 1411,53.10,41.61
    .train 5215 >> Train your class spells
    .target Jabul
    .xp <10,1
step << Hunter
    #xprate <1.2
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thotar|r in the bunker on the bottom floor
    .train 1978 >> Train your class spells
    .target Thotar
    .xp <10,1
step << Warrior
    #xprate <1.2
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r inside
    .train 71 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Mage
    #xprate <1.2
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Un'Thuwa|r
    .train 2139 >> Train your class spells
    .target Un'Thuwa
    .xp <9,1
step << Priest
    #xprate <1.2
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Parata|r inside
    .train 8092 >> Train your class spells
    .target Tai'jin
    .xp <9,1
step << Warlock
    #xprate <1.2
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghugru|r outside
    .train 1120 >> Train your class spells
    .target Ghugru Gorelust
    .xp <10,1
step
    #xprate <1.2
    #completewith next
    .goto 1411,50.86,42.26,40,0
    .goto 1411,49.58,40.51,12 >> Travel toward the tower
step
    #xprate <1.2
    .goto 1411,49.60,40.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thonk|r
    .turnin 25188 >>Turn in Watershed Patrol
    .target Thonk
step
    #label FlyORG
    .goto 1411,53.04,43.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Burok|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Burok
    .xp <10,1
step
    #optional
    .abandon 25227 >>Abandon Thonk

    --Next section if user isn't lvl 10 yet

step
    #xprate <1.2
    #optional
    #completewith next
    .goto 1411,46.26,30.19
    >>|cRXP_WARN_Travel to the the waypoint. Do not die until you are there|r
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Accept Winds in the Desert
    .target Rezlak
    .maxlevel 9
step
    #xprate <1.2
    #optional
    .goto 1411,48.95,22.34,0
    .goto 1411,48.95,22.34,40,0
    .goto 1411,49.75,21.95,40,0
    .goto 1411,49.62,24.17,40,0
    .goto 1411,50.52,25.32,40,0
    .goto 1411,50.08,25.72,40,0
    .goto 1411,50.87,25.99,40,0
    .goto 1411,51.68,27.75,40,0
    .goto 1411,50.56,27.33,40,0
    .goto 1411,49.89,26.88,40,0
    .goto 1411,49.63,32.13,40,0
    .goto 1411,49.12,33.11,40,0
    .goto 1411,48.53,32.01,40,0
    .goto 1411,48.13,32.02,40,0
    .goto 1411,47.07,30.87,40,0
    .goto 1411,47.16,29.67,40,0
    .goto 1411,48.95,22.34,40,0
    >>Loot the |cRXP_LOOT_Kul Sack of Supplies|r on the ground
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Turn in Winds in the Desert
    .accept 835 >>Accept Securing the Lines
    .target Rezlak
    .isQuestComplete 834
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .accept 835 >>Accept Securing the Lines
    .target Rezlak
    .isQuestTurnedIn 835
step
    #xprate <1.2
    #optional
    .goto 1411,49.76,28.04,0
    .goto 1411,48.86,22.10,40,0
    .goto 1411,49.76,23.27,40,0
    .goto 1411,50.13,25.15,40,0
    .goto 1411,50.76,25.90,40,0
    .goto 1411,51.34,27.16,40,0
    .goto 1411,51.89,27.45,40,0
    .goto 1411,54.08,27.34,40,0
    .goto 1411,54.05,23.47,40,0
    .goto 1411,51.98,20.78,40,0
    .goto 1411,52.88,24.14,40,0
    .goto 1411,51.26,23.79,40,0
    .goto 1411,49.76,28.04,40,0
    >>Kill any type of |cRXP_ENEMY_Dustwind Harpy|r
    .complete 835,1 --Durotar Harpy (12)
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .isQuestTurnedIn 835
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Turn in Securing the Lines
    .target Rezlak
    .isQuestComplete 835
step
    #xprate <1.2
    #optional
    #completewith Fizzled
    .goto 1411,45.11,13.65,30 >> Run to |cRXP_FRIENDLY_Gor|r
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor|r and |cRXP_FRIENDLY_Shin|r
    .turnin 25196 >>Turn in The Dranosh'ar Blockade
    --.accept 25206 >>Accept Ignoring the Warnings
    .accept 25236 >>Accept Thunder Down Under
    .accept 25260 >>Accept Fizzled
    --.accept 25648 >>Accept Beyond Durotar
    .goto 1411,45.01,14.78
    .accept 25205 >>Accept The Wolf and The Kodo
    .goto 1411,44.90,14.83
    .target Gor the Enforcer
    .target Shin Stonepillar
step
    #xprate <1.2
    #optional
    .goto 1411,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor|r
    .turnin 25196 >>Turn in The Dranosh'ar Blockade
    --.accept 25206 >>Accept Ignoring the Warnings
    .accept 25236 >>Accept Thunder Down Under
    .accept 25260 >>Accept Fizzled
    --.accept 25648 >>Accept Beyond Durotar
    .target Gor the Enforcer
    .maxlevel 9
step
    #xprate <1.2
    #optional
    #label Fizzled
    .goto 1411,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor|r
    .turnin 25196 >>Turn in The Dranosh'ar Blockade
    --.accept 25206 >>Accept Ignoring the Warnings
    .accept 25236 >>Accept Thunder Down Under
    .accept 25260 >>Accept Fizzled
    --.accept 25648 >>Accept Beyond Durotar
    .target Gor the Enforcer
    .maxlevel 9

    --BB Quest 25205 currently bugged on beta

step << skip
    .goto 1411,44.90,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shin|r
    .gossipoption 112089 >> Talk to |cRXP_FRIENDLY_Shin|r
    .target Shin Stonepillar
step << skip
    .goto 1411,52.47,16.47
    >>Travel to |cRXP_FRIENDLY_The Kodos|r
    >>|cRXP_WARN_Use|r |T132120:0|t[Dash] |cRXP_WARN_on cooldown|r
    .complete 25205,1 --Listen to the shaman's fable (1)
    .unitscan The Kodo
step << skip
    .goto 1411,44.89,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shin|r
    .turnin 25205 >>Turn in The Wolf and The Kodo
    .target Shin Stonepillar
    .skipgossip
step << skip
    #loop
    .goto 1411,38.041,16.299,0
    .waypoint 1411,40.401,15.857,40,0
    .waypoint 1411,38.041,16.299,40,0
    .waypoint 1411,38.738,18.791,40,0
    .waypoint 1411,40.108,17.593,40,0
    >>Kill |cRXP_ENEMY_Teeming Waterguards|r and |cRXP_ENEMY_Furious Earthguards|r
    .complete 25206,1 --Warring Elemental (12)
    .mob Teeming Waterguard
    .mob Furious Earthguard
step
    #xprate <1.2
    #optional
    #completewith next
    >>Click the |cRXP_FRIENDLY_Drowned Thunder Lizards|r underwater
    .complete 25236,1 --Drowned Thunder Lizard removed (8)
    .target Drowned Thunder Lizard
    .isOnQuest 25236
step
    #xprate <1.2
    #optional
    #label Fizzle
    .goto 1411,42.11,26.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle|r's corpse underwater. Loot him for his |cRXP_PICK_Orb|r
    .complete 25260,1 --Fizzle's Orb (1)
    .skipgossip 3203,1,1
    .target Fizzle Darkclaw
    .isOnQuest 25260
    --BB Bugged on beta
step
    #xprate <1.2
    #optional
    #loop
    .goto 1411,41.22,24.55,0
    .goto 1411,39.29,28.19,0
    .waypoint 1411,41.65,25.09,40,0
    .waypoint 1411,41.22,24.55,40,0
    .waypoint 1411,40.54,24.19,40,0
    .waypoint 1411,39.57,23.63,40,0
    .waypoint 1411,39.53,24.99,40,0
    .waypoint 1411,38.97,25.05,40,0
    .waypoint 1411,39.01,26.25,40,0
    .waypoint 1411,39.49,26.96,40,0
    .waypoint 1411,38.97,27.69,40,0
    .waypoint 1411,39.29,28.19,40,0
    .waypoint 1411,39.73,27.97,40,0
    .waypoint 1411,40.25,28.09,40,0
    .waypoint 1411,40.52,29.77,40,0
    .waypoint 1411,39.15,29.74,40,0
    .waypoint 1411,41.93,23.95,40,0
    >>Click the |cRXP_FRIENDLY_Drowned Thunder Lizards|r
    .complete 25236,1 --Drowned Thunder Lizard removed (8)
    .target Drowned Thunder Lizard
    .isOnQuest 25236
step
    #xprate <1.2
    #optional
    #completewith FizzledTurnin
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .isQuestComplete 25236
step
    #xprate <1.2
    #optional
    .goto 1411,44.97,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor|r
    --.turnin 25206 >>Turn in Ignoring the Warnings
    .turnin 25236 >>Turn in Thunder Down Under
    .turnin 25260 >>Turn in Fizzled
    .target Gor the Enforcer
    .isQuestComplete 25236
    .isQuestComplete 25260
step
    #xprate <1.2
    #optional
    .goto 1411,44.97,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor|r
    --.turnin 25206 >>Turn in Ignoring the Warnings
    .turnin 25260 >>Turn in Fizzled
    .target Gor the Enforcer
    .isQuestComplete 25260
step
    #xprate <1.2
    #optional
    #label FizzledTurnin
    .goto 1411,44.97,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gor|r
    --.turnin 25206 >>Turn in Ignoring the Warnings
    .turnin 25236 >>Turn in Thunder Down Under
    .target Gor the Enforcer
    .isQuestComplete 25236
step
    #xprate <1.2
    #optional
    .goto 1411,45.506,11.949,30,0
    .zone Orgrimmar >>Enter Orgrimmar
    .isQuestTurnedIn 25196
step << skip
    .goto 1454,54.083,74.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .target Innkeeper Gryshka

    ]])
