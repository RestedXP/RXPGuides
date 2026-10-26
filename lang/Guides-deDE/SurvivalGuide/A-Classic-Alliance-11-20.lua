if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 13-15 Westfall
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Human/Gnome/Dwarf/NightElf
#next 15-18 Dunkelküste

step
    #sticky
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >> Lauf nach Westfall
step
    .goto Westfall,59.95,19.35
    .target Farmer Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bauer Brauenwirbel|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
step
    .goto Westfall,59.92,19.42
    .target Verna Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verna Brauenwirbel|r
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
step
    #completewith SalmaS
    .goto Westfall,56.04,31.23,65 >> Reist zu Saldeans Farm
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .accept 9 >> Akzeptiert die Quest Tod auf den Feldern
step
    #label SalmaS
    .goto Westfall,56.40,30.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .target Salma Saldean
    .accept 38 >> Akzeptiert die Quest Westfalleintopf
    .accept 22 >> Akzeptiert die Quest Pastete aus Geiferzahnleber
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >> Gebt die Quest Zurück zu Lewis ab
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .isOnQuest 109
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
step
    #era
    .goto Westfall,56.42,47.62
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall
step << Human
    #requires Lewis
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Heather|r
	>>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .vendor >>|T133918:0|t[Langzahniger Matschschnapper] |cRXP_WARN_ist sehr günstig|r
	.target Innkeeper Heather
step
	#completewith bennytime
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert es für eine |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith HarvestW
    >>Tötet |cRXP_ENEMY_Junger Geiferzahn|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r, |cRXP_LOOT_Geiferzahnschnauze|r und |cRXP_LOOT_Geiferzahnleber|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    >>Tötet |cRXP_ENEMY_Defias Trappers|r und |cRXP_ENEMY_Defias Smugglers|r. Plündert sie für |cRXP_LOOT_Red Leder Bandanas|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Öffnet |cRXP_PICK_Furlbrows Kleiderschrank|r. Plündert sie für |cRXP_LOOT_Furlbrows Taschenuhr|r
    >>|cRXP_WARN_Ihr könnt die |cRXP_PICK_Furlbrows Kleiderschrank|r von außen plündern, wenn ihr eure Kamera richtig neigt|r
	>>|cRXP_WARN_Passt auf |cRXP_ENEMY_Benny Blanco|r auf. Er schlägt hart zu|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
	#completewith next
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert es für eine |cRXP_LOOT_Handvoll Hafer|r
	>>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    >>Tötet |cRXP_ENEMY_Riverpaw Gnolls|r und |cRXP_ENEMY_Riverpaw Späher|r. Plündert sie für |cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40
    >>Tötet |cRXP_ENEMY_Murlocräuber|r und |cRXP_ENEMY_Murlocküstenläufer|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert es für eine |cRXP_LOOT_Handvoll Hafer|r
	>>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
    .isQuestComplete 22
    .target Salma Saldean
step
    #completewith next
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .vendor
    >>|cRXP_WARN_Do NOT sell |T133884:0|t[Murloc Augen], |T135997:0|t[Geiferzahn Snouts], |T134341:0|t[Geiferzahn Livers] oder |T133972:0|t[Stringy Vulture Fleisch]|r
	.target Farmer Saldean
step
    #label HarvestW
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Tötet |cRXP_ENEMY_Harvest Watchers|r. Plündert sie nach |cRXP_LOOT_Fläschchen Öl|r und |cRXP_LOOT_Okra|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1
    .mob Harvest Watcher
step
    .goto Westfall,52.49,42.11,75,0
    .goto Westfall,53.67,46.07,75,0
    .goto Westfall,61.60,45.55,75,0
    .goto Westfall,60.36,27.38,75,0
    .goto Westfall,54.63,19.20,75,0
    .goto Westfall,49.09,26.92,75,0
    .goto Westfall,47.89,42.94,75,0
    .goto Westfall,54.42,40.38
    >>Tötet |cRXP_ENEMY_Junger Geiferzahn|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r, |cRXP_LOOT_Geiferzahnschnauze|r und |cRXP_LOOT_Geiferzahnleber|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Gebt die Quest Tod auf den Feldern ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> Gebt die Quest Die Volksmiliz ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >> Die Bruderschaft der Defias annehmen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >> Gebt die Quest Auf Patrouille durch Westfall ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Gebt die Quest Rote Lederkopftücher ab
step << Druid
    .goto Westfall,32.6,22.6,30,0
    .goto Westfall,38.8,18.2,30,0
    .goto Westfall,41.0,12.0,30,0
    .goto Westfall,47.6,9.0,30,0
    .goto Westfall,51.8,9.4,30,0
    .goto Westfall,32.6,22.6
    .goto Westfall,38.8,18.2,0
    .goto Westfall,41.0,12.0,0
    .goto Westfall,47.6,9.0,0
    .goto Westfall,51.8,9.4,0
    .xp 16 >> Farmt Krabben in Westfall bis Stufe 16
step << Dwarf !Paladin/Gnome
    #label end
    .hs >> Benutzt euren Ruhestein nach Thelsamar
step << Dwarf !Paladin/Gnome
    #hardcore
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step << Human/Dwarf Paladin
    #label end
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thor
step << !NightElf
    .goto Ironforge,55.093,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nissa Feuerstein|r
    >>St. up von Euch |T135966:0|t[Erste Hilfe]
    .train 3274 >> Erlernt Geselle für Erste Hilfe
    .target Nissa Firestone
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .train 2567 >>Erlernt Wurfwaffen
    .target Bixi Wobblebonk
step << Dwarf Paladin
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >> Reise in Richtung |cRXP_FRIENDLY_Muiredon|r oben
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1785 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Gebt die Quest Der Foliant der Offenbarung ab
    .target Tiza Battleforge
step
    .goto Ironforge,39.553,57.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Gebt die Quest Die Berichte ab
    .target Senator Barin Redstone
    .isOnQuest 291
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>Kauft die folgenden Gegenstände für sofortige Questabgaben in Dunkelküste. Überspringt diesen Schritt, wenn ihr nicht kaufen wollt
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step << !NightElf
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Verlasst Eisenschmiede
step << !NightElf
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Reist zum Dun Morogh -> Sumpfland Skip-Spot
step << !NightElf
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
    >>|cRXP_WARN_Schaut das Video-Handbuch zuerst als Referenz!|r
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Weicht den |cRXP_ENEMY_Sumpflandkrokilisks|r und den |cRXP_ENEMY_Murlocs|r beim Durchqueren des Wassers aus|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Clickt hier für die Videoanleitung|r
    .goto Wetlands,12.1,60.3,80 >> Laufe zum Hafen von Menethil
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << !NightElf
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Neal Allen|r keine hat|r
	.target Neal Allen
    .bronzetube
