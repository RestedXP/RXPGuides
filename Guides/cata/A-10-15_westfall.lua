local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-15 Westfall
#next 15-20 Redridge
#defaultfor None
<<Alliance

step
    #completewith WestfallEntry
    .zone 52 >> Travel to Westfall
step
    .isOnQuest 26378
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26378 >>Turn in Hero's Call: Westfall!
    .accept 26209 >>Accept Murder Was The Case That They Gave Me
	.target Lieutenant Horatio Laine
step
    #label WestfallEntry
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .accept 26209 >>Accept Murder Was The Case That They Gave Me
	.target Lieutenant Horatio Laine
step
    #loop
    .goto 52,58.23,18.12,0
    .goto 52,58.56,16.21,20,0
    .goto 52,59.18,18.16,20,0
    .goto 52,58.12,19.58,20,0
    .goto 52,57.31,18.33,20,0
    .goto 52,58.56,16.21,20,0
    >>Talk to the |cRXP_FRIENDLY_Homeless Stormwind Citizens|r, |cRXP_FRIENDLY_West Plains Drifters|r, and |cRXP_FRIENDLY_Transients|r
    >>|cRXP_WARN_You must pay them to receive the clues!|r
    .complete 26209,1 --1/1 Clue #1 obtained
    .complete 26209,2 --1/1 Clue #2 obtained
    .complete 26209,3 --1/1 Clue #3 obtained
    .complete 26209,4 --1/1 Clue #4 obtained
	.target Homeless Stormwind Citizen
	.target West Plains Drifter
    .target Transients
    .skipgossip 2
step
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26209 >>Turn in Murder Was The Case That They Gave Me
    .accept 26213 >>Accept Hot On the Trail: The Riverpaw Clan
    .accept 26214 >>Accept Hot On the Trail: Murlocs
	.target Lieutenant Horatio Laine
step
    #completewith next
    >>Kill |cRXP_ENEMY_Riverpaw Scouts|r and |cRXP_ENEMY_Riverpaw Gnolls|r. Loot them for the |cRXP_LOOT_Riverpaw Gnoll Clue|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob *Riverpaw Scout
	.mob *Riverpaw Gnoll
step
    #loop
    .goto 52,55.51,9.11,0
    .goto 52,56.83,10.35,40,0
    .goto 52,55.82,7.95,40,0
    .goto 52,55.51,9.11,40,0
    .goto 52,53.91,9.68,40,0
    .goto 52,52.37,8.88,40,0
    .goto 52,53.42,11.57,40,0
    .goto 52,56.03,10.85,40,0
    >>Kill |cRXP_ENEMY_Murloc Minor Oracles|r, |cRXP_ENEMY_Murloc Coastrunners|r, and |cRXP_ENEMY_Murloc Raiders|r. Loot them for the |cRXP_LOOT_Murloc Clue|r
    .complete 26214,1 --1/1 Murloc Clue
	.mob Murloc Minor Oracle
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    .goto 52,56.46,13.26,0
    .waypoint 52,58.16,10.71,40,0
    .waypoint 52,57.17,15.12,40,0
    .waypoint 52,51.38,15.89,40,0
    .waypoint 52,50.68,14.77,40,0
    .waypoint 52,56.46,13.26,40,0
    >>Kill |cRXP_ENEMY_Riverpaw Scouts|r and |cRXP_ENEMY_Riverpaw Gnolls|r. Loot them for the |cRXP_LOOT_Riverpaw Gnoll Clue|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob *Riverpaw Scout
	.mob *Riverpaw Gnoll
step
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .target Lieutenant Horatio Laine
    .turnin 26213 >>Turn in Hot On the Trail: The Riverpaw Clan
    .turnin 26214 >>Turn in Hot On the Trail: Murlocs
    .accept 26215 >>Accept Meet Two-Shoed Lou
step
    .goto 1436/0,1278.700,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Two-Shoed Lou|r
    .target Two-Shoed Lou
    .turnin 26215 >>Turn in Meet Two-Shoed Lou
    .accept 26228 >>Accept Livin' the Life
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jimb "Candles" McHannigan|r
    .target Jimb "Candles" McHannigan
    .accept 26229 >>Accept "I TAKE Candle!"
step
    .goto 1436/0,1282.800,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Celeste|r
    .target Mama Celeste
    .accept 26230 >>Accept Feast or Famine
step
    #completewith next
    >>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Tails|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #loop
    .goto 52,51.5,19.8,40,0
    .goto 52,52.3,21.8,40,0
    .goto 52,50.5,22.8,40,0
    .goto 52,50.2,19.8,40,0
    >>Loot the |cRXP_LOOT_Fresh Dirt|r on the ground
    .complete 26230,2 --|Fresh Dirt: 5/5
