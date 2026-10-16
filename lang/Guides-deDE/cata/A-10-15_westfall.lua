if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-15 Westfall
#next 15-20 Redridge
#defaultfor None
<<Alliance

step
    #completewith WestfallEntry
    .zone 52 >> Lauf nach Westfall
step
    .isOnQuest 26378
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26378 >>Gebt die Quest Heldenaufruf: Westfall! ab
    .accept 26209 >>Akzeptiert die Quest Der Mordfall war der Fall, den sie mir gaben
	.target Lieutenant Horatio Laine
step
    #label WestfallEntry
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .accept 26209 >>Akzeptiert die Quest Der Mordfall war der Fall, den sie mir gaben
	.target Lieutenant Horatio Laine
step
    #loop
    .goto 52,58.23,18.12,0
    .goto 52,58.56,16.21,20,0
    .goto 52,59.18,18.16,20,0
    .goto 52,58.12,19.58,20,0
    .goto 52,57.31,18.33,20,0
    .goto 52,58.56,16.21,20,0
    >>Sprecht mit |cRXP_FRIENDLY_Homeless MoP - Objekte Citizens|r, |cRXP_FRIENDLY_West Plains Drifters|r und |cRXP_FRIENDLY_Transients|r
    >>|cRXP_WARN_Ihr müsst ihnen zahlen, um die Hinweise zu erhalten!|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .turnin 26209 >>Gebt die Quest Der Mordfall war der Fall, den sie mir gaben ab
    .accept 26213 >>Akzeptiert die Quest Auf heißer Spur: Der Flusspfotenklan
    .accept 26214 >>Akzeptiert die Quest Auf der Spur: Murlocs
	.target Lieutenant Horatio Laine
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Riverpaw Späher|r und |cRXP_ENEMY_Riverpaw Gnolls|r. Plündert sie für |cRXP_LOOT_Riverpaw Gnoll Clue|r
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
    >>Tötet |cRXP_ENEMY_Murloc Trivial Oracles|r, |cRXP_ENEMY_Murloc Coastrunners|r, und |cRXP_ENEMY_Murloc Raiders|r. Plündert sie für |cRXP_LOOT_Murloc Clue|r
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
    >>Tötet |cRXP_ENEMY_Riverpaw Späher|r und |cRXP_ENEMY_Riverpaw Gnolls|r. Plündert sie für |cRXP_LOOT_Riverpaw Gnoll Clue|r
    .complete 26213,1 --1/1 Riverpaw Gnoll Clue
	.mob *Riverpaw Scout
	.mob *Riverpaw Gnoll
step
    .goto 1436/0,914.900,-9849.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .target Lieutenant Horatio Laine
    .turnin 26213 >>Gebt die Quest Auf heißer Spur: Der Flusspfotenklan ab
    .turnin 26214 >>Gebt die Quest Auf der Spur: Murlocs ab
    .accept 26215 >>Akzeptiert die Quest Ein Treffen mit Lou Zweischuh
step
    .goto 1436/0,1278.700,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Two-Shoed Lou|r
    .target Two-Shoed Lou
    .turnin 26215 >>Gebt die Quest Ein Treffen mit Lou Zweischuh ab
    .accept 26228 >>Akzeptiert die Quest Wie die Made im Speck
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jimb "Kerzen" McHannigan|r
    .target Jimb "Candles" McHannigan
    .accept 26229 >>Akzeptiert die Quest "Ich NEHMEN Kerze!"
step
    .goto 1436/0,1282.800,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mama Celeste|r
    .target Mama Celeste
    .accept 26230 >>Akzeptiert die Quest Festmahl oder Hungersnot
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Coyotes|r. Plündert sie für |cRXP_LOOT_Tails|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #loop
    .goto 52,51.5,19.8,40,0
    .goto 52,52.3,21.8,40,0
    .goto 52,50.5,22.8,40,0
    .goto 52,50.2,19.8,40,0
    >>Beute |cRXP_LOOT_Fresh Dirt|r vom Boden
    .complete 26230,2 --|Fresh Dirt: 5/5