step << !NightElf
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Samor Festivus|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Samor Festivus|r keine hat|r
    .target Samor Festivus
step << !NightElf
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Erlernt die Flugroute nach Sumpfland
    .target Shellei Brondir
step << Hunter !NightElf
	.goto Wetlands,11.334,59.554
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Murndan Derth|r
    >>|cRXP_WARN_Buy a|r |T135612:0|t[Großkalibrige Donnerbüchse]
    >>Überspringt diesen Schritt, wenn ihr es euch nicht leisten könnt
	.collect 3023,1 -- Large Bore Blunderbuss
    .target Murndan Derth
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Kaufe alle|r |T134831:0|t[Heiltrank] |cRXP_BUY_die du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Dewin Shimmerdawn|r keine hat|r
    .target Dewin Shimmerdawn
step << !NightElf
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Reist zum Hafen von Menethil. Wartet auf das Boot nach Dunkelküste
step << !NightElf
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    >>|cRXP_WARN_Skillt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_während ihr auf das Boot nach Dunkelküste wartet|r
    >>|cRXP_WARN_Skillt eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_mit|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_die ihr zuvor gefarmt habt. Skillt sie auf Stufe 10 idealerweise|r
step << NightElf !Druid
    .goto Westfall,56.556,52.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Erlernt die Flugroute nach Westfall
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step << Druid
	#completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip 1
    .fly Teldrassil >> Fliegt nach Rut'theran
    .target Silva Fil'naveth
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .accept 6121 >> Akzeptiert die Quest Neue Lektionen
    .accept 26 >> Akzeptiert die Quest Eine wertvolle Lektion
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dendrite Starblaze|r oben
    .turnin 6121 >> Gebt die Quest Neue Lektionen ab
    .accept 6122 >> Akzeptiert die Quest Die eigentliche Ursache
    .turnin 26 >> Gebt die Quest Eine wertvolle Lektion ab
    .accept 29 >> Akzeptiert die Quest Prüfung des Sees
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.6,51.6
    >>Schwimmen into Lake Elune'Ara
    >>Öffnet einen |cRXP_PICK_Schmuckstückbehälter|r. Plündert sie für ein |T134125:0|t[Schrein-Schmuckstück]
    >>|cRXP_WARN_Es kann an verschiedenen Orten unter Wasser spawnen|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #completewith next
    .cast 18960 >> Caste Teleportieren: Moonglade
    >>|cRXP_WARN_Es wird auf diese Weise schneller sein, damit ihr nicht länger schwimmen müsst|r
step << Druid
    .goto Moonglade,36.026,41.374
    .use 15877 >>|cRXP_WARN_Benutzt das|r |T134125:0|t[Schrein-Schmuckstück] |cRXP_WARN_beim Schrein von Remulos Baum|r
    .complete 29,1 --Complete the Trial of the Lake.
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Gebt die Quest Prüfung des Sees ab
    .target Tajarri
    .accept 272 >> Akzeptiert die Quest Prüfung des Seelöwen
step << NightElf Priest
    .goto StormwindClassic,38.550,26.853
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
step << NightElf Warrior
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    .vendor >> |cRXP_BUY_Buy|r |T133046:0|[Felshammer] |cRXP_BUY_if ihr könnt afford it|r
    .target Gunther Weller
step << NightElf Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    .vendor >> |cRXP_BUY_Buy|r |T133052:0|[Hammer] |cRXP_BUY_if ihr könnt afford it|r
    .target Gunther Weller
step << NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.130,57.704
    .train 201 >> Erlernt 1h Schwerter
step << NightElf Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Buy a|r |T135490:0|t[Verstärkter Bogen]
    >>|cRXP_BUY_Stock up on|r |T132382:0|t[Scharfer Pfeils]
    .collect 3026,1
    .target Frederick Stover
step << NightElf
    .goto StormwindClassic,43.065,26.156
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>St. up von Euch |T135966:0|t[Erste Hilfe]
    .train 3274 >> Erlernt Geselle für Erste Hilfe
    .target Shaina Fuller
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step << NightElf Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << NightElf Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step << NightElf
    .hs >> Ruhestein nach Auberdine
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 15-18 Dunkelküste
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
--#defaultfor !NightElf
#next 18-19 Loch Modan

step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .accept 3524 >> Akzeptiert die Quest An Land gespült
step << !NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
	.target Caylais Moonfeather
    .goto Darkshore,36.336,45.574
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
step << !NightElf
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaussiy|r
    .home >> Setzt den Ruhestein von Euch in Auberdine
    .target Innkeeper Shaussiy
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >> Die Treppe hinauf in Richtung |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >> Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Akzeptiert die Quest Verseuchtes Land
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .target Terenthis
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Akzeptiert die Quest Die Familie und die Angel
    .turnin 1141 >> Gebt die Quest Die Familie und die Angel ab
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>Tötet |cRXP_ENEMY_Pygmy Tide Crawlers|r und |cRXP_ENEMY_Young Reef Crawlers|r. Plündert sie für |cRXP_LOOT_Legs|r
    >>|cRXP_WARN_Ihr müsstet möglicherweise ins Wasser gehen, um sie zu finden|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>Plündert |cRXP_PICK_Gestrandete Seekreatur|r für |cRXP_LOOT_Seekreatur-Knochen|r
    .complete 3524,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>Entdeckt das Furbolg-Lager
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_Benutzt|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Tollwütigen Distelbären|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>Tötet |cRXP_ENEMY_Pygmy Tide Crawlers|r und |cRXP_ENEMY_Young Reef Crawlers|r. Plündert sie für |cRXP_LOOT_Legs|r
    >>|cRXP_WARN_Ihr müsstet möglicherweise ins Wasser gehen, um sie zu finden|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .turnin 983 >> Gebt die Quest Dröhnkiste 827 ab
step
#map Darkshore
	#era/som
	.goto Felwood,19.13,21.39
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .accept 1001 >> Akzeptiert die Quest Dröhnkiste 411
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    .turnin 3524 >> Gebt die Quest An Land gespült ab
    .accept 4681 >> Akzeptiert die Quest An Land gespült
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Reist zu |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Steg
step
#map Darkshore
    .goto Felwood,18.10,18.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Reist zum Ende des Docks, dann springt ins Wasser
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Tötet |cRXP_ENEMY_Darkshore Threshers|r. Plündert sie für |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Plündert die |cRXP_PICK_Skelettartige Meeresschildkröte|r für die |cRXP_LOOT_Meeresschildkrötenüberreste|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Gebt die Quest An Land gespült ab
    .target Gwennyth Bly'Leggonde
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >> Akzeptiert die Quest Höhlenpilze
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .accept 958 >> Akzeptiert die Quest Werkzeuge der Hochgeborenen
    .accept 954 >> Akzeptiert die Quest Bashal'Aran