step
    #loop
    .goto 52,51.6,17.8,50,0
    .goto 52,53.8,20.8,50,0
    .goto 52,50.0,22.4,50,0
    .goto 52,47.0,20.4,50,0
    .goto 52,48.6,16.2,50,0
    >>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Tails|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #completewith BackOfMine
    .goto 52,53.24,92.20 >> Enter Jangolode Mine
step
    #completewith BackOfMine
    >>Kill |cRXP_ENEMY_Kobold Diggers|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    #completewith BackOfMine
    .goto 52,46.405,19.289
    .cast 79262 >> |cRXP_WARN_Use|r |T132762:0|t[Two-Shoed Lou's Old House] |cRXP_WARN_at the back of Jangolode Mine|r
    .use 57761
step
    #label BackOfMine
    .goto 52,46.405,19.289
    .complete 26228,1
    .use 57761 >>|cRXP_WARN_Wait out the RP|r
step
    #loop
    .goto 52,53.24,92.50,0
    .goto 52,46.40,19.28,50,0
    >>Kill |cRXP_ENEMY_Kobold Diggers|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jimb "Candles" McHannigan|r
    .target Jimb "Candles" McHannigan
    .turnin 26229 >>Turn in "I TAKE Candle!"
step
    .goto 1436/0,1278.800,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Two-Shoed Lou|r
    .target Two-Shoed Lou
    .turnin 26228 >>Turn in Livin' the Life
    .accept 26232 >>Accept Lou's Parting Thoughts
step
    .goto 1436/0,1282.700,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mama Celeste|r
    .target Mama Celeste
    .turnin 26230 >>Turn in Feast or Famine
step
    .goto 1436/0,1334.000,-9861.601
    >>|cRXP_WARN_Head to the |cRXP_ENEMY_Thugs|r behind the farmhouse. Wait out the RP then kill them|r
    .complete 26232,1 --|Eavesdrop on Thugs.: 1/1
    .mob Thug
step
    .goto 1436/0,1276.100,-9855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .target Lieutenant Horatio Laine
    .turnin 26232 >>Turn in Lou's Parting Thoughts
    .accept 26236 >>Accept Shakedown at the Saldean's
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .target Farmer Saldean
    .turnin 26236 >>Turn in Shakedown at the Saldean's
    .accept 26237 >>Accept Times are Tough
step
    .goto 1436/0,1042.100,-10112.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .accept 26241 >>Accept Westfall Stew
step
    #completewith next
    >>Loot the |cRXP_LOOT_Okra|r on the ground
    .complete 26241,1 --|Okra: 6/6
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |T133862:0|t[|cRXP_LOOT_Harvest Watcher Heart|r]
    .use 57935 >>|cRXP_WARN_Use the|r |T133862:0|t[|cRXP_LOOT_Harvest Watcher Heart|r] |cRXP_WARN_to start the quest|r
    .collect 57935,1,26252,1 -- Harvest Watcher Heart (1)
    .accept 26252 >> Accept Heart of the Watcher
    .complete 26237,1 --|Harvest Watcher slain: 10/10
    .mob Harvest Watcher
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>Loot the |cRXP_LOOT_Okra|r on the ground
    .complete 26241,1 --|Okra: 6/6
step
    .goto 1436/0,1055.200,-10128.700
    .accept 26252 >>Accept Heart of the Watcher
    .turnin 26237 >>Turn in Times are Tough
    .turnin 26252 >>Turn in Heart of the Watcher
    .accept 26257 >>Accept It's Alive!
step
    #completewith next
    >>Kill |cRXP_ENEMY_Goretusks|r. Loot them for their |cRXP_LOOT_Flanks|r
    >>Kill |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Stringy Fleshripper Meat|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1283.100,-10164.700
    .use 57954 >> |cRXP_WARN_Use the|r |T133862:0|t[Harvest Watcher Heart] |cRXP_WARN_on a |cRXP_ENEMY_Overloaded Harvest Golem|r to take control of it|r
    .complete 26257,1 --|Overloaded Harvest Golem enabled: 1/1
    .target Overloaded Harvest Golem
step
    .goto 1436/0,1460.500,-10221.601
    >>Kill the |cRXP_ENEMY_Energized Harvest Reapers|r
    .complete 26257,2 --|Energized Harvest Reaper slain: 25/25
    .mob Energized Harvest Reaper
step
    .isOnQuest 26257
    .exitvehicle >> |cRXP_WARN_Exit the|r |cRXP_ENEMY_Overloaded Harvest Golem|r
step
    #loop
    .goto 52,41.4,37.4,60,0
    .goto 52,44.6,40.8,60,0
    .goto 52,47.0,46.0,60,0
    .goto 52,51.2,31.2,60,0
    >>Kill |cRXP_ENEMY_Goretusks|r. Loot them for their |cRXP_LOOT_Flanks|r
    >>Kill |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Stringy Fleshripper Meat|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1042.100,-10112.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .turnin 26241 >>Turn in Westfall Stew
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .target Farmer Saldean
    .turnin 26257 >>Turn in It's Alive!
    .accept 26270 >>Accept You Have Our Thanks
step
    .goto 1436/0,1040.900,-10110.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .turnin 26270 >>Turn in You Have Our Thanks
    .accept 26266 >>Accept Hope for the People
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hope Saldean|r
    .target Hope Saldean
    .turnin 26266 >>Turn in Hope for the People
    .accept 26271 >>Accept Feeding the Hungry and the Hopeless
step
    .goto 1436/0,1042.800,-10504.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .accept 26371 >>Accept The Legend of Captain Grayson
step
    .goto 1436/0,1040.600,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .accept 26287 >>Accept The Westfall Brigade
step
    .goto 1436/0,1045.200,-10508.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .target Marshal Gryan Stoutmantle
    .accept 26286 >>Accept In Defense of Westfall
step
    #loop
    .goto 52,54.6,44.6,50,0
    .goto 52,55.0,50.6,50,0
    .goto 52,52.2,50.8,50,0
    >>Kill |cRXP_ENEMY_Riverpaw Brutes|r, |cRXP_ENEMY_Riverpaw Bandits|r and |cRXP_ENEMY_Riverpaw Herbalists|r. Loot them for the |cRXP_LOOT_Gnoll Attack Orders|r
    .complete 26287,1 --|Attacking Riverpaw Gnoll slain: 12/12
    .complete 26286,1 --|Gnoll Attack Orders: 1/1
    .mob Riverpaw Brute
    .mob Riverpaw Bandit
    .mob Riverpaw Herbalist
step
    #loop
    .goto 52,56.91,57.72,20,0
    .goto 52,53.94,57.06,20,0
    .goto 52,52.20,55.75,20,0
    .use 57991 >> |cRXP_WARN_Use the|r |T237329:0|t[Westfall Stew] |cRXP_WARN_next to the |cRXP_FRIENDLY_Homeless|r around Sentinel Hill|r
    .complete 26271,1 --|Westfall Homeless fed: 20/20
    .target Homeless Stormwind Citizen
    .target West Plains Drifter
    .target Small-time Hustler
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .turnin 26287 >>Turn in The Westfall Brigade
    .accept 26288 >>Accept Jango Spothide
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hope Saldean|r
    .target Hope Saldean
    .turnin 26271 >>Turn in Feeding the Hungry and the Hopeless
step
    .goto 1436/0,1045.000,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .target Marshal Gryan Stoutmantle
    .turnin 26286 >>Turn in In Defense of Westfall
    .accept 26289 >>Accept Find Agent Kearnen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
    .target Innkeeper Heather
    .goto 1436/0,1166.400,-10653.200
    .home >>Set your Hearthstone to Sentinel Hill
    .subzoneskip 108,1
step
    >>Kill |cRXP_ENEMY_Jango Spothide|r
    >>Kill |cRXP_ENEMY_Riverpaw Mystics|r
    >>Kill |cRXP_ENEMY_Riverpaw Taskmasters|r
    .complete 26288,3 --|Jango Spothide slain: 1/1
    .mob +Jango Spothide
    .goto 52,62.255,76.449
    .complete 26288,1 --|Riverpaw Mystic slain: 5/5
    .mob +Riverpaw Mystic
    .goto 52,60.6,75.6,60,0
    .goto 52,65.8,76.2,60,0
    .goto 52,62.2,70.0,60,0
    .goto 52,60.4,72.2
    .complete 26288,2 --|Riverpaw Taskmaster slain: 5/5
    .mob +Riverpaw Taskmaster
    .goto 52,60.6,75.6,60,0
    .goto 52,65.8,76.2,60,0
    .goto 52,62.2,70.0,60,0
    .goto 52,60.4,72.2
step
    .goto 1436/0,625.100,-11042.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .target Agent Kearnen
    .turnin 26289 >>Turn in Find Agent Kearnen
    .accept 26290 >>Accept Secrets of the Tower
step
    #completewith next
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .subzone 5289 >> Enter Mortwake's Tower
step
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .cast 79528 >> |cRXP_WARN_Use the|r |T134724:0|t[Potion of Shrouding] |cRXP_WARN_while inside Mortwake's Tower|r
    .use 58112 >>|cRXP_WARN_Run passed the |cRXP_ENEMY_Mercenary|r at the front of the tower. |cRXP_FRIENDLY_Agent Kearnen|r will him them as soon as you get in combat with them|r
step
    .goto 52,70.543,74.060
    >>|cRXP_WARN_Head to the top of the tower and wait out the RP|r
    .complete 26290,1
step
    #completewith next
    +|cRXP_WARN_Exit Mortwake's Tower|r
    .subzoneskip 5289,1
step
    .goto 1436/0,625.100,-11042.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .target Agent Kearnen
    .turnin 26290 >>Turn in Secrets of the Tower
    .accept 26291 >>Accept Big Trouble in Moonbrook
step
    #completewith next
    .hs >> Hearth to Sentinel Hill
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.300,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .target Marshal Gryan Stoutmantle
    .turnin 26291 >>Turn in Big Trouble in Moonbrook
    .accept 26292 >>Accept To Moonbrook!
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .turnin 26288 >>Turn in Jango Spothide
step
    .goto 1436/0,1543.000,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Alpert|r
    .target Captain Alpert
    .turnin 26292 >>Turn in To Moonbrook!
    .accept 26295 >>Accept Propaganda
step
    #completewith MoonbrookThugs
    >>Loot the |cRXP_LOOT_Mysterious Propaganda|r on the wall
    >>Loot the |cRXP_LOOT_Informational Pamphlet|r on the barrel
    >>Loot the |cRXP_LOOT_Moonbrook Times|r on the ground
    >>Loot the |cRXP_LOOT_Secret Journal|r up stairs in the house
    .complete 26295,4 --|Mysterious Propaganda: 1/1
    .goto 1436/0,1572.500,-10952.101
    .complete 26295,1 --|Informational Pamphlet: 1/1
    .goto 1436/0,1561.000,-10949.101
    .complete 26295,2 --|Issue of the Moonbrook Times: 1/1
    .goto 1436/0,1502.000,-11030.800
    .complete 26295,3 --|Secret Journal: 1/1
    .goto 1436/0,1495.800,-10953.200
step
    #loop
    .goto 52,42.6,69.6,40,0
    .goto 52,45.6,70.8,40,0
    .goto 52,43.8,67.4,40,0
    >>Kill |cRXP_ENEMY_Moonbrook Thugs|r. Loot them for their |T237277:0|t[|cRXP_LOOT_Red Bandana|r]
    .use 58117 >> |cRXP_WARN_Use the|r |T237277:0|t[|cRXP_LOOT_Red Bandana|r] |cRXP_WARN_to start the quest|r
    .collect 58117,1,26296,1 -- Red Bandana (1)
    .disablecheckbox
    .accept 26296 >> Accept Evidence Collection
    .mob Moonbrook Thug
step
    #label MoonbrookThugs
    #loop
    .goto 52,42.6,69.6,40,0
    .goto 52,45.6,70.8,40,0
    .goto 52,43.8,67.4,40,0
    >>Kill |cRXP_ENEMY_Moonbrook Thugs|r. Loot them for their |cRXP_LOOT_Red Bandana|r
    .complete 26296,1 -- Red Bandana (6)
    .mob Moonbrook Thug
step
    >>Loot the |cRXP_LOOT_Mysterious Propaganda|r on the wall
    >>Loot the |cRXP_LOOT_Informational Pamphlet|r on the barrel
    >>Loot the |cRXP_LOOT_Moonbrook Times|r on the ground
    >>Loot the |cRXP_LOOT_Secret Journal|r up stairs in the house
    .complete 26295,4 --|Mysterious Propaganda: 1/1
    .goto 1436/0,1572.500,-10952.101
    .complete 26295,1 --|Informational Pamphlet: 1/1
    .goto 1436/0,1561.000,-10949.101
    .complete 26295,2 --|Issue of the Moonbrook Times: 1/1
    .goto 1436/0,1502.000,-11030.800
    .complete 26295,3 --|Secret Journal: 1/1
    .goto 1436/0,1495.800,-10953.200
step
    .goto 1436/0,1543.100,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Alpert|r
    .target Captain Alpert
    .turnin 26296 >>Turn in Evidence Collection
    .turnin 26295 >>Turn in Propaganda
    .accept 26297 >>Accept The Dawning of a New Day
step
    .goto 1436/0,1484.400,-11020.000
    >>|cRXP_WARN_Head to the center of Moonbrook and wait out the RP|r
    .complete 26297,1 --|Information from Moonbrook Rally gathered: 1/1
step
    .goto 1436/0,1543.100,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Alpert|r
    .target Captain Alpert
    .turnin 26297 >>Turn in The Dawning of a New Day
    .accept 26319 >>Accept Secrets Revealed
step
    .goto 1436/0,1512.500,-10917.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thoralius the Wise|r
    .target Thoralius the Wise
    .turnin 26319 >>Turn in Secrets Revealed
    .accept 26320 >>Accept A Vision of the Past
step
    #completewith next
    .goto 1415,40.85,81.98,15,0
    .goto 1415,40.92,81.99,15,0
    .goto 1415,40.90,82.18,10,0
    .goto 1415,40.77,82.58,15,0
    .goto 1415,40.48,82.44,5 >> Enter the Deadmines and zone into the instance
step
    .isOnQuest 26320
    .cast 79586 >> |cRXP_WARN_Use the|r [Incense Burner] |cRXP_WARN_while inside the Deadmines instance|r
    .timer 155,A Vision of the Past RP
    .use 58147
step
    .use 58147 >>|cRXP_WARN_Wait out the RP|r
    .complete 26320,1 -- Vision of the Past uncovered 1/1
step
    #completewith next
    .hs >> Hearth to Sentinel Hill
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.100,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Gryan Stoutmantle|r
    .target Marshal Gryan Stoutmantle
    .turnin 26320 >>Turn in A Vision of the Past
    --.accept 26322 >>Accept Rise of the Brotherhood
    --.timer 105,Rise of the Brotherhood RP
step << skip -- quest isn't needed for loremaster
    >>|cRXP_WARN_Wait out the RP|r
    .complete 26322,1 -- Rise of the Brotherhood witnessed 1/1
step
    .goto 1436/0,2110.100,-10514.500
    >>Kill |cRXP_ENEMY_Murlocs|r along the coast. Loot them for |T134269:0|t[|cRXP_LOOT_Captain Sanders' Treasure Map|r]
    .use 1357 >> |cRXP_WARN_Use|r |T134269:0|t[|cRXP_LOOT_Captain Sanders' Treasure Map|r] |cRXP_WARN_to start the quest|r
    .collect 1357,1,26353,1 -- Captain Sanders' Treasure Map (1)
    .accept 26353 >> Accept Captain Sanders' Hidden Treasure
    .mob Murloc Hunter
    .mob Murloc Warrior
step
    .goto 1436/0,2110.100,-10514.500
    >>Click the |cRXP_PICK_Captain's Footlocker|r on the ground
    .turnin 26353 >>Turn in Captain Sanders' Hidden Treasure
    .accept 26354 >>Accept Captain Sanders' Hidden Treasure
step
    .goto 1436/0,1598.700,-10514.800
    >>Click the |cRXP_PICK_Broken Barrel|r on the ground
    .turnin 26354 >>Turn in Captain Sanders' Hidden Treasure
    .accept 26355 >>Accept Captain Sanders' Hidden Treasure
step
    .goto 1436/0,1594.700,-9797.400
    >>Click the |cRXP_PICK_Old Jug|r on the ground
    .turnin 26355 >>Turn in Captain Sanders' Hidden Treasure
    .accept 26356 >>Accept Captain Sanders' Hidden Treasure
step
    #completewith next
    .goto 52,25.97,16.90,20 >> Swim out to the small island
step
    .goto 1436/0,2107.700,-9794.300
    >>Click the |cRXP_PICK_Locked Chest|r on the ground
    .turnin 26356 >>Turn in Captain Sanders' Hidden Treasure
step
    #completewith next
    .subzone 115 >> Travel to the Westfall Lighthouse
step
    .goto 1436/0,1949.100,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .target Captain Grayson
    .turnin 26371 >>Turn in The Legend of Captain Grayson
    .accept 26348 >>Accept The Coast Isn't Clear
    --.accept 26347 >>Accept Keeper of the Flame
    .accept 26349 >>Accept The Coastal Menace
step
    #completewith next
    >>Kill |cRXP_ENEMY_Murloc Tidehunters|r and |cRXP_ENEMY_Murloc Oracles|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols along the coast|r
    .complete 26349,1 --|Scale of Old Murk-Eye: 1/1
    .unitscan Old Murk-Eye
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>Kill |cRXP_ENEMY_Murloc Tidehunters|r and |cRXP_ENEMY_Murloc Oracles|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    .goto 1436/0,1949.000,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .target Captain Grayson
    .turnin 26348 >>Turn in The Coast Isn't Clear
    .turnin 26349 >>Turn in The Coastal Menace
]])