step
    #loop
    .goto 52,51.6,17.8,50,0
    .goto 52,53.8,20.8,50,0
    .goto 52,50.0,22.4,50,0
    .goto 52,47.0,20.4,50,0
    .goto 52,48.6,16.2,50,0
    >>Tötet |cRXP_ENEMY_Coyotes|r. Plündert sie für |cRXP_LOOT_Tails|r
    .complete 26230,1 --|Coyote Tail: 6/6
    .mob Coyote
step
    #completewith BackOfMine
    .goto 52,53.24,92.20 >> Betretet Der Jangoschacht
step
    #completewith BackOfMine
    >>Tötet |cRXP_ENEMY_Kobold Diggers|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    #completewith BackOfMine
    .goto 52,46.405,19.289
    .cast 79262 >> |cRXP_WARN_Benutzt|r |T132762:0|t[Lou Zweischuhs altes Haus] |cRXP_WARN_am hinteren Ende des Jangoschachts|r
    .use 57761
step
    #label BackOfMine
    .goto 52,46.405,19.289
    .complete 26228,1
    .use 57761 >>Warte auf das RP
step
    #loop
    .goto 52,53.24,92.50,0
    .goto 52,46.40,19.28,50,0
    >>Tötet |cRXP_ENEMY_Kobold Diggers|r
    .complete 26229,1 --|Kobold Digger slain: 12/12
    .mob Kobold Digger
step
    .goto 1436/0,1281.100,-9857.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jimb "Kerzen" McHannigan|r
    .target Jimb "Candles" McHannigan
    .turnin 26229 >>Gebt die Quest "Ich NEHMEN Kerze!" ab
step
    .goto 1436/0,1278.800,-9852.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Two-Shoed Lou|r
    .target Two-Shoed Lou
    .turnin 26228 >>Gebt die Quest Wie die Made im Speck ab
    .accept 26232 >>Akzeptiert die Quest Lous Abschiedsworte
step
    .goto 1436/0,1282.700,-9846.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mama Celeste|r
    .target Mama Celeste
    .turnin 26230 >>Gebt die Quest Festmahl oder Hungersnot ab
step
    .goto 1436/0,1334.000,-9861.601
    >>|cRXP_WARN_Geht zu den |cRXP_ENEMY_Thugs|r hinter dem Bauernhaus. Wartet auf das Ende des Rollenspiels, dann tötet sie|r
    .complete 26232,1 --|Eavesdrop on Thugs.: 1/1
    .mob Thug
step
    .goto 1436/0,1276.100,-9855.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Horatio Laine|r
    .target Lieutenant Horatio Laine
    .turnin 26232 >>Gebt die Quest Lous Abschiedsworte ab
    .accept 26236 >>Akzeptiert die Quest Die Vernehmung der Saldeans
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .target Farmer Saldean
    .turnin 26236 >>Gebt die Quest Die Vernehmung der Saldeans ab
    .accept 26237 >>Akzeptiert die Quest Die Zeiten sind schwer
step
    .goto 1436/0,1042.100,-10112.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .accept 26241 >>Akzeptiert die Quest Westfalleintopf
step
    #completewith next
    >>Beute |cRXP_LOOT_Okra|r vom Boden
    .complete 26241,1 --|Okra: 6/6
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>Tötet |cRXP_ENEMY_Harvest Watchers|r. Plündert sie für |T133862:0|t[|cRXP_LOOT_Harvest Beobachter Herz|r]
    .use 57935 >>|cRXP_WARN_Benutzt|r |T133862:0|t[|cRXP_LOOT_Herz eines Erntebehüters|r] |cRXP_WARN_um die Quest zu starten|r
    .collect 57935,1,26252,1 -- Harvest Watcher Heart (1)
    .accept 26252 >> Akzeptiert die Quest Herz des Behüters
    .complete 26237,1 --|Harvest Watcher slain: 10/10
    .mob Harvest Watcher