step
	#era/som
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >>Tötet |cRXP_ENEMY_Darkshore Threshers|r. Plündert sie für |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,38.95,29.36,30 >> Schwimmt zum Wrack der Silber Dawning
step
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>|cRXP_WARN_Betretet das Wrack der Silber Dawning durch den Rumpf am Boden. Achtet darauf, dass eure Atemleiste voll ist, bevor ihr taucht|r
    >>Plündert |cRXP_LOOT_Schließkassette der Silber Dawning|r auf dem Boden
    .complete 982,1
step
    #completewith next
    .goto Darkshore,40.30,27.56,30 >> Schwimmt zum Wrack der Nebel Schleier
step
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >>|cRXP_WARN_Betretet das Wrack der Nebel Schleier durch den Rumpf am Boden. Achtet darauf, dass eure Atemleiste voll ist, bevor ihr taucht|r
    >>Plündert |cRXP_LOOT_Schließkassette der Nebel Schleier|r auf dem Boden
    .complete 982,2
step
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83
    >>Tötet |cRXP_ENEMY_Darkshore Threshers|r. Plündert sie für |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
	#era/som
    .goto Felwood,25.19,1.29
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 411|r auf dem Boden
    .turnin 1001 >> Gebt die Quest Dröhnkiste 411 ab
    .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
step << Druid
    #completewith cure1
    >>Sammelt 5 |T134187:0|t[Earthroot] während ihr Quests absolviert
    .collect 2449,5,6123,1
step
    #completewith Ameth
    >>Tötet |cRXP_ENEMY_Foreststriders|r und |cRXP_ENEMY_Foreststrider Fledglings|r. Plündert sie für |cRXP_LOOT_Strider Fleisch|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #era/som
    #completewith Ameth
    >>Tötet |cRXP_ENEMY_Moonstalkers|r und |cRXP_ENEMY_Moonstalker Schlaffi|r. Plündert sie für |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith bears1
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,44.18,20.60
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Benutzt|r |T134865:0|t[Leere Probenröhre] |cRXP_WARN_am Fuße des Cliffspring Rivers|r
    .complete 4762,1
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >> Reist nach Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Vermeidet |cRXP_ENEMY_Wilder Grell|r und |cRXP_ENEMY_Übler Grimmling|r auf dem weg zu töten|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Tötet |cRXP_ENEMY_Wild Grells|r und |cRXP_ENEMY_Vile Sprites|r. Plündert sie für |cRXP_LOOT_Earrings|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Tötet |cRXP_ENEMY_Deth'ryll Satyr|r. Plündert sie für |cRXP_LOOT_Moonstone Seal|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step << !NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>|cRXP_WARN_Ihr werdet aufleveln|r |T133971:0|t[Kochkunst] |cRXP_WARN_auf Stufe 10 später mit|r |T132832:0|t[|cRXP_LOOT_Klein Eier|r]
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    >>Reist zu |cRXP_PICK_The Rot Kristall|r
    .complete 4811,1
step << NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Reist zu |cRXP_PICK_Rotem Kristall|r
    .complete 4811,1
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .collect 6889,10,2178,1,0x20,cooking -- Small Egg
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    #completewith next
    .goto Darkshore,40.30,59.70,70 >> Reist südlich zu |cRXP_FRIENDLY_Schildwache Tysha Mondklinge|r in Ameth'Aran
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >> Akzeptiert die Quest Der Untergang von Ameth'Aran
step
    #completewith TheLay
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_ENEMY_Anaya Dämmerflucht|r |cRXP_WARN_patrouilliert Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r, |cRXP_ENEMY_Zuckender Hochgeborener|r und |cRXP_ENEMY_Klagende Hochgeborene|r. Plündert sie für ihre |cRXP_LOOT_Relikte|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>Klickt |cRXP_PICK_Der Untergang von Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_ENEMY_Anaya Dämmerflucht|r |cRXP_WARN_patrouilliert Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r, |cRXP_ENEMY_Zuckender Hochgeborener|r und |cRXP_ENEMY_Klagende Hochgeborene|r. Plündert sie für ihre |cRXP_LOOT_Relikte|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_ENEMY_Anaya Dämmerflucht|r |cRXP_WARN_patrouilliert Ameth'Aran. Ihr Respawn-Timer ist lang, und wenn sie gerade nicht da ist, könnt ihr diesen Schritt überspringen|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 953 >> Gebt die Quest Der Untergang von Ameth'Aran ab
step
    #era/som
    #completewith ReturnAuber
    >>Tötet |cRXP_ENEMY_Moonstalkers|r und |cRXP_ENEMY_Moonstalker Schlaffi|r. Plündert sie für |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith BearComplete
    >>Tötet |cRXP_ENEMY_Foreststriders|r und |cRXP_ENEMY_Foreststrider Fledglings|r. Plündert sie für |cRXP_LOOT_Strider Fleisch|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #completewith Beached4728
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    >>Tötet |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r und |cRXP_ENEMY_Windsprecher der Schwarzfelle|r
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    .complete 985,1 -- Blackwood Pathfinder
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker
    .mob +Blackwood Windtalker
step
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 16 >> Farmt bis Stufe 16

step
#map Darkshore
    .goto Felwood,19.64,39.52
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4722 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
#map Darkshore
    #label Beached4728
    .goto Felwood,18.41,49.43
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4728 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    #label BearComplete
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Tötet |cRXP_ENEMY_Foreststriders|r und |cRXP_ENEMY_Foreststrider Fledglings|r. Plündert sie für |cRXP_LOOT_Strider Fleisch|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
#map Darkshore
    #label ReturnAuber
    #completewith ManyBeached
    .goto Felwood,18.50,19.87,100 >> Reist nach Auberdine
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
step
#map Darkshore
    #label ManyBeached
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4728 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Reist zu |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Steg
step
#map Darkshore
	.isQuestComplete 963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
	.target Cerellean Whiteclaw
    .goto Felwood,18.10,18.48
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
step << !NightElf !Mage !Paladin !Warlock
    .goto Darkshore,33.17,40.17,40,0
    .goto Darkshore,33.17,40.17,0
    .zone Teldrassil >> Nehmt das Boot nach Darnassus
    .zoneskip Darnassus