step
    #loop
    .goto 52,54.6,34.6,50,0
    .goto 52,52.4,31.0,50,0
    .goto 52,55.0,30.0,50,0
    >>Beute |cRXP_LOOT_Okra|r vom Boden
    .complete 26241,1 --|Okra: 6/6
step
    .goto 1436/0,1055.200,-10128.700
    .accept 26252 >>Akzeptiert die Quest Herz des Behüters
    .turnin 26237 >>Gebt die Quest Die Zeiten sind schwer ab
    .turnin 26252 >>Gebt die Quest Herz des Behüters ab
    .accept 26257 >>Akzeptiert die Quest Es lebt!
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Goretusks|r. Plündert sie für |cRXP_LOOT_Flanks|r
    >>Tötet |cRXP_ENEMY_Young Fleshrippers|r. Plündert sie für |cRXP_LOOT_Stringy Fleischreißer Fleisch|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1283.100,-10164.700
    .use 57954 >> |cRXP_WARN_Benutzt|r |T133862:0|t[Herz eines Erntebehüters] |cRXP_WARN_auf einem |cRXP_ENEMY_Überladenen Erntegolem|r, um die Kontrolle über ihn zu übernehmen|r
    .complete 26257,1 --|Overloaded Harvest Golem enabled: 1/1
    .target Overloaded Harvest Golem
step
    .goto 1436/0,1460.500,-10221.601
    >>Tötet die |cRXP_ENEMY_Energized Ernten Reapers|r
    .complete 26257,2 --|Energized Harvest Reaper slain: 25/25
    .mob Energized Harvest Reaper
step
    .isOnQuest 26257
    .exitvehicle >> |cRXP_WARN_Verlasst|r |cRXP_ENEMY_Überladenen Erntegolem|r
step
    #loop
    .goto 52,41.4,37.4,60,0
    .goto 52,44.6,40.8,60,0
    .goto 52,47.0,46.0,60,0
    .goto 52,51.2,31.2,60,0
    >>Tötet |cRXP_ENEMY_Goretusks|r. Plündert sie für |cRXP_LOOT_Flanks|r
    >>Tötet |cRXP_ENEMY_Young Fleshrippers|r. Plündert sie für |cRXP_LOOT_Stringy Fleischreißer Fleisch|r
    .complete 26241,2 --|Goretusk Flank: 6/6
    .mob +Goretusk
    .complete 26241,3 --|Stringy Fleshripper Meat: 6/6
    .mob +Young Fleshripper
step
    .goto 1436/0,1042.100,-10112.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .turnin 26241 >>Gebt die Quest Westfalleintopf ab
step
    .goto 1436/0,1055.200,-10128.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .target Farmer Saldean
    .turnin 26257 >>Gebt die Quest Es lebt! ab
    .accept 26270 >>Akzeptiert die Quest Unser Dank ist Euch gewiss
step
    .goto 1436/0,1040.900,-10110.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .turnin 26270 >>Gebt die Quest Unser Dank ist Euch gewiss ab
    .accept 26266 >>Akzeptiert die Quest Hoffnung für das Volk
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hope Saldean|r
    .target Hope Saldean
    .turnin 26266 >>Gebt die Quest Hoffnung für das Volk ab
    .accept 26271 >>Akzeptiert die Quest Die Hungrigen und die Hoffnungslosen speisen
step
    .goto 1436/0,1042.800,-10504.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .accept 26371 >>Akzeptiert die Quest Die Legende des Kapitän Grausohn
step
    .goto 1436/0,1040.600,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .accept 26287 >>Akzeptiert die Quest Die Westfallbrigade
step
    .goto 1436/0,1045.200,-10508.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal Marschall Gryan Starkmantel|r
    .target Marshal Gryan Stoutmantle
    .accept 26286 >>Akzeptiert die Quest Die Verteidigung Westfalls