step << !NightElf !Mage !Paladin !Warlock
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jocaste
step << !NightElf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jandria|r
    .goto Darnassus,37.901,82.742
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jandria
step << !NightElf Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darnath Bladesinger|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Darnath Bladesinger
step << !NightElf Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syurna|r im Baumhaus
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Syurna
step << !NightElf Hunter/!NightElf Warrior
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Erlernen Bogen
    .train 227 >> Erlernt Stäbe
    .target Ilyenia Moonfire
step << !NightElf !Mage !Paladin !Warlock
    .goto Darnassus,30.7,41.3,15 >> Das Lila Portal zurück nach Rut'heran nehmen
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << !NightElf !Mage !Paladin !Warlock
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
step
    #completewith next
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    +Kauft |T134059:0|t[Milde Gewürze]
    >>|cRXP_WARN_Benutzt die|r |T134059:0|t[Milde Gewürze] |cRXP_WARN_und Eure|r |T132832:0|t[Kleine Eier] |cRXP_WARN_um Kräuterbackeier herzustellen. Macht dies, bis Eure Kochkunst Stufe 10 erreicht hat|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    #completewith ezstrider
    +|cRXP_WARN_Benutzt euer|r |T133971:0|t[Kochkunst]|cRXP_WARN_-Handwerk, um Herb Baked Eggs zuzubereiten. Tut dies, bis eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_Stufe 10 erreicht hat|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .turnin 982 >> Gebt die Quest Tiefer Ozean, weites Meer ab
step
    #label ezstrider
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 958 >> Gebt die Quest Werkzeuge der Hochgeborenen ab
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
step
#sticky
#label tube1
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Benutzt die|r |T134865:0|t[Leer Wasser Tube] |cRXP_WARN_am Auberdine Mondbrunnen|r
    .complete 4812,1
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Benutzt die|r |T133748:0|t[Leer Läutern Schale] |cRXP_WARN_am Auberdine Mondbrunnen|r
    .collect 12347,1,4763,1
step
#requires tube1
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 985 >> Gebt die Quest Wie groß ist die Bedrohung? ab
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .accept 986 >> Akzeptiert die Quest Ein verirrter Meister
    .group
step
#map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r up stairs
    .accept 965 >> Der Turm von Althalaxx annehmen
    .target Sentinel Elissa Starbreeze
step
    #era/som
    #completewith CliffCave
    >>Tötet |cRXP_ENEMY_Moonstalkers|r und |cRXP_ENEMY_Moonstalker Schlaffi|r. Plündert sie für |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
    #completewith next
    .goto Felwood,31.29,24.14,15 >> Reist zum Roten Kristall erneut
step
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Klickt auf |cRXP_PICK_Der Rote Kristall|r
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,70 >> Reist zu |cRXP_FRIENDLY_Asterion|r bei Bashal'Aran
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
	.target Asterion
    .goto Felwood,27.70,10.03
    .turnin 957 >> Gebt die Quest Bashal'Aran ab
step << Paladin
    .goto Darkshore,50.74,34.68
	>>Tötet |cRXP_ENEMY_Blackwood Warriors|r und |cRXP_ENEMY_Blackwood Totemics|r. Plündert sie für |T132889:0|t[Linen Stoff]
    >>|cRXP_WARN_Ihr müsst 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eure spätere|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_Klassen-Quest aufheben|r
	.collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
.group
    .goto Darkshore,50.66,34.94
    >>Öffnet |cRXP_PICK_Getreidelager der Schwarzfelle|r. Plündert es für die |cRXP_LOOT_Getreideprobe der Schwarzfelle|r
    >>|cRXP_WARN_Plündern wird 2 |cRXP_ENEMY_Blackwood Furbolgs|r spawnen, die euch angreifen und auf euch zulaufen werden. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
.group
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tötet die |cRXP_ENEMY_Höhlenmutter|r
    >>|cRXP_WARN_Seid vorsichtig, denn die |cRXP_ENEMY_Distelbärjunges|r können|r |T132152:0|t[Verheeren]|cRXP_WARN_,wirken. Einen sofortigen Nahkampfangriff, der euch für 2 Sek. betäubt|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
.group
    .goto Darkshore,51.83,33.50
    >>Öffnet |cRXP_PICK_Blackwood Nussvorräte|r. Plündert |cRXP_LOOT_Nussprobe der Schwarzfelle|r
    >>|cRXP_WARN_Plündern wird 2 |cRXP_ENEMY_Blackwood Furbolgs|r spawnen, die euch angreifen und auf euch zulaufen werden. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
.group
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>Öffnet |cRXP_PICK_Obstlager der Schwarzfelle|r. Plündert es für |cRXP_LOOT_Obstprobe der Schwarzfelle|r
    >>|cRXP_WARN_Plündern wird 2 |cRXP_ENEMY_Blackwood Furbolgs|r spawnen, die euch angreifen und auf euch zulaufen werden. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
.group
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Benutzt die|r |T134712:0|t[Gefüllte Säuberungsschale] |cRXP_WARN_beim |cRXP_PICK_Feuer|r um|r |cRXP_ENEMY_Xabraxxis|r zu beschwören
    .timer 17,Die verderbten Schwarzfelle RP
    .use 12347
step
.group
    .goto Darkshore,52.38,33.39
    >>Tötet |cRXP_ENEMY_Xabraxxis|r. Öffnet die |cRXP_PICK_Xabraxxis Dämonentasche|r, die er auf den Boden fallen lässt. Plündert sie für den |cRXP_LOOT_Talisman der Verderbnis|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
.group << !Druid
#map Darkshore
    #label CliffCave
    #completewith next
    .goto Darkshore,54.99,32.04,30,0
    .goto Darkshore,54.99,33.41,15 >> Reist zur Klippenquell-Höhle
step << Druid
    >>|cRXP_WARN_Benutzt die|r |T134776:0|t[Leere Cliffspring Falls-Probe] |cRXP_WARN_im Wasser am Eingang der Klippenquell-Höhle|r
    .goto Darkshore,54.99,33.41
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
.group
    .goto Darkshore,55.66,34.89
    >>Plündert |cRXP_LOOT_Scaber-Stängel|r und |cRXP_LOOT_Todes-Kappe|r auf dem Boden
    >>|cRXP_WARN_Bleibt in der oberen Sektion. Wenn |cRXP_LOOT_Todes-Kappe|r nicht am Ende der oberen Seite ist, lasst euch fallen und holt eine von unten|r
    >>|cRXP_WARN_Stellt euch nicht mit dem Rücken zur Mitte hin! |cRXP_ENEMY_Sturmschuppen-Wellenreiter|r können euch zurückwerfen!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
.group
    .isQuestComplete 947
    .goto Darkshore,54.81,32.92,30 >> Verlasst die Klippenquell-Höhle
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Moonstalkers|r und |cRXP_ENEMY_Moonstalker Schlaffi|r. Plündert sie für |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 965 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 966 >> Der Turm von Althalaxx annehmen
step << !Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Tötet |cRXP_ENEMY_Dark Strand Fanatics|r. Plündert sie für |cRXP_LOOT_Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Tötet |cRXP_ENEMY_Dark Strand Fanatics|r. Plündert sie für |cRXP_LOOT_Parchments|r und |T132889:0|t[Linen Stoff]
    >>|cRXP_WARN_Ihr müsst 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eure|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_Klassenquest später aufbewahren|r
    .complete 966,1 --Worn Parchment (4)
    .collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Dark Strand Fanatic
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 966 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 967 >> Der Turm von Althalaxx annehmen
step
.group 3
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >> Reist zum Nebelrand
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Akzeptiert die Quest Gyromasts Rettung
    .target Gelkak Gyromast
step
.group 3
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Tötet |cRXP_ENEMY_Tobender Riffkriecher|r und |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für den |cRXP_LOOT_Unterteil von Gelkaks Schlüssel|r
    >>Achtet auf |cRXP_WARN_Wütende Riff-Kriechende|cRXP_ENEMY_ |T132152:0|t[Hauen] |rFähigkeit. Ihr könnt 200 Schaden augenblicklich von ihren Nahkampfangriffen erhalten|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    .goto Darkshore,54.93,12.19
    >>Tötet die |cRXP_ENEMY_Orakel der Grauflossen|r und die |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r. Plündert sie für den |cRXP_LOOT_Mitte von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Passt auf vor |cRXP_ENEMY_Grauflossenwurf Oracles|r |T136048:0|t[Blitzschlag] Schaden, sie können auch mit |T136052:0|t[Welle der Heilung] heilen|r
    >>Passt auf, denn |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r können |T136016:0|t[|cRXP_FRIENDLY_Gift|r] wirken im Nahkampf und hinterlassen einen DoT, der 13 Schaden alle 3 Sek. für 30 Sek. verursacht
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
.group 3
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Tötet |cRXP_ENEMY_Tobender Riffkriecher|r und |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für den |cRXP_LOOT_Unterteil von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Beachtet die |cRXP_ENEMY_Raging Reef Crawlers|r |T132152:0|t[Hauen]-Fähigkeit. Ihr könnt sofort 200 Schaden von ihren Nahkampfschlägen erhalten|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Tötet die |cRXP_ENEMY_Riesiger Waldschreiter|r. Plündert sie für die |cRXP_LOOT_Spitze von Gelkaks Schlüssel|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
.group
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Tötet |cRXP_ENEMY_Moonstalker Sires|r und |cRXP_ENEMY_Moonstalker Matriarchs|r. Plündert sie für |cRXP_LOOT_Pelts|r und |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Seid vorsichtig vor |cRXP_ENEMY_Moonstalker Matriarchs|r. Sie greifen immer mit einem |cRXP_ENEMY_Mondpirscherwicht|r an ihrer Seite an|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r wirken |T132090:0|t[Schwäche ausnutzen] als Hinterhaltangriff, der 20-40 Schaden verursacht, wenn ihr ihnen den Rücken zudreht
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
    .isOnQuest 986,1002
step
.group 3
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Gebt die Quest Gyromasts Rettung ab
    .accept 2078 >> Akzeptiert die Quest Gyromasts Rache
    .target Gelkak Gyromast
step
.group 3
#map Darkshore
    .goto Winterspring,5.59,21.09,10,0
    .goto Winterspring,6.37,16.66
    >>Sprecht mit dem |cRXP_FRIENDLY_Dreschonator 4100|r um die Eskorte zu starten
    >>Escortier |cRXP_FRIENDLY_Der Dreschonator 4100|r bis zu |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Tötet |cRXP_ENEMY_The Threshwackonator 4100|r sobald er feindselig ist
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig|r
    .skipgossip
    .complete 2078,1
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
    .mob The Threshwackonator 4100
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    .target Gelkak Gyromast
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Gebt die Quest Gyromasts Rache ab
    .isQuestComplete 2078
step
.group
    #sticky
    .destroy 7442 >> Zerstört Gyromast's Schlüssel aus eurem Inventar
step
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4727 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Schwimmt hinaus ins Wasser|r
    >>Öffnet die |cRXP_PICK_Merkwürdige Schließkassette|r. Plündert sie für den |cRXP_LOOT_Halber Anhänger der Wasser-Beweglichkeit|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Encrusted Tide Crawlers|r und |cRXP_ENEMY_Reef Crawlers|r. Plündert sie für |cRXP_LOOT_Crab Chunks|r
    >>|cRXP_WARN_Wenn |cRXP_ENEMY_Verkrustete Gezeiten-Kriechende|r zu stark sind, konzentriert euch auf|r |cRXP_ENEMY_Riff-Kriechende|r
    >>Seid vorsichtig da die |cRXP_ENEMY_Riffkriecher|r |T132155:0|t[Muskelriss] wirken.Ein sofortiger Angriff, der 30-55 Schaden verursacht
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
#map Darkshore
    .goto Winterspring,1.42,26.89
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
step
    .goto Darkshore,51.50,22.26,50,0
    .goto Darkshore,49.66,21.39
    >>Tötet |cRXP_ENEMY_Encrusted Tide Crawlers|r und |cRXP_ENEMY_Reef Crawlers|r. Plündert sie für |cRXP_LOOT_Crab Chunks|r
    >>|cRXP_WARN_Falls die |cRXP_ENEMY_Encrusted Tide Crawlers|r zu stark sind, konzentriert euch nur auf|r |cRXP_ENEMY_Reef Crawlers|r
    >>Seid vorsichtig da die |cRXP_ENEMY_Riffkriecher|r |T132155:0|t[Muskelriss] wirken.Ein sofortiger Angriff, der 30-55 Schaden verursacht
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,50.74,34.68
	.xp 18-2750 >>Farmt bis ihr 2750 XP von Stufe 18 entfernt seid
    >>Tötet |cRXP_ENEMY_Blackwood Warriors|r und |cRXP_ENEMY_Blackwood Totemics|r.
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
    #completewith NorthDarkshore
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >> Reist nach Auberdine
    .cooldown item,6948,<0
step
    #completewith next
    .hs >> Ruhestein nach Auberdine
    .cooldown item,6948,>0,1
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4727 >> Gebt die Quest Gestrandete Meeresschildkröte ab
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> Gebt die Quest Höhlenpilze ab
    .accept 948 >> Akzeptiert die Quest Onu