step
    #loop
    .goto 52,54.6,44.6,50,0
    .goto 52,55.0,50.6,50,0
    .goto 52,52.2,50.8,50,0
    >>Tötet |cRXP_ENEMY_Riverpaw Brutes|r, |cRXP_ENEMY_Riverpaw Bandits|r und |cRXP_ENEMY_Riverpaw Herbalists|r. Plündert sie für |cRXP_LOOT_Gnoll Angriffsbefehle|r
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
    .use 57991 >> |cRXP_WARN_Benutzen das|r |T237329:0|t[Westfalleintopf] |cRXP_WARN_neben |cRXP_FRIENDLY_Homeless|r um Späherkuppe|r
    .complete 26271,1 --|Westfall Homeless fed: 20/20
    .target Homeless Stormwind Citizen
    .target West Plains Drifter
    .target Small-time Hustler
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .turnin 26287 >>Gebt die Quest Die Westfallbrigade ab
    .accept 26288 >>Akzeptiert die Quest Jango Fleckfell
step
    .goto 1436/0,1022.700,-10499.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hope Saldean|r
    .target Hope Saldean
    .turnin 26271 >>Gebt die Quest Die Hungrigen und die Hoffnungslosen speisen ab
step
    .goto 1436/0,1045.000,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal Marschall Gryan Starkmantel|r
    .target Marshal Gryan Stoutmantle
    .turnin 26286 >>Gebt die Quest Die Verteidigung Westfalls ab
    .accept 26289 >>Akzeptiert die Quest Findet Agentin Kearnen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Heather|r
    .target Innkeeper Heather
    .goto 1436/0,1166.400,-10653.200
    .home >>Setzt euren Ruhestein auf dem Späherhügel
    .subzoneskip 108,1
step
    >>Tötet |cRXP_ENEMY_Jango Spothide|r
    >>Tötet |cRXP_ENEMY_Riverpaw Mystics|r
    >>Tötet |cRXP_ENEMY_Riverpaw Taskmasters|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    .target Agent Kearnen
    .turnin 26289 >>Gebt die Quest Findet Agentin Kearnen ab
    .accept 26290 >>Akzeptiert die Quest Geheimnisse des Turms
step
    #completewith next
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .subzone 5289 >> Betretet Jagdrufs Turm
step
    .isOnQuest 26290
    .goto 52,70.38,74.45
    .cast 79528 >> |cRXP_WARN_Benutzt den|r |T134724:0|t[Trank der Verschleierung] |cRXP_WARN_while inside Jagdrufs Turm|r
    .use 58112 >>|cRXP_WARN_Rennt vorbei am |cRXP_ENEMY_Söldner|r vor dem Turm. |cRXP_FRIENDLY_Agentin Kearnen|r wird sie treffen, sobald ihr gegen sie kämpft|r
step
    .goto 52,70.543,74.060
    >>|cRXP_WARN_Geht zur Spitze des Turms und wartet auf das Ende des Rollenspiels|r
    .complete 26290,1
step
    #completewith next
    +|cRXP_WARN_Verlasst Jagdrufs Turm|r
    .subzoneskip 5289,1
step
    .goto 1436/0,625.100,-11042.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    .target Agent Kearnen
    .turnin 26290 >>Gebt die Quest Geheimnisse des Turms ab
    .accept 26291 >>Akzeptiert die Quest Viel Ärger in Mondbruch
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Späherkuppe
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.300,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal Marschall Gryan Starkmantel|r
    .target Marshal Gryan Stoutmantle
    .turnin 26291 >>Gebt die Quest Viel Ärger in Mondbruch ab
    .accept 26292 >>Akzeptiert die Quest Auf nach Mondbruch!
step
    .goto 1436/0,1040.700,-10510.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .turnin 26288 >>Gebt die Quest Jango Fleckfell ab
step
    .goto 1436/0,1543.000,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Alpert|r
    .target Captain Alpert
    .turnin 26292 >>Gebt die Quest Auf nach Mondbruch! ab
    .accept 26295 >>Akzeptiert die Quest Propaganda
step
    #completewith MoonbrookThugs
    >>Plündert die |cRXP_LOOT_Mysterious Propaganda|r von der Wand
    >>Plündert den |cRXP_LOOT_Informational Handzettel|r auf dem Fass
    >>Plündert das |cRXP_LOOT_Moonbrook Times|r vom Boden
    >>Plündert das |cRXP_LOOT_Secret Tagebuch|r oben in der Hütte
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
    >>Tötet |cRXP_ENEMY_Moonbrook Thugs|r. Plündert sie für |T237277:0|t[|cRXP_LOOT_Red Bandana|r]
    .use 58117 >> |cRXP_WARN_Benutzen das|r |T237277:0|t[|cRXP_LOOT_Rotes Kopftuch|r] |cRXP_WARN_um die Quest zu starten|r
    .collect 58117,1,26296,1 -- Red Bandana (1)
    .disablecheckbox
    .accept 26296 >> Akzeptiert die Quest Beweissammlung
    .mob Moonbrook Thug
step
    #label MoonbrookThugs
    #loop
    .goto 52,42.6,69.6,40,0
    .goto 52,45.6,70.8,40,0
    .goto 52,43.8,67.4,40,0
    >>Tötet |cRXP_ENEMY_Moonbrook Thugs|r. Plündert sie für |cRXP_LOOT_Red Bandana|r
    .complete 26296,1 -- Red Bandana (6)
    .mob Moonbrook Thug
step
    >>Plündert die |cRXP_LOOT_Mysterious Propaganda|r von der Wand
    >>Plündert den |cRXP_LOOT_Informational Handzettel|r auf dem Fass
    >>Plündert das |cRXP_LOOT_Moonbrook Times|r vom Boden
    >>Plündert das |cRXP_LOOT_Secret Tagebuch|r oben in der Hütte
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Alpert|r
    .target Captain Alpert
    .turnin 26296 >>Gebt die Quest Beweissammlung ab
    .turnin 26295 >>Gebt die Quest Propaganda ab
    .accept 26297 >>Akzeptiert die Quest Der Anbruch eines neuen Tages
step
    .goto 1436/0,1484.400,-11020.000
    >>|cRXP_WARN_Geht zum Zentrum von Mondbruch und wartet auf das Ende des Rollenspiels|r
    .complete 26297,1 --|Information from Moonbrook Rally gathered: 1/1
step
    .goto 1436/0,1543.100,-10896.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Alpert|r
    .target Captain Alpert
    .turnin 26297 >>Gebt die Quest Der Anbruch eines neuen Tages ab
    .accept 26319 >>Akzeptiert die Quest Gelöste Geheimnisse
step
    .goto 1436/0,1512.500,-10917.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thoralius der Weise|r
    .target Thoralius the Wise
    .turnin 26319 >>Gebt die Quest Gelöste Geheimnisse ab
    .accept 26320 >>Akzeptiert die Quest Eine Sicht aus der Vergangenheit
step
    #completewith next
    .goto 1415,40.85,81.98,15,0
    .goto 1415,40.92,81.99,15,0
    .goto 1415,40.90,82.18,10,0
    .goto 1415,40.77,82.58,15,0
    .goto 1415,40.48,82.44,5 >> Betretet die Todesminen und betretet die Instanz
step
    .isOnQuest 26320
    .cast 79586 >> |cRXP_WARN_Benutzen das|r [Räuchergefäß] |cRXP_WARN_während des Aufenthalts in der Todesminen-Instanz|r
    .timer 155,Eine Sicht aus der Vergangenheit RP
    .use 58147
step
    .use 58147 >>Warte auf das RP
    .complete 26320,1 -- Vision of the Past uncovered 1/1
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Späherkuppe
    .cooldown item,6948,>2,1
step
    .goto 1436/0,1045.100,-10508.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal Marschall Gryan Starkmantel|r
    .target Marshal Gryan Stoutmantle
    .turnin 26320 >>Gebt die Quest Eine Sicht aus der Vergangenheit ab
    --.accept 26322 >>Accept Rise of the Brotherhood
    --.timer 105,Rise of the Brotherhood RP