step
#map Darkshore
    #label NorthDarkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Darkshore,37.70,43.39
    .turnin 4813 >> Gebt die Quest Die Fragmente im Inneren ab
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >> Gebt die Quest Tharnariuns Hoffnung ab
step
.group
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 986 >> Gebt die Quest Ein verirrter Meister ab
    .accept 993 >> Akzeptiert die Quest Ein verirrter Meister
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
step << Druid
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Gebt die Quest Die eigentliche Ursache ab
    .target Alanndarian Nightsong
    .accept 6123 >> Akzeptiert die Quest Das Heilmittel sammeln
step << Druid
#label cure1
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>Ihr benötigt Kochen 50 für eine Quest später
    .collect 6889,40,90,1,0x21,cooking
    >>Beute |cRXP_LOOT_Lunarfungus|r auf dem Boden in der Höhle
    .complete 6123,2
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>Ihr benötigt Kochen auf Stufe 50 für eine spätere Quest
    .collect 6889,40,90,1,0x20,cooking
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step << Druid
    >>Beenden off collecting 5 |T134187:0|t[Earthroot]
    >>Ihr könnt sie entlang der Berge im Osten sammeln
    .collect 2449,5,6123,1
step << Druid
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Gebt die Quest Das Heilmittel sammeln ab
    .accept 6124 >> Akzeptiert die Quest Heilung der Kranken
    .target Alanndarian Nightsong
step << Druid
    .goto Darkshore,41.0,79.6
    >>|cRXP_WARN_Kopf südlich während ihr|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_auf|r |cRXP_ENEMY_Sickly Reh|r benutzt
    .complete 6124,1 -- Sickly Deer cured (10)
    .unitscan Sickly Deer
step << Druid
	#completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.2,30.4
    >>Gehe nach Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite Sternenschauer|r
    .turnin 6124 >> Gebt die Quest Heilung der Kranken ab
    .accept 6125 >> Akzeptiert die Quest Macht über Gift
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip 1
    .fly Teldrassil >> Fliegt nach Rut'theran
    .target Silva Fil'naveth
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r in der oberen Etage
    .turnin 6125 >> Gebt die Quest Macht über Gift ab
step << Druid
    .goto Darnassus,30.7,41.3 >> Das Lila Portal zurück nach Rut'heran nehmen
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Reist zu den Auberdine Docks. Wartet auf das Boot zum Hafen von Menethil
step
    .goto Darkshore,32.44,43.71
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_während ihr auf das Boot nach Hafen von Menethil wartet|r
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 20-21 Dunkelküste/Eschental
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#next 21-23 Steinkrallengebirge/Ashenvale

step << Druid
	#completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
	>>Gehe nach Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step
    #completewith TheryluneE
    .hs >> Ruhestein nach Auberdine
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto Darkshore,37.21,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tKlickt auf das |cRXP_FRIENDLY_GESUCHT Poster|r
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >> Akzeptiert die Quest Höhlenpilze
step
    .goto Darkshore,37.44,41.83
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Benutzt die|r |T133748:0|t[Leer Läutern Schale] |cRXP_WARN_in the Auberdine Mondbrunnen|r
    .collect 12347,1,4763,1
step
    .goto Darkshore,38.326,43.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .target Gershala Nightwhisper
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
step
    .goto Darkshore,50.66,34.94
    >>Öffnet |cRXP_PICK_Getreidelager der Schwarzfelle|r. Plündert es für die |cRXP_LOOT_Getreideprobe der Schwarzfelle|r
    >>|cRXP_WARN_Plündern wird 2 |cRXP_ENEMY_Blackwood Furbolgs|r spawnen, die euch angreifen und auf euch zulaufen werden. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tötet die |cRXP_ENEMY_Höhlenmutter|r
    >>|cRXP_WARN_Seid vorsichtig, denn die |cRXP_ENEMY_Distelbärjunges|r können|r |T132152:0|t[Verheeren]|cRXP_WARN_,wirken. Einen sofortigen Nahkampfangriff, der euch für 2 Sek. betäubt|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
    .goto Darkshore,51.83,33.50
    >>Öffnet |cRXP_PICK_Blackwood Nut Stores|r. Plündert es für |cRXP_LOOT_Nussprobe der Schwarzfelle|r
    >>|cRXP_WARN_Plündern wird 2 |cRXP_ENEMY_Blackwood Furbolgs|r spawnen, die euch angreifen und auf euch zulaufen werden. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>Öffnet |cRXP_PICK_Obstlager der Schwarzfelle|r. Plündert es für |cRXP_LOOT_Obstprobe der Schwarzfelle|r
    >>|cRXP_WARN_Plündern wird 2 |cRXP_ENEMY_Blackwood Furbolgs|r spawnen, die euch angreifen und auf euch zulaufen werden. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Benutzt die|r |T134712:0|t[Gefüllte Säuberungsschale] |cRXP_WARN_beim |cRXP_PICK_Feuer|r um|r |cRXP_ENEMY_Xabraxxis|r zu beschwören
    .timer 17,Die verderbten Schwarzfelle RP
    .use 12347
step
    .goto Darkshore,52.38,33.39
    >>Tötet |cRXP_ENEMY_Xabraxxis|r. Öffnet die |cRXP_PICK_Xabraxxis Dämonentasche|r, die er auf den Boden fallen lässt. Plündert sie für den |cRXP_LOOT_Talisman der Verderbnis|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,55.66,34.89
    >>Plündert |cRXP_LOOT_Scaber Stalks|r und |cRXP_LOOT_Death Cap|r vom Boden
    >>|cRXP_WARN_Bleibt im oberen Bereich. Falls die |cRXP_LOOT_Death Cap|r am Ende der oberen Seite nicht ist, springt hinunter und holt euch eine von unten|r
    >>|cRXP_WARN_Wendet euren Rücken nicht dem Zentrum zu! |cRXP_ENEMY_Stormscale Winken Rider's|r können euch zurückstoßen!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
--TODO: Add logout skip video
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> Gebt die Quest Höhlenpilze ab
    .accept 948 >> Akzeptiert die Quest Onu
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >> Gebt die Quest Tharnariuns Hoffnung ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .accept 986 >> Akzeptiert die Quest Ein verirrter Meister
step
    #completewith moonstalkers
    >>Tötet |cRXP_ENEMY_Moonstalker Sires|r und |cRXP_ENEMY_Moonstalker Matriarchs|r. Plündert sie für |cRXP_LOOT_Pelts|r und |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Seid vorsichtig vor |cRXP_ENEMY_Moonstalker Matriarchs|r. Sie greifen immer mit einem |cRXP_ENEMY_Mondpirscherwicht|r an ihrer Seite an|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r wirken |T132090:0|t[Schwäche ausnutzen] als Hinterhaltangriff, der 20-40 Schaden verursacht, wenn ihr ihnen den Rücken zudreht
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
	#era/som
    #completewith Murkdeep
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>Seht euch vor, da sie wirkt |T132152:0|t[Verheeren], einen Sofortangriff, der 20-40 Schaden verursacht und |cRXP_WARN_euch für 2s zu Boden wirft|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
#map Darkshore
    #completewith OnuGrove
    .goto Felwood,27.00,55.59,80 >> Reist zum Hain der Uralten
step
#map Darkshore
    #label OnuGrove
    .goto Felwood,27.00,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Gebt die Quest Der Hain der Uralten ab << NightElf
    .turnin 948 >> Gebt die Quest Onu ab
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
    .target Onu
step
    #completewith next
    #label MasterG
    .goto Darkshore,38.54,86.05,60 >> Reist zur Meistergleve
step
#label moonstalkers
    .goto Darkshore,38.54,86.05
    >>Entdeckt Die Meistergleve
    >>|cRXP_ENEMY_Zwielicht-Schläger|r |cRXP_WARN_können|r |T132343:0|t[Entwaffnen] |cRXP_WARN_euch für 6 Sek.|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Zwielicht-Jünger|r |cRXP_WARN_wirkt|r |T135953:0|t[Erneuerung] |cRXP_WARN_und eine 3 Sekunden|r |T135915:0|t[Heilung]
    .complete 944,1
step
    #completewith next
    .cast 5809 >> |cRXP_WARN_Benutzt die|r |T134715:0|t[Wahrsagephiole] |cRXP_WARN_und platziert sie auf dem Boden|r
    .use 5251
step
    .goto Darkshore,38.54,86.05
    .use 5251 >> Klickt auf die |cRXP_PICK_Wahrsageschale|r
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    >>|cRXP_ENEMY_Zwielicht-Schläger|r |cRXP_WARN_können|r |T132343:0|t[Entwaffnen] |cRXP_WARN_euch für 6 Sek.|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Zwielicht-Jünger|r |cRXP_WARN_wirkt|r |T135953:0|t[Erneuerung] |cRXP_WARN_und eine 3 Sekunden|r |T135915:0|t[Heilung]
step
    .goto Ashenvale,22.24,2.52
    >>Klickt das |cRXP_PICK_Twilight-Foliant|r
    .turnin 949 >> Gebt die Quest Das Twilight-Lager ab
    .accept 950 >> Akzeptiert die Quest Rückkehr zu Onu
    >>|cRXP_ENEMY_Zwielicht-Schläger|r |cRXP_WARN_können|r |T132343:0|t[Entwaffnen] |cRXP_WARN_euch für 6 Sek.|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Zwielicht-Jünger|r |cRXP_WARN_wirkt|r |T135953:0|t[Erneuerung] |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
step
    .goto Ashenvale,22.36,3.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therylune|r. Es wird eine Escort quest starten
    >>|cRXP_WARN_Überspringt diesen Schritt, falls sie nicht da ist|r
    >>|cRXP_ENEMY_Zwielicht-Schläger|r |cRXP_WARN_können|r |T132343:0|t[Entwaffnen] |cRXP_WARN_euch für 6 Sek.|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Zwielicht-Jünger|r |cRXP_WARN_wirkt|r |T135953:0|t[Erneuerung] |cRXP_WARN_und eine 3 Sekunden|r |T135915:0|t[Heilung]
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Therylune|r aus Der Meistergleve|r
    >>|cRXP_ENEMY_Zwielicht-Schläger|r |cRXP_WARN_können|r |T132343:0|t[Entwaffnen] |cRXP_WARN_euch für 6 Sek.|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Zwielicht-Jünger|r |cRXP_WARN_wirkt|r |T135953:0|t[Erneuerung] |cRXP_WARN_und eine 3 Sekunden|r |T135915:0|t[Heilung]
    .complete 945,1 -- Escort Therylune
    .isOnQuest 945
step
    .destroy 5251 >> Zerstört das |T134715:0|t[Wahrsagephiole]. Ihr braucht sie nicht mehr.
step
    .goto Darkshore,39.3,91.8,60,0
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
	.goto Darkshore,39.3,91.8
    >>Tötet |cRXP_ENEMY_Moonstalker Sires|r und |cRXP_ENEMY_Moonstalker Matriarchs|r. Plündert sie für |cRXP_LOOT_Pelts|r und |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Seid vorsichtig vor |cRXP_ENEMY_Moonstalker Matriarchs|r. Sie greifen immer mit einem |cRXP_ENEMY_Mondpirscherwicht|r an ihrer Seite an|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r wirken |T132090:0|t[Schwäche ausnutzen] als Hinterhaltangriff, der 20-40 Schaden verursacht, wenn ihr ihnen den Rücken zudreht
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
#map Darkshore
    #sticky
    #label prospector
    .goto Felwood,18.08,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>Das wird eine Eskorte starten
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 731,1
    .isOnQuest 731
step
    .goto Ashenvale,13.97,4.10
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Diese Quest kann SEHR schwierig sein. Bekämpft die |cRXP_ENEMY_Murlocs|r einzeln, Andernfalls könntest du die Aggro von mehreren gleichzeitig auf dich ziehen.|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
step
    .goto Ashenvale,13.93,2.01
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    #label Murkdeep
    .goto Darkshore,36.64,76.53
    >>Tötet |cRXP_ENEMY_Greymist Warriors|r und |cRXP_ENEMY_Greymist Hunters|r im Lager
    >>|cRXP_WARN_Bewegt euch zum Freudenfeuer in der Mitte des Lagers, um|r Gurgelbacke|cRXP_ENEMY_ zu beschwören|r
    >>Tötet |cRXP_ENEMY_Gurgelbacke|r. Er wird aus dem Wasser herbeirennen.
    .complete 4740,1
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
	#era/som
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    #optional
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>Seht euch vor, da sie wirkt |T132152:0|t[Verheeren], einen Sofortangriff, der 20-40 Schaden verursacht und |cRXP_WARN_euch für 2s zu Boden wirft|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #era/som
    .goto Darkshore,41.389,80.565
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 525|r auf dem Boden
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .isOnQuest 1003
step
.group
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Reist zu |cRXP_FRIENDLY_Volcor|r in der Höhle
step
.group
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Gebt die Quest Ein verirrter Meister ab
    .accept 995 >> Akzeptiert die Quest Flucht durch Verstohlenheit
    .timer 20,Flucht durch Verstohlenheit RP
    .target Volcor
    .isQuestTurnedIn 986