step << skip -- quest isn't needed for loremaster
    >>Warte auf das RP
    .complete 26322,1 -- Rise of the Brotherhood witnessed 1/1
step
    .goto 1436/0,2110.100,-10514.500
    >>Tötet die |cRXP_ENEMY_Murlocs|r entlang der Küste. Plündert sie für |T134269:0|t[|cRXP_LOOT_Captain Sanders' Schatzkarte|r]
    .use 1357 >> |cRXP_WARN_Benutzt|r |T134269:0|t[|cRXP_LOOT_Captain Sanders' Schatzkarte|r] |cRXP_WARN_um die Quest zu starten|r
    .collect 1357,1,26353,1 -- Captain Sanders' Treasure Map (1)
    .accept 26353 >> Akzeptiert die Quest Käpt'n Sanders' versteckter Schatz
    .mob Murloc Hunter
    .mob Murloc Warrior
step
    .goto 1436/0,2110.100,-10514.500
    >>Hebt die |cRXP_PICK_Captain's Schließkiste|r vom Boden auf
    .turnin 26353 >>Gebt die Quest Käpt'n Sanders' versteckter Schatz ab
    .accept 26354 >>Akzeptiert die Quest Käpt'n Sanders' versteckter Schatz
step
    .goto 1436/0,1598.700,-10514.800
    >>Hebt das |cRXP_PICK_Kaputtes Fass|r vom Boden auf
    .turnin 26354 >>Gebt die Quest Käpt'n Sanders' versteckter Schatz ab
    .accept 26355 >>Akzeptiert die Quest Käpt'n Sanders' versteckter Schatz
step
    .goto 1436/0,1594.700,-9797.400
    >>Klickt |cRXP_PICK_Old Krug|r auf dem Boden
    .turnin 26355 >>Gebt die Quest Käpt'n Sanders' versteckter Schatz ab
    .accept 26356 >>Akzeptiert die Quest Käpt'n Sanders' versteckter Schatz
step
    #completewith next
    .goto 52,25.97,16.90,20 >> Schwimmt zur kleinen Insel
step
    .goto 1436/0,2107.700,-9794.300
    >>Klickt |cRXP_PICK_Verschlossene Truhe|r auf dem Boden
    .turnin 26356 >>Gebt die Quest Käpt'n Sanders' versteckter Schatz ab
step
    #completewith next
    .subzone 115 >> Reist zum Leuchtturm von Westfall
step
    .goto 1436/0,1949.100,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .target Captain Grayson
    .turnin 26371 >>Gebt die Quest Die Legende des Kapitän Grausohn ab
    .accept 26348 >>Nehmt die Quest Ärger an der Küste an
    --.accept 26347 >>Accept Keeper of the Flame
    .accept 26349 >>Akzeptiert die Quest Bedrohung an der Küste
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Murloc Tidehunters|r und |cRXP_ENEMY_Murloc Oracles|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>Tötet |cRXP_ENEMY_Old Murk-Eye|r. Plündert ihn für seine |cRXP_LOOT_Schuppe|r
    >>|cRXP_ENEMY_Trübauge der Alte|r |cRXP_WARN_patrouilliert entlang der Küste|r
    .complete 26349,1 --|Scale of Old Murk-Eye: 1/1
    .unitscan Old Murk-Eye
step
    #loop
    .goto 52,35.8,87.2,50,0
    .goto 52,30.6,79.8,50,0
    .goto 52,26.2,63.2,50,0
    >>Tötet |cRXP_ENEMY_Murloc Tidehunters|r und |cRXP_ENEMY_Murloc Oracles|r
    .complete 26348,1 --|Murloc Tidehunter slain: 7/7
    .mob +Murloc Tidehunter
    .complete 26348,2 --|Murloc Oracle slain: 7/7
    .mob +Murloc Oracle
step
    .goto 1436/0,1949.000,-11397.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .target Captain Grayson
    .turnin 26348 >>Gebt die Quest Ärger an der Küste ab
    .turnin 26349 >>Gebt die Quest Bedrohung an der Küste ab
]])