step
.group
    .goto Darkshore,44.44,84.69
    >>Warte auf das RP
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Gebt die Quest Mathystra-Relikte ab
    .isQuestComplete 951
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r, um die Eskorte zu beginnen
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn er nicht dort ist. Es kann bis zu 25 Minuten dauern, bis er respawnt|r
	.target Kerlonian Evershade
    .accept 5321 >> Akzeptiert die Quest Der Schläfer ist erwacht
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Begleitet |cRXP_FRIENDLY_Kerlonian|r zu Maestras Posten im Eschental|r
    .use 13536 >> |cRXP_WARN_Benutzt das|r |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r] |cRXP_WARN_wenn |cRXP_FRIENDLY_Kerlonian|r neben euch einschläft|r
    >>|cRXP_WARN_Vermeidet es so weit wie möglich, auf der Hauptstraße zu laufen. Feinde spawnen nur, wenn ihr auf der Straße seid|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Gebt die Quest Der Schläfer ist erwacht ab
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Gebt die Quest Der Turm von Althalaxx ab
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .accept 970 >> Der Turm von Althalaxx annehmen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
    .xp <20,1
step
    #era/som
    .goto Ashenvale,31.25,30.70
    >>Tötet |cRXP_ENEMY_Kultist des dunklen Strangs|r, |cRXP_ENEMY_Adept des dunklen Strangs|r, |cRXP_ENEMY_Vollstrecker des dunklen Strangs|r und |cRXP_ENEMY_Ausgräber des dunklen Strangs|r. Plündert sie für |cRXP_LOOT_Leuchtender Seelenedelstein|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus. Sie können schwer zu sehen sein|r
    .complete 1010,1
    .isOnQuest 1010
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 973 >> Der Turm von Althalaxx annehmen
step
    .goto Ashenvale,31.89,22.53
    .xp 20 >> Farmt bis Stufe 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus. Sie können schwer zu sehen sein|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Gebt die Quest Bathranshaar ab
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 973 >> Der Turm von Althalaxx annehmen
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.40,48.00
    .subzone 415 >> Reist nach Astranaar
step
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Erlernt die Flugroute nach Astranaar
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >> Akzeptiert die Quest Der Zoramstrand
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Wache halten im Steinkrallengebirge annehmen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Akzeptiert die Quest Reise zum Steinkrallengipfel
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >> Raenes Säuberung annehmen
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kimlya|r
    .home >> Setzt von Euch Ruhestein auf Astranaar
    .target Innkeeper Kimlya
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Gebt die Quest Orendils Heilmittel ab
step
.dungeon WC
    #completewith TravelRatchet
    .goto Ashenvale,20.31,42.33,0
    .zone The Barrens >> Farmt |cRXP_ENEMY_Salzflossen Murlocs|r während ihr nach einer Gruppe für die Höhlen des Wehklagens sucht. Der Ort ist auf eurer Karte gekennzeichnet
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Reist nach Ratschet im Brachland. Folgt dem Pfeil, um die |cRXP_ENEMY_Brachland-Wachen|r zu vermeiden
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Erlernt die Ratschet-Flugroute
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kranführer Moppelfuzz|r
    .accept 959 >> Ärger auf den Docks annehmen
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >> Reist zu den Höhlen des Wehklagens. Erklimmt den Berg und springt dann in die versteckte Höhle über dem Eingang der Höhlen des Wehklagens hinein. Folgt dem Pfeil, um zu |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r zu gelangen
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Deviatbälge annehmen
    .target +Nalpak
    .goto 1414,51.912,55.422 -- Nalpak
    .accept 1487 >> Ausrottung der Deviat annehmen
    .goto 1414,51.918,55.444 -- Ebru
    .target +Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    >>|cRXP_WARN_Dies kann INNERHALB und AUSSERHALB der Höhlen des Wehklagens abgeschlossen werden|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85
    >>Tötet |cRXP_ENEMY_Zausel der Verrückte|r. Plündert ihn für |cRXP_LOOT_99 Jahre alter Portwein|r
    >>|cRXP_ENEMY_Zausel der Verrückte|r |cRXP_WARN_kann an mehreren Orten erscheinen|r
    >>|cRXP_WARN_Diese Quest wird AUSSERHALB der Höhlen des Wehklagens abgeschlossen|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414,52.37,55.20
    +Betretet die Höhlen des Wehklagens
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r-Kreaturen
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Töte |cRXP_ENEMY_Lord Kobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r und |cRXP_ENEMY_Lady Anacondra|r dann sprich mit dem |cRXP_FRIENDLY_Jünger von Naralex|r am Anfang der Instanz um die Escort zu starten
    >>Begleitet den |cRXP_FRIENDLY_Jünger von Naralex|r durch die Höhlen des Wehklagens und absolviert das Erwachungsritual
    >>Tötet |cRXP_ENEMY_Mutanus der Verschlinger|r. Plündert ihn für den |T135229:0|t[|cRXP_LOOT_Leuchtenden Splitter|r]
    >>|cRXP_WARN_Benutzt den |T135229:0|t[|cRXP_LOOT_Leuchtenden Splitter|r] um die Quest zu starten|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Der leuchtende Splitter annehmen
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Tötet alle Arten von |cRXP_ENEMY_Deviat|r Kreaturen. Plündert sie für ihre |cRXP_LOOT_Deviatbälge|r
    >>|cRXP_WARN_Dies kann INNERHALB und AUSSERHALB der Höhlen des Wehklagens abgeschlossen werden|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Reist nach Ratschet. Ihr werdet die oben genannten Quests bald abgeben
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kranführer Moppelfuzz|r
    .turnin 959 >> Gebt die Quest Ärger auf den Docks ab
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Erklimmt den steilen Berg über den Höhlen des Wehklagens. Folgt dem Pfeil
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Falla Weisenwind|r
    .turnin 6981 >> Gebt die Quest Der leuchtende Splitter ab
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >> Fallt hinab in die versteckte Höhle über dem Eingang der Höhlen des Wehklagens. Folgt dem Pfeil zu |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Gebt die Quest Deviatbälge ab
    .goto 1414,51.912,55.422 -- Nalpak
    .target +Nalpak
    .turnin 1487 >> Gebt die Quest Ausrottung der Deviat ab
    .goto 1414,51.918,55.444 -- Ebru
    .target +Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Gebt die Quest Ausrottung der Deviat ab
    .goto 1414,51.918,55.444 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nalpak|r und |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Gebt die Quest Deviatbälge ab
    .goto 1414,51.912,55.422 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Ruhestein nach Astranaar
]])
