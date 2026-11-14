if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

----Start of <1.5x Westfall----
----Night Elves and Hunters stay in Darkshore and Grind----

RXPGuides.RegisterGuide([[
#xprate <1.5
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#name 13-15 Westfall
#displayname 14-15 Westfall << Dwarf/Gnome
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#next 14-16 Dunkelküste
#defaultfor !NightElf !Hunter

step
    #sticky
    #optional
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >> Lauf nach Westfall
step
    .goto Westfall,59.95,19.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bauer Brauenwirbel|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .target Farmer Furlbrow
step
    .goto Westfall,59.92,19.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Akzeptiert die Quest Westfall-Eintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .target Verna Furlbrow
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
    .turnin 36 >> Gebt die Quest Westfall-Eintopf ab
    .target Salma Saldean
    .accept 38 >> Akzeptiert die Quest Westfall-Eintopf
    .accept 22 >> Akzeptiert die Quest Pastete aus Geiferzahnleber
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >> Gebt die Quest Zurück zu Lewis ab
step << Gnome/Dwarf
    #completewith next
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .isOnQuest 109
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
step
    #xprate <1.2
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
    >>|cRXP_BUY_Kaufe Essen/Wasser, falls du welches brauchst|r
    .vendor >>|T133918:0|t[Langzahniger Matschschnapper] |cRXP_WARN_ist sehr günstig|r
	.target Innkeeper Heather
step
	#completewith GnollPaws
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert sie für die |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
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
    #completewith TravelCompass
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto Westfall,40.4,52.7,75 >> Reist zu Alexston's Bauernhof, |cRXP_WARN_Arbeitete an den anderen Questzielen, während ihr euch dorthin begebt|r
step
    #sticky
    #completewith bennytime
    >>Tötet die |cRXP_ENEMY_Erntebehüer|r auf jedem Feld, während ihr vorbeilauft
    >>Plündert sie für ihr |cRXP_LOOT_Okra|r und ihr |cRXP_LOOT_Fläschchen Öl|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto Westfall,36.24,54.52
    >>Öffne |cRXP_PICK_Alexstons Truhe|r. Plündert sie für |cRXP_LOOT_Ein einfacher Kompass|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    #completewith bennytime
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
    #completewith bennytime
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto Westfall,50.0,22.6,75 >> Reist zum Jansen-Anwesen, |cRXP_WARN_bearbeitet die anderen Questziele, während ihr dorthin unterwegs seid|r
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Öffnet |cRXP_PICK_Furlbrows Kleiderschrank|r. Plündert sie für |cRXP_LOOT_Furlbrows Taschenuhr|r
    >>|cRXP_WARN_Ihr könnt die |cRXP_PICK_Furlbrows Kleiderschrank|r von außen plündern, wenn ihr eure Kamera richtig neigt|r
	>>|cRXP_WARN_Passt auf |cRXP_ENEMY_Benny Blanco|r auf. Er schlägt hart zu|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    #xprate <1.2
    #completewith next
    >>Tötet |cRXP_ENEMY_Gnoll der Flusspfoten|r und |cRXP_ENEMY_Späher der Flusspfoten|r. Plündert sie für ihre |T134297:0|t|cRXP_LOOT_Gnolltatze|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36
    .goto Westfall,56.40,9.40,0
    >>|cRXP_WARN_Reist zur Küste, tötet Gnolle auf dem Weg für die |T134297:0|t[|rGnolltatze|cRXP_LOOT_] falls nötig|r
    >>Tötet |cRXP_ENEMY_Murlocräuber|r und |cRXP_ENEMY_Murlocküstenläufer|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    #xprate <1.2
    #label GnollPaws
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    .goto Westfall,42.82,14.70,0
    .goto Westfall,52.36,14.82,0
    .goto Westfall,56.81,13.30,0
    >>Tötet |cRXP_ENEMY_Gnoll der Flusspfoten|r und |cRXP_ENEMY_Späher der Flusspfoten|r. Plündert sie für ihre |T134297:0|t|cRXP_LOOT_Gnolltatze|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert es für eine |cRXP_LOOT_Handvoll Hafer|r
	>>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #xprate <1.2
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step << Human Warlock
    #xprate >1.1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .target +Verna Furlbrow
    .goto Westfall,59.92,19.42
    .isOnQuest 184
step
    #xprate <1.2
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .target +Verna Furlbrow
    .goto Westfall,59.92,19.42
step
    #xprate >1.1
    #optional << Human Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    #completewith SaldeanVendor
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .vendor >> |cRXP_BUY_Verkauft euren trash|r
    >>|cRXP_WARN_Verkauft NICHT|r |T133884:0|t[Murlocauge], |T135997:0|t[Geiferzahnschnauze], |T134341:0|t[Geiferzahnleber] |cRXP_WARN_or|r |T133972:0|t[Sehniges Geierfleisch]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Gebt die Quest Tod auf den Feldern ab
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
    .turnin 38 >> Gebt die Quest Westfall-Eintopf ab
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 38 >> Gebt die Quest Westfall-Eintopf ab
    .isQuestComplete 38
    .target Salma Saldean
  step
    .isQuestAvailable 38
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Tötet die |cRXP_ENEMY_Erntebehüter|r. Plündert sie für ihre |cRXP_LOOT_Okraschote|r und ihre |cRXP_LOOT_Fläschchen Öl|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    .isQuestTurnedIn 38
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
    >>Tötet die |cRXP_ENEMY_Erntebehüter|r. Plündert sie für ihr |cRXP_LOOT_Fläschchen Öl|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
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
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >> Gebt die Quest Westfall-Eintopf ab
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
step
    .goto Westfall,50.0,45.4
    >>Beendet die |cRXP_ENEMY_Defias|r-Quests in dem auf eurer Karte markierten Bereich. |cRXP_WARN_Es ist ein dynamischer Spawnbereich – wenn ihr genug Mobs tötet, werden sie weiterhin spawnen|r
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> Gebt die Quest Die Volksmiliz ab
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >> Die Bruderschaft der Defias annehmen
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >> Gebt die Quest Auf Patrouille durch Westfall ab
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Quartermaster Lewis
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Gebt die Quest Rote Lederkopftücher ab
step << Gnome Rogue/Dwarf Rogue
    #completewith next
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
    .money <0.3815
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Kauft einen|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr oder etwas Besseres aus dem Auktionshaus und rüstet es als eure Zweitwaffe aus|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Kauft einen|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionator Jaxon|r
    >>Kauft die folgenden Gegenstände für eine schnellere Abgabe in der Dunkelküste in Kürze
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T133972:0|t[Sehniges Geierfleisch]
    >>|T133884:0|t[Murlocauge]
    >>|T135997:0|t[Geiferzahnschnauze]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Geiferzahnleber]
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .isQuestComplete 399
step << Gnome Rogue/Dwarf Rogue
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Gebt die Quest Ein bescheidener Anfang ab
    .target Baros Alexston
    .zoneskip Stormwind City,1
    .isQuestComplete 399
step << Dwarf !Paladin/Gnome
    #label end
    #completewith DarkshoreBoat
    .hs >> Benutzt euren Ruhestein nach Thelsamar
step << Dwarf !Paladin/Gnome
    #softcore
    #completewith DarkshoreBoat
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Wetlands >> Fliegt ins Sumpfland
    .target Thorgrum Borrelson
step << Dwarf !Paladin/Gnome
    #hardcore
    #completewith next
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
step << Human Mage/Human Rogue/Human Warrior/Human Warlock/Human Paladin/Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r << Human Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r << Human Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r << Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r << Human Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r << Human Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r << Human Warlock
    .goto Ironforge,51.1,8.7,15,0 << Human Warlock
    .goto Ironforge,50.343,5.657 << Human Warlock
    .goto Ironforge,65.905,88.405 << Human Warrior
    .goto Ironforge,51.495,15.330 << Human Rogue
    .goto Ironforge,25.207,10.756 << Human Priest
    .goto Ironforge,27.18,8.60 << Human Mage
    .goto Ironforge,23.141,6.149 << Human Paladin
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner << Human Warrior
    .target Fenthwick << Human Rogue
    .target Toldren Deepiron << Human Priest
    .target Dink << Human Mage
    .target Brandur Ironhammer << Human Paladin
    .target Briarthorn << Human Warlock
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .train 2567 >>Erlernt Wurfwaffen
    .target Bixi Wobblebonk
step << Human Rogue
    #ah
    .goto Ironforge,62.375,88.679
    .vendor >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    +|cRXP_BUY_Kauft ein|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr oder schaut im Auktionshaus nach etwas Besserem/Günstigerem|r
    .target Brenwyn Wintersteel
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Human Rogue
    #ssf
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    +|cRXP_BUY_Kauft und rüstet einen|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr aus, wenn ihr es euch leisten könnt|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft ein|r |T135425:0|t[Beißendes Wurfmesser]
    .collect 3107,100 -- Keen Throwing Knife
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.30
step << Human Rogue
    #completewith next
    +|cRXP_WARN_Legt das|r |T135425:0|t[Beißendes Wurfmesser] an
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.29
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
step << Dwarf Paladin
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Fliegt ins Sumpfland
    .target Gryth Thurden
step
    #hardcore << !Human
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Verlasse Eisenschmiede
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Reist zu der Dun Morogh -> Sumpfland Skip-Spot
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,20,0
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
    >>|cRXP_WARN_Schaut das Video, um zuerst zu verstehen, wie man den skip durchführt!|r
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Weicht den |cRXP_ENEMY_Sumpflandkrokilisks|r und den |cRXP_ENEMY_Murlocs|r beim Durchqueren des Wassers aus|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Clickt hier für die Videoanleitung|r
    .goto Wetlands,12.1,60.3,80 >> Laufe zum Hafen von Menethil
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << Human
    #softcore
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Reist zum Dun Morogh → Sumpfland Deathskip-Spot
step << Human
    #softcore
    .goto Dun Morogh,32.4,29.1,20 >> Geht weiter durch den Berg zur Deathskip-Stelle
step << Human
    #softcore
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Lauft geradeaus von der Kante nach Norden ab und fallt hinunter. Stirb und erscheine beim |cRXP_FRIENDLY_Geistheiler|r wieder
step << Human
    #softcore
    .goto Wetlands,12.7,46.7,80 >> Schwimmt zum Hafen von Menethil
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neal Allen|r
    .vendor 1448 >> |cRXP_WARN_Kaufe eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat eine limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Neal Allen|r keine hat|r
	.target Neal Allen
    .bronzetube
step << Human/Dwarf Paladin
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Erlernt die Flugroute nach Sumpfland
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor 1453 >> |cRXP_WARN_Kauf so viele|r |T134831:0|t[Heiltrank] |cRXP_WARN_wie du kriegen kannst|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Dewin Shimmerdawn|r keine hat|r
    .target Dewin Shimmerdawn
step
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Reist zum Dock des Bootes nach Auberdine
    .zoneskip Darkshore
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_die folgenden Gegenstände:|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf das Boot nach Dunkelküste wartet, falls nötig|r
    .zone Darkshore >> Nimm das Boot in die Dunkelküste
]])

----End of <1.5x Westfall----
----Start of Darkshore Part 1----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 14-16 Dunkelküste
#displayname 11-16 Dunkelküste << NightElf
#displayname 13-16 Dunkelküste << Dwarf Hunter
#displayname 15-16 Dunkelküste << !NightElf/!Dwarf Hunter
#next 16-19 Dunkelküste


-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod

step
    #label start --hidden step for #include
step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step << !NightElf
    #optional
    #completewith BigThreat
    .goto Darkshore,37.04,44.13,0
    >>Springt vom Boot ab, wenn es Auberdin's Ufer am nächsten ist
    .subzone 442 >> Schwimmt in Richtung Auberdine
step
    #ah
    #optional
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte << !sod/Hunter/Druid
    .accept 1141 >> Akzeptiert die Quest Die Familie und die Angel
    .turnin 1141 >> Gebt die Quest Die Familie und die Angel ab
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Akzeptiert die Quest Die Familie und die Angel
    .turnin 1141 >> Gebt die Quest Die Familie und die Angel ab
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
    .xp <15,1
step << NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Kauft bis zu 40|r |T133918:0|t[Langzahniger Matschschnapper] |cRXP_WARN_von ihm. Verkauft euer anderes Essen der Stufe 5 oder darunter|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .turnin 6342 >> Gebt die Quest Der Flug nach Auberdine ab
    .accept 6343 >> Akzeptiert die Quest Rückkehr zu Nessa << Druid sod
    .target Laird
    .xp >15,1 << Warrior/Rogue/Paladin
    .isQuestAvailable 2118
step << NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Gebt die Quest Der Flug nach Auberdine ab
    .target Laird
step << !NightElf
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Kauft bis zu 40|r |T133918:0|t[Langzahniger Matschschnapper] |cRXP_WARN_von ihm. Verkauft euer anderes Essen der Stufe 5 oder darunter|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .xp >15,1 << Warrior/Rogue
    .target Laird
    .isQuestAvailable 2118
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shaussiy|r unten
    .home >> Setzt den Ruhestein von Euch in Auberdine
    .target Innkeeper Shaussiy
step
    #optional
    #completewith next
    .goto 1439,36.826,44.150
    .goto 1439,36.688,43.952,8 >> Die Treppe hinauf in Richtung |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    #xprate <1.5
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r oben
    .accept 983 >> Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
step
    #xprate >1.49
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r oben
    .accept 983 >> Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
    .xp >15,1 --XX Skip if 15+
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Akzeptiert die Quest Höhlenpilze
    .target Barithras Moonshade
    .xp <12,1
step
    #xprate <1.5
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    #xprate >1.49
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Akzeptiert die Quest Höhlenpilze
    .target Barithras Moonshade
step
    #xprate >1.49
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Akzeptiert die Quest Verseuchtes Land
    .target Tharnariun Treetender
step
    #label BigThreat
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shaussiy|r unten
    .home >> Setzt den Ruhestein von Euch in Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Hol dir den Flugpunkt von Auberdine.
    .target Caylais Moonfeather
step << Dwarf Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_Sendet euer pet zum Angriff auf einen |cRXP_ENEMY_Distelbär|r. Sobald euer pet durch den |cRXP_ENEMY_Distelbär|r betäubt ist, gebt euer Haustier auf und beginnt es zu zähmen|r
    .tame 2163 >>|cRXP_WARN_Wirkt|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_auf einen |cRXP_ENEMY_Distelbär|r um es zu zähmen|r
    .target Thistle Bear
step
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r und |cRXP_ENEMY_Junger Riffkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    >>|cRXP_WARN_Ihr müsstet möglicherweise ins Wasser gehen, um sie zu finden|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Öffnet die |cRXP_PICK_Gestrandete Meereskreatur|r. Plündert sie für die |cRXP_LOOT_Meereskreaturknochen|r
    .complete 3524,1 --Sea Creature Bones (1)
step << Druid
    #ah
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Erhöht eure|r |T136065:0|t[Kräuterkunde] |cRXP_WARN_auf 15, um |r |T134187:0|t[Erdwurzel] |cRXP_WARN_für eine wichtige Klassenquest in kürze zu sammeln. Du kannst es hinterher wieder verlernen|r
    >>|cRXP_WARN_Falls ihr lieber 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_später aus Auktionshaus kauft, überspringt diesen Schritt|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #season 0
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Erhöht eure|r |T136065:0|t[Kräuterkunde] |cRXP_WARN_auf 15, um 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_für eine wichtige Klassenquest später zu sammeln. Ihr könnt es danach wieder verlernen|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #season 0
    #completewith CliffspringEnd
    #requires GatheringQ
    >>Sammelt 5|cRXP_WARN_ |T134187:0|t[Earthroot] über |T136065:0|t[Kräuterkunde] und selten |cRXP_PICK_Battered Chests|r für eine zukünftige Klassenquest|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Benutzt|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Tollwütiger Distelbär|r |cRXP_WARN_Es kann von jeder Reichweite verwendet werden, solange ihr den Bären anvisiert|r
    >>|cRXP_WARN_==BENUTZT NICHT DEN QUESTGEGENSTAND, WENN KEIN BÄR IN DER NÄHE IST==|r
    >>|cRXP_WARN_Du kannst die Falle verschwenden und die Quest damit unlösbar machen! Sollte dir das passieren, musst du zum Questgeber zurückkehren und um eine weitere Falle bitten.|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label FurlbogCamp
    .goto Darkshore,38.90,53.59
    >>Lauft zum Rand des Furbolg-Lagers
    .complete 984,1 -- Find a corrupt furbolg camp
step << NightElf
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 11+7300 >> Farmt bis 7300+/8800 XP
step
    #label invisThistle
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.5
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .turnin 983 >> Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >> Akzeptiert die Quest Dröhnkiste 411
step
    #xprate >1.49
    #optional << !NightElf/Hunter
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .turnin 983 >> Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >> Akzeptiert die Quest Dröhnkiste 411 << !sod
    .isQuestComplete 983
step << NightElf !Hunter
    #xprate >1.49
    #optional
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .accept 1001 >> Akzeptiert die Quest Dröhnkiste 411
    .isQuestTurnedIn 983
--XX so NEs can catch up on xp from those that came via menethil
--XX Hunters skip this as they will get better xp/hr grinding furbolgs
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Gebt die Quest An Land gespült ab
    .accept 4681 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Reist zu |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Steg
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
step
    #season 0,1 << Rogue
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Reist zum Ende des Stegs, dann springt ins Wasser
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Plündert sie für |cRXP_LOOT_Drescherauge|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Öffnet die |cRXP_PICK_Skelettartige Meeresschildkröte|r. Plündert sie für die |cRXP_LOOT_Meeresschildkrötenüberreste|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Gebt die Quest An Land gespült ab
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.5
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Akzeptiert die Quest Höhlenpilze
    .target Barithras Moonshade
step
    #xprate <1.5
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
    .target Terenthis
step << NightElf Warrior/NightElf Rogue
    #sticky
    #season 0
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kurdram Stonehammer|r und |cRXP_FRIENDLY_Delfrum Flintbeard|r
    .train 2575 >> Erlerne |T134708:0|t[Bergbau]
    .target +Kurdram Stonehammer
    .goto Darkshore,38.249,41.008
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target +Delfrum Flintbeard
    .goto Darkshore,38.191,40.935
    >>|cRXP_WARN_Das wird es dir ermöglichen|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_herzustellen, welcher den Nahkampfschaden von Euch um 2 erhöht|r << Warrior/Rogue
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto Darkshore,38.142,41.108
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elisa Steelhand|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_bei ihr|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    #xprate <1.5 --<< !NightElf/Hunter --XX Night Elves do it on 2x to catch up on xp EXCEPT Dwarf/NE Hunters (1x only)
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
    .xp <13,1
step
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naram Longclaw|r
    .vendor 4183 >>|cRXP_BUY_Kauft ein|r |T135640:0|t[Jambiya] |cRXP_BUY_von ihm, wenn ihr es euch es leisten könnt|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
step
    #optional
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r innerhalb
    .vendor 4182 >> |cRXP_BUY_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_oder|r |T133634:0|t[Brauner Lederranzen] |cRXP_BUY_wie ihr von ihm braucht|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Scharfe Pfeile] |cRXP_BUY_oder|r |T132384:0|t[Schwere Geschosse] |cRXP_BUY_von ihm, bis euer Köcher/Munitionsbeutel voll ist|r << Hunter
    .target Dalmond
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .accept 954 >> Akzeptiert die Quest Bashal'Aran
    .accept 958 >> Akzeptiert die Quest Werkzeuge der Hochgeborenen << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .accept 954 >> Akzeptiert die Quest Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring

----Start of NE >1.49x catchup (everyone 1x) Early boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Plündert sie für |cRXP_LOOT_Drescherauge|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Drückt euren "Interagieren mit Ziel"-Hotkey am Ort mit dem Pfeil, um die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r von außerhalb des Bootes zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht wollt, schwimmt unter Wasser zum unteren Deck des Bootes, dann plündert die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r im Inneren|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Am Ort des Pfeils drückt eure Mit Ziel interagieren keybind, um die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von außen zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht tun möchtet, schwimmt unter Wasser in den unteren Teil des Bootes und plündert dann die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von innen|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #loop
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Plündert sie für |cRXP_LOOT_Drescherauge|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Klickt die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Klickt die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,41.960,28.616
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 411|r auf dem Boden
    .turnin 1001 >> Gebt die Quest Dröhnkiste 411 ab
    .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323
    .isQuestComplete 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.960,28.616
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 411|r auf dem Boden
    .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323
    .isQuestTurnedIn 1001
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AsterionTravel
    .goto 1439,44.190,33.697,0
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001


----End of NE >1.49x catchup (everyone 1x) Early boat section----


 step
    #optional
    #completewith AsterionTravel
    .goto 1439,43.509,33.207,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #xprate <1.5
    #optional
    #label AsterionTravel
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Reist in Richtung |cRXP_FRIENDLY_Asterion|r
step
    #xprate >1.49
    #optional
    #label AsterionTravelSoD
    #completewith Bashal1
    .goto 1439,44.376,36.754,20,0
    .goto 1439,44.168,36.289,15 >> Reist in Richtung |cRXP_FRIENDLY_Asterion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Vermeidet es |cRXP_ENEMY_Wilder Grell|r und |cRXP_ENEMY_Übler Grimmling|r auf dem weg zu töten|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Vermeidet |cRXP_ENEMY_Wilder Grell|r und |cRXP_ENEMY_Übler Grimmling|r auf dem weg zu töten|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #label Bashal1
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 954
    .xp >16,1
--XX if you ding 16 from turnin, skip Bashal Aran qline
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Tötet |cRXP_ENEMY_Wilde Grells|r und |cRXP_ENEMY_Übler Grimmling|r. Plündert sie für |cRXP_LOOT_Grell-Ohrring|r
    >>|cRXP_WARN_Vermeidet es die |cRXP_ENEMY_Satyr der Deth'ryll|r vorerst zu töten|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >> Brecht die Quest Bashal'Aran ab
    .isQuestAvailable 955
step
    #xprate >1.59
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Tötet |cRXP_ENEMY_Satyr der Deth'ryll|r. Plündert sie für |cRXP_LOOT_Altes Mondstein-Siegel|r
    >>|cRXP_WARN_Sie haben keine dynamischen Respawns. Überspringt diesen Schritt, falls ihr keine |rSatyr der Deth'ryll|cRXP_ENEMY_ findet|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    #xprate <1.59
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Tötet |cRXP_ENEMY_Satyr der Deth'ryll|r. Plündert sie für |cRXP_LOOT_Altes Mondstein-Siegel|r
    >>|cRXP_WARN_Beachte, das sie keinen dynamischen Respawn haben|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step << NightElf/Dwarf Hunter
    #optional
    #xprate <1.5
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    .xp 13 >> Farmt bis Stufe 13
step
    #optional
    #label HCHunterEnd --hidden step for #include
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    .goto 1439,43.509,33.207,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #xprate <1.5
    #completewith RedCrystal
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 10 zu verbessern|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #xprate <1.5
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 50 zu erhöhen|r
    >>|cRXP_WARN_Macht euch keinen Stress die Eier jetzt zu farmen. Denkt einfach daran, die Eier zu behalten und überlegt, wie viele Fertigkeitspunkte ihr noch benötigt, um Kochen 50 zu erreichen|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step
    #season 0
    #completewith LateTurtleStart
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 50 zu erhöhen|r
    >>|cRXP_WARN_Macht euch keinen Stress die Eier jetzt zu farmen. Denkt einfach daran, die Eier zu behalten und überlegt, wie viele Fertigkeitspunkte ihr noch benötigt, um Kochen 50 zu erreichen|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .subzoneskip 442 --Auberdine
    .subzoneskip 447 --Ameth'Aran
step
    #season 0
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Reist zum geheimnisvollen roten Kristall
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >> Betretet die |cRXP_PICK_Mondkin Stein|r-Höhle
step << Druid
    #optional
    #season 0
    #completewith Lunaclaw
    .goto Darkshore,43.50,45.97
    .cast 18974 >>|cRXP_WARN_Benutzt den|r |T132857:0|t[Mondstaub des Cenarius] |cRXP_WARN_an dem |cRXP_PICK_Mondkinstein|r in der Höhle, um |cRXP_ENEMY_Mondklaue|r am Eingang der Höhle zu beschwören|r
    .timer 4,Körper und Herz RP
    .use 15208
    .isOnQuest 6001
step << Druid
    #label Lunaclaw
    #season 0
    .goto Darkshore,43.09,45.55
    >>Tötet |cRXP_ENEMY_Mondklaue|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith Cascade
    #season 0
    .hs >> Ruhestein nach Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >> Kehrt nach Auberdine zurück
    .cooldown item,6948,<0,1 << !Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .xp >14,1 << Hunter/Druid
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    #season 0,1 << Druid
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Kauft bis zu 40|r |T133918:0|t[Langzahniger Matschschnapper] |cRXP_WARN_von ihm. Verkauft euer anderes Essen der Stufe 5 oder darunter|r
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .target Laird
    .subzoneskip 442,1 --skip if you leave Auber
    .xp >15,1 << Warrior/Rogue
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid
    #optional
    #season 0
    .goto Darkshore,37.0,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_WARN_Kauft bis zu 40|r |T132815:0|t[Eiskalte Milch] |cRXP_WARN_von ihr. Verkauft alles andere Wasser von Stufe 5 oder darunter|r
    .collect 1179,35 --Ice Cold Milk (35)
    .target Allyndia
    .subzoneskip 442,1 --skip if you leave Auber
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Benutzt die|r |T134865:0|t[Leere Wasserröhre] |cRXP_WARN_am Mondbrunnen von Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << NightElf Hunter
    #optional
    #season 0
    .goto Darkshore,37.4,40.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_WARN_Kauft bis zu 2000|r |T132382:0|t[Scharfe Pfeile] |cRXP_WARN_von ihm. Ihr werdet sie bald für einen Farm-Abschnitt brauchen|r
    .collect 2515,2000 --Sharp Arrow (2000)
    .target Dalmond
    .subzoneskip 442,1 --skip if you leave Auber
    .isQuestTurnedIn 4811 --show step if you turned in red crystal
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 10 zu verbessern|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    #season 0
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 50 zu erhöhen|r
    >>|cRXP_WARN_Macht euch keinen Stress die Eier jetzt zu farmen. Denkt einfach daran, die Eier zu behalten und überlegt, wie viele Fertigkeitspunkte ihr noch benötigt, um Kochen 50 zu erreichen|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Klickt den |cRXP_PICK_Geheimnisvoller roter Kristall|r
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 10 zu verbessern|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    .hs >> Ruhestein nach Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith MysteriousCrystalHuntDruidEnd
    .goto 1439,37.703,43.393
    .subzone 442 >> Kehrt nach Auberdine zurück
    .cooldown item,6948,<0,1 << !Druid
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #season 0
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4813,3 >> Gebt die Quest Die Fragmente im Inneren ab
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Hunter/Druid/Warrior
    #completewith AmethStart
    +|cRXP_WARN_Legt den|r |T135145:0|t[Eichendrosselstab] an
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .isQuestTurnedIn 4811


----Start of forced Level 14 Druid Turnin/train----


step << Druid
    #season 0
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Akzeptiert die Quest Rückkehr zu Nessa
    .target Laird
step << Druid
    #optional
    #xprate <1.5
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 13+9500 >> Farmt bis 9500+/11400XP
step << Druid
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fliegt nach Teldrassil
    .target Caylais Moonfeather
step << Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Gebt die Quest Rückkehr zu Nessa ab
    .target Nessa Shadowsong
step << Druid
    #optional
    #completewith next
    #season 0
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .turnin 6001 >> Gebt die Quest Körper und Herz ab
    .accept 6121 >> Akzeptiert die Quest Neue Lektionen
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #season 0
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .accept 6121 >> Akzeptiert die Quest Neue Lektionen
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
    .isQuestTurnedIn 6001
    .zoneskip Darnassus,1
step << Druid
    #optional
    #season 0
	#completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dendrite Starblaze|r oben
    .turnin 6121 >> Gebt die Quest Neue Lektionen ab
    .accept 6122 >> Akzeptiert die Quest Die eigentliche Ursache
    .target Dendrite Starblaze
step << Druid
    #season 0
    #optional
    #completewith AmethStart
    .hs >> Benutzt euren Ruhestein zum Dunkelküste
    .zoneskip Darkshore

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step << Druid
    #season 0
    #optional
    #completewith AmethStart
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----


step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #completewith EarlyBlackwood
    #optional
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #loop
    #season 0
    #label EarlyBlackwood
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Tötet |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r und |cRXP_ENEMY_Windsprecher der Schwarzfelle|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
    .isQuestTurnedIn 4811
step
    #optional
    #label HCHunterStart --hidden step for #include
step << NightElf/Hunter/Druid/Warrior
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #requires EarlyTreats3 << Druid --Season 2
    #completewith EarlyTurtleStart
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .subzoneskip 447
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #completewith Anaya
    #requires EarlyTreats3 << Druid --Season 2
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf/Hunter/Druid/Warrior
    #optional
    #season 0
    #label EarlyTurtleStart
    #requires EarlyTreats3 << Druid --Season 2
    .goto 1439,37.105,62.167
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4722 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
    .isQuestTurnedIn 4811
step
    #optional
    #season 0
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 953 >> Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith AmethStart
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step
    #season 0
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 10 zu verbessern|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_WARN_Beachtet, dass Sie einen 7-8 Minütigen Respawntimer und 4 verschiedene Spawnpunkte in Ameth'Aran|r hat
    >>|cRXP_WARN_Falls ihr sie nicht finden könnt und später erneut versuchen möchtet, könnt ihr diesen Schritt überspringen, müsst dann aber möglicherweise mehr Mobs farmen|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #sticky
    #optional
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_WARN_Beachtet, dass Sie einen 7-8 Minütigen Respawntimer und 4 verschiedene Spawnpunkte in Ameth'Aran|r hat
    >>|cRXP_WARN_Ihr könntet euch mit anderen in der Nähe gruppieren, wenn ihr sie nicht finden könnt. Fragt im Allgemeinen Chat (/1), ob sich jemand mit euch eine Gruppe machen will, der ebenfalls nach ihr sucht|r
    >>|cRXP_WARN_Falls ihr sie nicht finden könnt und später erneut versuchen möchtet, könnt ihr diesen Schritt überspringen, müsst dann aber möglicherweise mehr Mobs farmen|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #season 0
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r, |cRXP_ENEMY_Zuckender Hochgeborener|r und |cRXP_ENEMY_Klagende Hochgeborene|r. Plündert sie für ihre |cRXP_LOOT_Relikte|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    #season 0
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 953 >> Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    #season 0
    .goto 1439,42.652,63.145
    >>Klickt |cRXP_PICK_Der Untergang von Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #season 0
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    #xprate <1.59
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 953 >> Gebt die Quest Der Untergang von Ameth'Aran ab
    .target Sentinel Tysha Moonblade
step
    #optional
    #label HCHunterEndTwo --hidden step for #include
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrind
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith FurbolgGrind
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrind
    #season 0
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4722 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #loop
    #label FurbolgGrind
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Tötet |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r und |cRXP_ENEMY_Windsprecher der Schwarzfelle|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #xprate <1.5
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Farmt die |cRXP_ENEMY_Furlbogs|r im Camp. |cRXP_WARN_Dies ist ein Hyperspawn-Gebiet|r – das bedeutet, dass das Spiel Respawns erzwingt, wenn genügend Mobs tot sind. Dies macht es zu einem |cRXP_WARN_ÄUSSERST effizienten Farmspot|r für dieses Level (XP/Std. ist mit Questen vergleichbar)
    >>|cRXP_WARN_Das Abschließen dieses Grinds wird euch ermöglichen, später ganz Dunkelküste durch zu questen, ohne gegen höherstufige Mobs kämpfen zu müssen|r
    >>Passt auf, da die |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r |T132152:0|t[Hauen] nutzen und die kann euch bis zu 3 Mal gleichzeitig treffen
    >>|cRXP_ENEMY_Windsprecher der Schwarzfelle|r wirken |T136022:0|t[Windstoß] - einen Nahkampf-Stun, |cRXP_WARN_bewegt euch aus der Nahkampfreichweite, wenn sie ihn wirken|r, um nicht betäubt zu werden
    .xp 15+11875 >> Farmt bis 11875+/14400XP
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate <1.5
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Farmt die |cRXP_ENEMY_Furlbogs|r im Camp. |cRXP_WARN_Dies ist ein Hyperspawn-Gebiet|r – das bedeutet, dass das Spiel Respawns erzwingt, wenn genügend Mobs tot sind. Dies macht es zu einem |cRXP_WARN_ÄUSSERST effizienten Farmspot|r für dieses Level (XP/Std. ist mit Questen vergleichbar)
    >>|cRXP_WARN_Das Abschließen dieses Grinds wird euch ermöglichen, später ganz Dunkelküste durch zu questen, ohne gegen höherstufige Mobs kämpfen zu müssen|r
    >>Passt auf, da die |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r |T132152:0|t[Hauen] nutzen und die kann euch bis zu 3 Mal gleichzeitig treffen
    >>|cRXP_ENEMY_Windsprecher der Schwarzfelle|r wirken |T136022:0|t[Windstoß] - einen Nahkampf-Stun, |cRXP_WARN_bewegt euch aus der Nahkampfreichweite, wenn sie ihn wirken|r, um nicht betäubt zu werden
    .xp 15+11000 >> Farmt bis 11000+/14400XP
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #xprate 1.49-1.59
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Farmt die |cRXP_ENEMY_Furlbogs|r im Camp. |cRXP_WARN_Dies ist ein Hyperspawn-Gebiet|r – das bedeutet, dass das Spiel Respawns erzwingt, wenn genügend Mobs tot sind. Dies macht es zu einem |cRXP_WARN_ÄUSSERST effizienten Farmspot|r für dieses Level (XP/Std. ist mit Questen vergleichbar)
    >>|cRXP_WARN_Das Abschließen dieses Grinds wird euch ermöglichen, später ganz Dunkelküste durch zu questen, ohne gegen höherstufige Mobs kämpfen zu müssen|r
    >>Passt auf, da die |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r |T132152:0|t[Hauen] nutzen und die kann euch bis zu 3 Mal gleichzeitig treffen
    >>|cRXP_ENEMY_Windsprecher der Schwarzfelle|r wirken |T136022:0|t[Windstoß] - einen Nahkampf-Stun, |cRXP_WARN_bewegt euch aus der Nahkampfreichweite, wenn sie ihn wirken|r, um nicht betäubt zu werden
    .xp 15+600 >> Farmt bis 600+/14400XP
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,<1 --Anaya's Pendant (<1)
step
    #xprate 1.49-1.59
    #optional
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Farmt die |cRXP_ENEMY_Furlbogs|r im Camp. |cRXP_WARN_Dies ist ein Hyperspawn-Gebiet|r – das bedeutet, dass das Spiel Respawns erzwingt, wenn genügend Mobs tot sind. Dies macht es zu einem |cRXP_WARN_ÄUSSERST effizienten Farmspot|r für dieses Level (XP/Std. ist mit Questen vergleichbar)
    >>|cRXP_WARN_Das Abschließen dieses Grinds wird euch ermöglichen, später ganz Dunkelküste durch zu questen, ohne gegen höherstufige Mobs kämpfen zu müssen|r
    >>Passt auf, da die |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r |T132152:0|t[Hauen] nutzen und die kann euch bis zu 3 Mal gleichzeitig treffen
    >>|cRXP_ENEMY_Windsprecher der Schwarzfelle|r wirken |T136022:0|t[Windstoß] - einen Nahkampf-Stun, |cRXP_WARN_bewegt euch aus der Nahkampfreichweite, wenn sie ihn wirken|r, um nicht betäubt zu werden
    .xp 14+12210 >> Farmt bis 12210+/12900XP
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .itemcount 5382,1 --Anaya's Pendant (1)
step
    #optional
    #completewith FurbolgGrindEnd
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #optional
    #completewith FurbolgGrindEnd
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >> Kehrt nach Auberdine zurück
    .isOnQuest 4722
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #xprate >1.49
    #optional << NightElf !Hunter
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab << Warrior sod
    .target Gwennyth Bly'Leggonde
step
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Kehrt zum |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Dock zurück
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis sein Rollenspiel vorbei ist, falls jemand anderes gerade abgegeben hat|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #season 0
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
step
    #season 0
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Benutzt die|r |T134865:0|t[Leere Wasserröhre] |cRXP_WARN_am Mondbrunnen von Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 986 >> Akzeptiert die Quest Ein verirrter Meister << !sod
    .target Terenthis
step
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >> Geh nach oben
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Elissa Starbreeze|r oben
    .accept 965 >> Der Turm von Althalaxx annehmen
    .target Sentinel Elissa Starbreeze
step << !Hunter
    #optional
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Kauft|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm, bis ihr genauso viele|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_ oder mehr wie|r |T132832:0|t[Kleine Eier] |cRXP_BUY_die ihr derzeit habt|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Gebt die Quest Tiefer Ozean, weites Meer ab
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Lauft zum |cRXP_PICK_Lagerfeuer|r auf dem Boden|r
    +|cRXP_WARN_Fangt an|r |T133971:0|t[Kochkunst] |T132834:0|t[Kräutergebackenes Ei] |cRXP_WARN_. zu kochen. Macht dies, bis eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_mindestens 10 erreicht hat|r
    >>Macht weiter, um eure |T133971:0|t[Kochkunst] |cRXP_WARN_zu leveln, bis euch die |r |T132832:0|t[kleinen Eier] |cRXP_WARN_ausgehen|r << !sod
    >>|cRXP_WARN_Es gibt eine Quest im Dämmerwald, die später eure|r |T133971:0|t[Kochkunst]|cRXP_WARN_ von 50 oder höher erfordert. Ihr könnt dies auch kochen, wenn ihr das nächste mal das Boot nehmt|r << !sod
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !sod/Rogue
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 958 >> Gebt die Quest Werkzeuge der Hochgeborenen ab << !sod
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab << sod
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle << sod
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


----Start of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Drückt euren "Interagieren mit Ziel"-Hotkey am Ort mit dem Pfeil, um die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r von außerhalb des Bootes zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht wollt, schwimmt unter Wasser zum unteren Deck des Bootes, dann plündert die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r im Inneren|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Am Ort des Pfeils drückt eure Mit Ziel interagieren keybind, um die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von außen zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht tun möchtet, schwimmt unter Wasser in den unteren Teil des Bootes und plündert dann die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von innen|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.901,31.339
    >>Klickt die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #season 0
    #optional
    #completewith BoatSeaCreature
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 50 zu erhöhen|r
    >>|cRXP_WARN_Macht euch keinen Stress die Eier jetzt zu farmen. Denkt einfach daran, die Eier zu behalten und überlegt, wie viele Fertigkeitspunkte ihr noch benötigt, um Kochen 50 zu erreichen|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .subzoneskip 446 --BashalAran
    .subzoneskip 452 --Mists Edge
--   .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 10-50
step
    #season 0
    .goto 1439,47.314,48.676
    >>Klickt den |cRXP_PICK_Geheimnisvoller roter Kristall|r
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
step
    #season 0 << !Warrior !Rogue
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Gebt die Quest Bashal'Aran ab
    .isOnQuest 957
    .target Asterion
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label BoatSeaCreature
    #season 0
    .goto 1439,41.901,31.339
    >>Klickt die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    #optional
    #season 0 << !Warrior !Rogue
    #completewith CrabTurtle
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r und |cRXP_ENEMY_Waldschreiter|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig|r |cRXP_ENEMY_Waldschreiterjunges|r |T132307:0|t[Fliehen] |cRXP_WARN_bei unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CrabTurtle
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    #season 0 << !Warrior !Rogue
    .goto Darkshore,44.18,20.60
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,55,0
    .goto 1439,45.468,20.336,55,0
    .goto 1439,47.356,20.559,55,0
    .goto 1439,48.013,21.409,55,0
    .goto 1439,48.612,20.745,55,0
    .goto 1439,49.680,22.468,55,0
    .goto 1439,49.313,24.271,55,0
    >>Tötet |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    >>|cRXP_WARN_Denkt daran, einige der Stufe 17|r |cRXP_ENEMY_Riffkriecher|r |cRXP_WARN_zu überspringen, wenn ihr gute drops bekommt.|r |cRXP_WARN_Ihr müsst diese Quest nicht jetzt abschließen|r
    >>Seid vorsichtig sie benutzen |T132155:0|t[Muskelriss] einen sofortigen Angriff, der 30-55 Schaden verursacht
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,50.81,25.50
    #season 0 << !Warrior !Rogue
    >>|cRXP_WARN_Benutzt|r |T134865:0|t[Leere Probenröhre] |cRXP_WARN_am Fuße des Cliffspring Rivers|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>Lauft die Rampe hinauf zur |cRXP_PICK_Dröhnkiste 323|r
    .isQuestComplete 1002
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestComplete 1002
step
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x early Althalaxx section (for money+xp)----


step << Hunter/Druid
	#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid
	#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>Reist in Richtung |cRXP_FRIENDLY_Balthule Schattenschlag|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 966 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Tötet |cRXP_ENEMY_Fanatikerin des dunklen Strangs|r. Plündert sie für ihr |cRXP_LOOT_Abgenutztes Pergament|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 967 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step << Hunter/Druid
#xprate <1.5 << Hunter/Druid
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    #season 0 << !Warrior !Rogue
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CliffCave
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
step
    #season 0 << !Warrior !Rogue
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
	#xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,51.288,24.554
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #season 0 << !Warrior !Rogue
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Reist zur Klippenquell-Höhle
step << Druid
    .goto Darkshore,54.99,33.41
    #season 0
    >>|cRXP_WARN_Benutzt die|r |T134776:0|t[Leere Cliffspring Falls-Probe] |cRXP_WARN_im Wasser am Eingang der Klippenquell-Höhle|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    #label CaveMushrooms
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    #season 0 << !Warrior !Rogue
    >>Plündert |cRXP_LOOT_Schorfstängling|r und eine |cRXP_LOOT_Todeskappe|r auf dem Boden
    >>|cRXP_WARN_Bleibt im oberen Bereich. Wenn es keine |cRXP_LOOT_Todeskappe|r am Ende der Oberseite gibt, springt hinunter und holt eine aus dem südlichen Raum darunter|r
    >>|cRXP_WARN_Seid vorsichtig, denn |cRXP_ENEMY_Wellenreiter der Sturmschuppen|r wirken|r |T135836:0|t[Wasserstrahl] |cRXP_WARN_(Sofortiger Distanzangriff: Macht Schaden und stößt euch zurück) - stellt sicher, dass ihr nicht von oben nach unten gestoßen werdet|r
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step << NightElf !Druid
    #softcore
    #optional
    #completewith CavetoAuber
    #season 0
    .deathskip >> Stirb und belebe dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step << skip --logout skip
    #hardcore << NightElf !Druid
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    #season 0
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Springt auf die Spitze des Felsens auf der oberen Ebene in der Höhle. Positioniert euren Charakter, bis er so aussieht, als würde er schweben, und führt dann einen Logout-Skip durch, indem ihr euch aus- und wieder einloggt|r
step
    #hardcore << NightElf !Druid
    #completewith CavetoAuber
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #hardcore << NightElf !Druid
    #xprate <1.5 --<< !NightElf/Hunter
    #requires MushroomLS
    #completewith CavetoAuber
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Reist nach Auberdine
step
    #label CliffspringEnd
    #season 0
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .goto Darkshore,37.70,40.70
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .turnin 6122 >> Gebt die Quest Die eigentliche Ursache ab << Druid
    .accept 6123 >> Akzeptiert die Quest Das Heilmittel sammeln << Druid
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .isQuestAvailable 2178 << Druid
step << Druid
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Gebt die Quest Die eigentliche Ursache ab
    .accept 6123 >> Akzeptiert die Quest Das Heilmittel sammeln
    .target Alanndarian Nightsong
step << !NightElf
    #xprate <1.5
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Gebt die Quest Tiefer Ozean, weites Meer ab
    .target Gorbold Steelhand
step << !NightElf
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto Darkshore,37.70,43.39
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    >>|cRXP_WARN_Wählt den|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_aus, da ihr versuchen solltet, einen|r |T135641:0|t[Dolch] |cRXP_WARN_für eure|r |T132290:0|t[Gifte] |cRXP_WARN_Quest später zu haben|r << Rogue
    .turnin 4813 >> Gebt die Quest Die Fragmente im Inneren ab
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.78,44.06
    #season 0
    >>|cRXP_WARN_Benutzt die|r |T133748:0|t[Leere Säuberungsschale] |cRXP_WARN_beim Auberdine-Mondbrunnen|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step
    .goto 1439,37.322,43.640
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Gebt die Quest Höhlenpilze ab
    .accept 948 >> Akzeptiert die Quest Onu
    .target Barithras Moonshade
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>Klickt |cRXP_PICK_Das gesuchte Plakat|r
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step << NightElf !Druid
    .goto 1439,36.767,44.285
    #season 0
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Akzeptiert die Quest Rückkehr zu Nessa
    .isQuestAvailable 6343
    .target Laird
step
    #optional
    .goto Darkshore,36.096,44.931
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
    .target Gubber Blump
    .isQuestComplete 1138
step
    #optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #season 0
    #label End
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


step << Druid
    #optional
    #season 0
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 16 >> Farmt bis Stufe 16
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step << Druid
    #optional
    #season 0
    #completewith DruidLesson
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fliegt nach Teldrassil
    .target Caylais Moonfeather
step << Druid
    #optional
    #season 0
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Gebt die Quest Rückkehr zu Nessa ab
    .target Nessa Shadowsong
step << Druid
    #optional
    #season 0
    #label DruidLesson
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .accept 26 >> Akzeptiert die Quest Eine wertvolle Lektion
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >> Brecht die Quest Der geistesabwesende Ausgrabungsleiter ab, um die Quest Ärger in Dunkelküste zu akzeptieren?
step << Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Greywhisker|r
    .accept 730 >> Akzeptiert die Quest Ärger in Dunkelküste?
    .target Chief Archaeologist Greywhisker
step << Druid
    #optional
	#completewith TotL
    #season 0
	.cast 18960 >> Caste Teleportieren: Mondlichtung
	.zoneskip Moonglade
step << Druid
    #season 0
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 26 >> Gebt die Quest Eine wertvolle Lektion ab
    .accept 29 >> Akzeptiert die Quest Prüfung des Sees
    .target Dendrite Starblaze
step << Druid
    #season 0
    .goto Moonglade,52.6,51.6
    >>Schwimmen into Lake Elune'Ara
    >>Öffnet einen |cRXP_PICK_Schmuckstückbehälter|r. Plündert sie für ein |T134125:0|t[Schrein-Schmuckstück]
    >>|cRXP_WARN_Es kann an verschiedenen Orten unter Wasser spawnen|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #season 0
    #completewith next
    .cast 18960 >> Caste Teleportieren: Mondlichtung
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    #season 0
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Benutzt das|r |T134125:0|t[Schrein-Schmuckstück] |cRXP_WARN_beim Schrein von Remulos Baum|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    #season 0
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Gebt die Quest Prüfung des Sees ab
    .accept 272 >> Akzeptiert die Quest Prüfung des Seelöwen
    .target Tajarri
step << Druid
    #optional
    #season 0
    .hs >> Benutzt euren Ruhestein zum Dunkelküste
    .zoneskip Darkshore


----End of Druid Quest section----


]])

----End of Darkshore Part 1----
----Start of Darkshore Part 2----
----Hunters stay in Darkshore/Ashenvale and Grind, 2x skips Redridge----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 16-19 Dunkelküste
#next 19-20 Rotkammgebirge;20-21 Dunkelküste/Eschental << !Hunter
#next 19-21 Dunkelküste/Eschental << Hunter

step << NightElf !Druid
    #optional
    #completewith PortalDarn
    #season 0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fliegt nach Teldrassil
    .target Caylais Moonfeather
    .zoneskip Teldrassil
step << NightElf !Druid
    .goto Teldrassil,56.25,92.44
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Gebt die Quest Rückkehr zu Nessa ab
    .target Nessa Shadowsong
step << NightElf !Druid
    #completewith next
    #season 0
    #label PortalDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << NightElf Warrior
    .goto Darnassus,58.72,34.92
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arias'ta Klingenlied|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arias'ta Bladesinger
step << NightElf Warrior
    .goto Darnassus,57.56,46.72
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .train 2567 >> Erlernt Wurfwaffen
    .target Ilyenia Moonfire
step << NightElf Hunter
    #completewith start
    #season 0
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jocaste
step << NightElf Hunter
    #completewith start
    #season 0
    #label RecruveReinforced
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Kauf einen|r |T135489:0|t[Schwerer Doppelbogen] |cRXP_WARN_wenn ihr euch es leisten könnt.Wenn nicht kauf einen|r |T135490:0|t[Verstärkter Bogen]
    >>|cRXP_WARN_Deckt euch mit|r |T132382:0|t[Scharfe Pfeile] ein
    .collect 3027,1
    .target Landria
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +|cRXP_WARN_Legt|r |T135489:0|t[Schwerer Doppelbogen] an
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Hunter
    #requires RecruveReinforced
    #season 0
    #completewith next
    +Legt den |T135490:0|t[Verstärkter Bogen] |cRXP_WARN_an|r
    .use 3026
    .itemcount 3026,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
step << NightElf Rogue
    >>Betretet die Enklave des Cenarius
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Syurna
step << NightElf !Druid
    #optional
    #season 0
    #completewith next
    .abandon 729 >> Brecht die Quest Der geistesabwesende Ausgrabungsleiter ab, um die Quest Ärger in Dunkelküste zu akzeptieren?
step << NightElf !Druid
    .goto Teldrassil,23.70,64.51
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Greywhisker|r
    .accept 730 >> Akzeptiert die Quest Ärger in Dunkelküste?
    .target Chief Archaeologist Greywhisker
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jandria|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jandria
step << NightElf !Druid
    #label start
    #season 0
    .hs >> Ruhestein nach Auberdine
step
    .goto Darkshore,37.21,44.22
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tKlickt auf das |cRXP_FRIENDLY_GESUCHT Poster|r
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step << NightElf
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 730 >> Gebt die Quest Ärger in Dunkelküste? ab
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
    .isOnQuest 730
step << NightElf
    #optional
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .goto Darkshore,37.78,44.06
    #season 0
    .use 12346 >>|cRXP_WARN_Benutzt|r |T133748:0|t[Leere Säuberungsschale] |cRXP_WARN_beim|r |cRXP_PICK_Auberdine-Mondbrunnen|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #season 0
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_WARN_Beachtet, dass Sie einen 7-8 Minütigen Respawntimer und 4 verschiedene Spawnpunkte in Ameth'Aran|r hat
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    #season 0
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    >>|cRXP_WARN_Beachtet, dass Sie einen 7-8 Minütigen Respawntimer und 4 verschiedene Spawnpunkte in Ameth'Aran|r hat
    >>|cRXP_WARN_Ihr könntet euch mit anderen in der Nähe gruppieren, wenn ihr sie nicht finden könnt. Fragt im Allgemeinen Chat (/1), ob sich jemand mit euch eine Gruppe machen will, der ebenfalls nach ihr sucht|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #completewith CompleteFangs
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #season 0
    #loop
    .waypoint Darkshore,39.03,67.32,0
    .waypoint Darkshore,42.54,67.76,0
    .waypoint Darkshore,39.99,78.46,0
    .waypoint Darkshore,39.03,67.32,70,0
    .waypoint Darkshore,42.54,67.76,70,0
    .waypoint Darkshore,39.99,78.46,70,0
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r im südlichen Dunkelküste
    >>|cRXP_WARN_Seid vorsichtig, denn sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Reduziert alle Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
    #xprate <1.5
    #sticky
    #label earthroot
    >>Sammelt 5 |T134187:0|t[Erdwurzel] während ihr unterwegs seid|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step << Druid
    #xprate <1.5
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Beute |cRXP_LOOT_Lunarfungus|r auf dem Boden in der Höhle
    .complete 6123,2
    .isOnQuest 6123
step
    #completewith OnuGrove
    #season 0
    .goto 1439,43.555,76.293,80 >> Reist zum Hain der Uralten
step
    #label OnuGrove
    #season 0
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Gebt die Quest Der Hain der Uralten ab << NightElf
    .turnin 948 >> Gebt die Quest Onu ab
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
    .target Onu
step
    #completewith MasterG
    #season 0
    >>Tötet |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>Passt auf, denn sie können |T132090:0|t[Schwäche ausnutzen] wirken, einen Hinterhalts-Angriff, der 20-40 Schaden verursacht, wenn ihr von Euch den Rücken zu ihnen wendet
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .isOnQuest 986
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    #optional
    .goto Darkshore,38.60,80.50,0
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>Seht euch vor, da sie wirkt |T132152:0|t[Verheeren], einen Sofortangriff, der 20-40 Schaden verursacht und |cRXP_WARN_euch für 2s zu Boden wirft|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto 1439,41.390,80.563
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .isQuestComplete 1003
step
    #label MasterG
    #season 0
    .goto Darkshore,38.54,86.05,100 >> Reist zur Meistergleve
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    #season 0
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #optional
    #season 0
    .goto 1439,38.537,86.050
    >>Entdeckt Die Meistergleve
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    #season 0
    .cast 5809 >> |cRXP_WARN_Benutzt die|r |T134715:0|t[Wahrsagephiole] |cRXP_WARN_und platziert sie auf dem Boden|r
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>|cRXP_WARN_Klickt die |cRXP_PICK_Wahrsageschale|r auf dem Boden|r
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 5251
step
    .goto 1439,38.537,86.050
    #season 0
    >>Klickt den |cRXP_PICK_Twilight-Foliant|r auf dem nördlichen Sockel
    .turnin 949 >> Gebt die Quest Das Twilight-Lager ab
    .accept 950 >> Akzeptiert die Quest Rückkehr zu Onu
step
    .goto 1439,38.660,87.305
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therylune|r. Es wird eine Escort quest starten
    >>|cRXP_WARN_Überspringt diesen Schritt, falls sie nicht da ist|r
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    #label TheryluneEnd
    #season 0
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Begleitet |cRXP_FRIENDLY_Therylune|r aus Der Meistergleve|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #optional
    #season 0
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Zerstöre die |T134715:0|t[Wahrsagephiole] von Euch aus dem Inventar, da sie nicht mehr benötigt wird
step
    #optional
    #season 0
    #completewith TurtleSouth
    #completewith prospector << Hunter
    >>Tötet |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>Passt auf, denn sie können |T132090:0|t[Schwäche ausnutzen] wirken, einen Hinterhalt-Angriff, der 20-40 Schaden verursacht, wenn ihr von Euch den Rücken zu ihnen wendet
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .isOnQuest 986
    .unitscan Moonstalker Sire
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>Seht euch vor, da sie wirkt |T132152:0|t[Verheeren], einen Sofortangriff, der 20-40 Schaden verursacht und |cRXP_WARN_euch für 2s zu Boden wirft|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 525|r auf dem Boden
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >> Akzeptiert die Quest Mathystra-Relikte
    .target Onu
step << Hunter
    #optional
    #season 0
    .goto Darkshore,38.54,86.05
    .xp 17 >> Farmt bis Stufe 17
step << Hunter
    #sticky
    #season 0
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis er respawnt oder bis andere die Eskorte beenden|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .target Prospector Remtravel
step << Hunter
    .goto Darkshore,35.72,83.69
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r. Dieser wird eine Escort Quest starten
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Ihr könnt diesen Schritt überspringen und mit Level 19 zurückkehren|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    #season 0
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Ihr könnt diesen Schritt überspringen und mit Level 19 zurückkehren|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
    #xprate <1.5
    #season 0
    .goto 1439,31.251,87.419
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Diese Quest kann SEHR schwierig sein. Bekämpft die |cRXP_ENEMY_Murlocs|r einzeln, Andernfalls könntest du die Aggro von mehreren gleichzeitig auf dich ziehen.|r
    >>|cRXP_WARN_Achtet auf |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden, sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
step
    #completewith CompleteThistleBears
    #season 0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    >>Seid vorsichtig da die |cRXP_ENEMY_Riffkriecher|r |T132155:0|t[Muskelriss] wirken.Ein sofortiger Angriff, der 30-55 Schaden verursacht
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << Hunter
	#xprate <1.5
    #season 0
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Achtet auf |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden, sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    >>Passt auf, denn |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r können |T136016:0|t[|cRXP_FRIENDLY_Gift|r] wirken im Nahkampf und hinterlassen einen DoT, der 13 Schaden alle 3 Sek. für 30 Sek. verursacht
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #label TurtleSouth
	#xprate <1.5
    #season 0
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Achtet auf |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden, sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    >>Passt auf, denn |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r können |T136016:0|t[|cRXP_FRIENDLY_Gift|r] wirken im Nahkampf und hinterlassen einen DoT, der 13 Schaden alle 3 Sek. für 30 Sek. verursacht
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step << !Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step << Hunter
	#xprate <1.5
    #season 0
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step << Druid
    #optional
    #season 0
    >>|cRXP_WARN_Beendet das Sammeln der |T134187:0|t[Erdwurzeln] durch |T136065:0|t[Kräuterkunde] und seltene |rZerschlagene Truhen|cRXP_PICK_|r
    >>|cRXP_WARN_Falls ihr aufgebt und nicht genug finden könnt, überspringt diesen Schritt|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
    .skill herbalism,<15,1
--XX Add waypoints later
step
    #label Murk
    #season 0
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Stellt sicher, dass ihr überprüft, ob |cRXP_ENEMY_Gurgelbacke|r bereits im Wasser ist (wenn der Kampf zuvor fehlgeschlagen ist oder ihr den |cRXP_ENEMY_Jäger der Grauflossen|r in der Welle, in der er spawnt, am Leben gelassen habt)|r
    >>Tötet die |cRXP_ENEMY_Krieger der Grauflossen|r und |cRXP_ENEMY_Jäger der Grauflossen|r im Lager
    >>|cRXP_WARN_Bewegt euch zum Freudenfeuer in der Mitte des Lagers, um den |cRXP_ENEMY_Gurgelbacke|r-Kampf zu beginnen:|r
    >>|cRXP_WARN_3 Wellen spawnen aus dem Wasser, jede nach dem Töten der vorherigen Welle: Welle 1 hat 3 Level 12-13 |cRXP_ENEMY_Küstenläufer der Grauflossen|r, Welle 2 hat 2 Level 15-16 |cRXP_ENEMY_Krieger der Grauflossen|r, und Welle 3 hat ein Level 19 |cRXP_ENEMY_Gurgelbacke|r und einen Level 16-17 |cRXP_ENEMY_Jäger der Grauflossen|r. Ihr könnt euch vom Freudenfeuer entfernen, um nicht mit der nächste Welle in den Kampf zu geraten.|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #label CompleteThistleBears
    #season 0
    .goto 1439,35.968,70.807
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4728 >> Akzeptiert die Quest Gestrandete Meereskreatur
step << Druid
    #label Southcrabs
    #season 0
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >> Caste Teleportieren: Mondlichtung
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    #season 0
    .goto Moonglade,52.53,40.57
	>>Gehe zur Mondlichtung
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    #season 0
    .goto Moonglade,48.11,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >> Fliegt in die Dunkelküste
    .target Sindrayl
    .zoneskip Darkshore
step << NightElf !Druid/Dwarf Hunter
    #label Southcrabs
    #season 0
    #completewith CleansingTharnariun
    .subzone 442 >> Reist nach Auberdine
step
    #optional
    #completewith next
    #season 0
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Kehrt zu |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Dock zurück
step
    #optional
    #season 0
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis sein Rollenspiel vorbei ist, falls jemand anderes gerade abgegeben hat|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #season 0
    #completewith CleansingTharnariun
    .abandon 963 >> Brecht die Quest In ewiger Liebe ab
step
    #xprate <1.5
    #season 0
    #label BeachedTurnins
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4728 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4730 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4731 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4732 >> Gebt die Quest Gestrandete Meeresschildkröte ab << Hunter
    .turnin 4733 >> Gebt die Quest Gestrandete Meereskreatur ab << Hunter
    .target Gwennyth Bly'Leggonde
step
    #optional
    #season 0
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto Darkshore,36.8,44.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r und |cRXP_FRIENDLY_Allyndia|r
    .vendor >> |cRXP_BUY_Verkaufe und fülle den Vorrat an Essen und Wasser auf|r
    .target Laird
    .target Allyndia
step
    .goto 1439,37.703,43.393
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4740 >> Gebt die Quest GESUCHT: Gurgelbacke! ab
    .target Sentinel Glynda Nal'Shea
step
    #label CleansingTharnariun
    #season 0
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
step << Hunter
    .goto 1439,37.439,41.839
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Hunter
    #optional
    #season 0
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
    .isQuestTurnedIn 731
step << Hunter
    #optional
    #season 0
    .goto Darkshore,37.4,40.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor >>|cRXP_BUY_Kauft Munition nach|r
    .target Dalmond
step << Druid
    #xprate <1.5
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Gebt die Quest Das Heilmittel sammeln ab
    .accept 6124 >> Akzeptiert die Quest Heilung der Kranken
    .isQuestComplete 6123
step << Druid
    #xprate <1.5
    #optional
    #season 0
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6124 >> Akzeptiert die Quest Heilung der Kranken
    .target Alanndarian Nightsong
    .isQuestTurnedIn 6123
step << Druid
    #optional
    #season 0
    #completewith Buzzbox323End
    .abandon 6123 >> Brecht die Quest Das Heilmittel sammeln ab
step << Druid
    #xprate <1.5
    #optional
    #season 0
    #completewith Buzzbox323End
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    >>|cRXP_WARN_Benutzt die|r |T132801:0|t[Heilende Tiersalbe] |cRXP_WARN_auf ein|r |cRXP_ENEMY_Kränkliches Reh|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .isQuestAvailable 1138
step << Druid
    #xprate <1.5
    #season 0
    #sticky
    #label SicklyDeers
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .waypoint Darkshore,49.7,33.2,40,0
    .waypoint Darkshore,43.4,25.1,40,0
    .waypoint Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Benutzt die|r |T132801:0|t[Heilende Tiersalbe] |cRXP_WARN_auf ein|r |cRXP_ENEMY_Kränkliches Reh|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
    .isQuestTurnedIn 1138
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Öffnet die |cRXP_PICK_Getreidelager der Schwarzfelle|r. Plündert sie für die |T134059:0|t|cRXP_LOOT_[Getreideprobe der Schwarzfelle]|r
    >>|cRXP_WARN_Das Plündern davon wird 2 |cRXP_ENEMY_Furbolg der Schwarzfelle|r spawnen, die euch angreifen und auf euch zulaufen. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    >>|cRXP_WARN_Wenn ihr seht, dass |cRXP_ENEMY_Xabraxxis|r im Chat schreit, oder seht, dass jemand gegen ihn kämpft, helft ihnen. Öffnet |cRXP_PICK_Xabraxxis Dämonentasche|r, den er auf dem Boden fallen lässt. Plündert ihn für den|r |cRXP_LOOT_Talisman der Verderbnis|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tötet die |cRXP_ENEMY_Höhlenmutter|r
    >>|cRXP_WARN_Seid vorsichtig, denn die |cRXP_ENEMY_Distelbärjunges|r können|r |T132152:0|t[Verheeren]|cRXP_WARN_,wirken. Einen sofortigen Nahkampfangriff, der euch für 2 Sek. betäubt|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>Öffnet die |cRXP_PICK_Blackwood Nut Stores|r. Plündert sie für die |T133944:0|t|cRXP_LOOT_[Nussprobe der Schwarzfelle]|r
    >>|cRXP_WARN_Das Plündern davon wird 2 |cRXP_ENEMY_Furbolg der Schwarzfelle|r spawnen, die euch angreifen und auf euch zulaufen. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    >>|cRXP_WARN_Wenn ihr seht, dass |cRXP_ENEMY_Xabraxxis|r im Chat schreit, oder seht, dass jemand gegen ihn kämpft, helft ihnen. Öffnet |cRXP_PICK_Xabraxxis Dämonentasche|r, den er auf dem Boden fallen lässt. Plündert ihn für den|r |cRXP_LOOT_Talisman der Verderbnis|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>Öffnet die |cRXP_PICK_Obstlager der Schwarzfelle|r. Plündert sie für die |T134013:0|t|cRXP_LOOT_[Obstprobe der Schwarzfelle]|r
    >>|cRXP_WARN_Das Plündern davon wird 2 |cRXP_ENEMY_Furbolg der Schwarzfelle|r spawnen, die euch angreifen und auf euch zulaufen. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    >>|cRXP_WARN_Wenn ihr seht, dass |cRXP_ENEMY_Xabraxxis|r im Chat schreit, oder seht, dass jemand gegen ihn kämpft, helft ihnen. Öffnet |cRXP_PICK_Xabraxxis Dämonentasche|r, den er auf dem Boden fallen lässt. Plündert ihn für den|r |cRXP_LOOT_Talisman der Verderbnis|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Benutzt die|r |T134712:0|t[Gefüllte Säuberungsschale] |cRXP_WARN_beim |cRXP_PICK_Feuer|r um|r |cRXP_ENEMY_Xabraxxis|r zu beschwören
    .timer 17,Die verderbten Schwarzfelle RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto Darkshore,52.38,33.39
    >>Tötet |cRXP_ENEMY_Xabraxxis|r. Öffnet die |cRXP_PICK_Xabraxxis Dämonentasche|r, die er auf den Boden fallen lässt. Plündert sie für den |cRXP_LOOT_Talisman der Verderbnis|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << !Hunter
    #xprate <1.5
    #label CompleteFangs
    .goto Darkshore,52.6,33.6
    .xp 18 >> Farmt bis Stufe 18
step << Hunter
    #label CompleteFangs
    #season 0
    .goto Darkshore,52.6,33.6
    .xp 18.75 >> Farmt bis 18 + 75%
    >>Stellt sicher, dass euer Ruhestein Ablinkzeit <10 min ist
    >>Überspringt diesen Schritt, wenn das Gebiet zu voll ist
step
    #label LateStalkerFangs
    #xprate <1.5 --<< !NightElf/Hunter
    #optional
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
--XX Can do later during Pelts but better if player gets more xp beforehand
step
    #xprate <1.5 --<< !NightElf/Hunter
    #label Buzzbox323End
    #requires SicklyDeers << Druid --xprate <1.5
    .goto 1439,51.288,24.554
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
step
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 966 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step
	#xprate >1.49 << Hunter/Druid
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Tötet |cRXP_ENEMY_Fanatikerin des dunklen Strangs|r. Plündert sie für ihr |cRXP_LOOT_Abgenutztes Pergament|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    #xprate >1.59
    #loop
    #optional
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.743,25.915,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.231,26.508,50,0
    .xp 18+15000 >> Farmt bis 15000+/19400 XP
    .mob Dark Strand Fanatic
step
	#xprate >1.49 << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 967 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step
    #season 0
    .goto Darkshore,57.13,22.04,55,0
    .goto Darkshore,57.97,20.23,55,0
    .goto Darkshore,58.36,23.61,55,0
    .goto Darkshore,59.42,24.62,55,0
    .goto Darkshore,60.26,21.75
    >>Plündert |cRXP_LOOT_Mathystra-Relikte|r vom Boden
    .complete 951,1 -- Mathystra Relics (6)
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Akzeptiert die Quest Gyromasts Rettung
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Tötet |cRXP_ENEMY_Tobender Riffkriecher|r und |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für den |cRXP_LOOT_Unterteil von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Tobender Riffkriecher|r'|r |T132152:0|t[Hauen] |cRXP_WARN_Fähigkeit. Ihr könnt bis zu 200 Schaden auf einmal durch ihre Nahkampfangriffe nehmen|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Tötet die |cRXP_ENEMY_Orakel der Grauflossen|r und die |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r. Plündert sie für den |cRXP_LOOT_Mitte von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden und sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    >>Passt auf, denn |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r können |T136016:0|t[|cRXP_FRIENDLY_Gift|r] wirken im Nahkampf und hinterlassen einen DoT, der 13 Schaden alle 3 Sek. für 30 Sek. verursacht
    >>|cRXP_WARN_Ihr könnt aus dem Sichtfeld der |cRXP_ENEMY_Orakel der Grauflossen|r'|r|T136048:0|t[Blitzschlag]|cRXP_WARN_ gehen. Geht um das versunkene Schiff, um den Schaden auszuweichen|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Tötet |cRXP_ENEMY_Tobender Riffkriecher|r und |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für den |cRXP_LOOT_Unterteil von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Tobender Riffkriecher|r'|r |T132152:0|t[Hauen] |cRXP_WARN_Fähigkeit. Ihr könnt bis zu 200 Schaden auf einmal durch ihre Nahkampfangriffe nehmen|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
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
    #xprate <1.59
    #label NorthStalkerPelts
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Tötet |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Mondpirschermatriarchin|r. Plündert sie für ihre |cRXP_LOOT_Pelze|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Mondpirschermatriarchin|r. Sie greifen immer mit einem |cRXP_ENEMY_Mondpirscherwicht|r an ihrer Seite an|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r wirken |T132090:0|t[Schwäche ausnutzen] als Hinterhaltangriff, der 20-40 Schaden verursacht, wenn ihr ihnen den Rücken zudreht
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << Warrior/Paladin/Rogue
    #season 0
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Beginnt, eine Gruppe für Gyromasts Rache/|r|cRXP_ENEMY_Der Dreschonator 4100|r zu suchen << Warrior/Paladin/Rogue
    .turnin 2098 >> Gebt die Quest Gyromasts Rettung ab
    .accept 2078 >> Akzeptiert die Quest Gyromasts Rache
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Beginnt, eine Gruppe für Gyromasts Rache/|r|cRXP_ENEMY_Der Dreschonator 4100|r zu suchen << Warrior/Paladin/Rogue
    .turnin 2098 >> Gebt die Quest Gyromasts Rettung ab
    .accept 2078 >> Akzeptiert die Quest Gyromasts Rache
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >> Sprecht mit |cRXP_FRIENDLY_Der Dreschonator 4100|r um die Eskorte zu beginnen
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
step
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4727 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto 1439,56.654,13.484
    #optional
    >>Eskortiert |cRXP_FRIENDLY_Der Dreschonator 4100|r bis zu |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Tötet |cRXP_ENEMY_The Threshwackonator 4100|r sobald er feindselig ist
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig|r
    *Nutzt nur Fernkampfangriffe, während ihr vor ihm wegrennt, vermeidet Nahkampfreichweite << Druid
    >>|cRXP_WARN_Versucht, diese Quest zu machen, wenn ihr könnt, da sie euch später Zeit spart und|r |T134797:0|t[Elixiere der Wasseratmung]|cRXP_WARN_für spätere Unterwasserquests gibt|r << !Druid !Warlock
    >>|cRXP_WARN_Benutzt|r |T136100:0|t[Wucherwurzeln] |cRXP_WARN_|r auf ihn und baue Distanz zu ihm auf. Kite ihn mit Schnellzaubern << Druid
    >>|cRXP_WARN_Falls ihr |cRXP_ENEMY_Der Dreschonator 4100|r nicht töten könnt, überspringt diesen Schritt|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Gebt die Quest Gyromasts Rache ab
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    #optional
    #completewith BeachedCloak
    .abandon 2078 >> Brecht die Quest Gyromasts Rache ab
step << Druid
    #xprate <1.5
    #optional
    #completewith DeerComplete
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >> Zerstört |T134459:0|t[Gyromasts Schlüssel] aus euren Taschen, da ihr ihn nicht mehr braucht
step << !NightElf !Dwarf Hunter !Druid
    #completewith BeachedCloak
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >> Reist nach Auberdine
    .cooldown item,6948,<0
step << !NightElf !Dwarf Hunter !Druid
    #xprate <1.59
    #optional
    #completewith next
    .hs >> Ruhestein nach Auberdine
    .cooldown item,6948,>0,1
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4727 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step << Druid
    #xprate <1.5
    #label DeerComplete
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .goto Darkshore,49.7,33.2,40,0
    .goto Darkshore,43.4,25.1,40,0
    .goto Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Benutzt die|r |T132801:0|t[Heilende Tiersalbe] |cRXP_WARN_auf ein|r |cRXP_ENEMY_Kränkliches Reh|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
    .use 15826
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Schwimmt hinaus ins Wasser|r
    >>Öffnet die |cRXP_PICK_Merkwürdige Schließkassette|r. Plündert sie für den |cRXP_LOOT_Halber Anhänger der Wasser-Beweglichkeit|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)


----Start of Darkshore 2x 20 Turnins & Druid Training----


step << Druid
    #xprate >1.59
    #optional
	#completewith next
	.cast 18960 >> Caste Teleportieren: Mondlichtung
	.zoneskip Moonglade
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    .goto Moonglade,52.53,40.57
	>>Gehe zur Mondlichtung
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <20,1
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Ruhestein nach Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .xp <20,1
step
    #xprate >1.59
    #label BlackwoodSod
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
    .target Thundris Windweaver
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Entfernt die |T134059:0|t|cRXP_LOOT_[Getreideprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Zerstört die |T133944:0|t|cRXP_LOOT_[Nussprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Zerstört die |T134013:0|t|cRXP_LOOT_[Obstprobe der Schwarzfelle]|r aus eurer Tasche, da sie nicht mehr benötigt
step
    #season 1
    #xprate >1.59
    #optional
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Kauft|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_und ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Dies ist zum Aufleveln  eurer|r |T133971:0|t[Kochkunst] |cRXP_WARN_während ihr bald auf dem Boot seid|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .target Dalmond
step
    #season 1
    #xprate >1.59
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Kauft|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm, bis ihr genauso viele|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_ oder mehr wie|r |T132832:0|t[Kleine Eier] |cRXP_BUY_die ihr derzeit habt|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step
    #xprate >1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Gebt die Quest Tharnariuns Hoffnung ab
    .target Tharnariun Treetender
step
    #xprate >1.59
    #optional
    #label PeltEnd
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Gebt die Quest Ein verirrter Meister ab
    .target Terenthis
    .isQuestTurnedIn 986
step
    #xprate >1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Falls ihr |r |T133762:0|t[Verzauberter Mondpirscher-Umhang]|cRXP_WARN_ anlegt, stellt sicher, dass ihr euren aktuellen Umhang für später speichert, da der |r |T133762:0|t[Verzauberter Mondpirscherumhang] |cRXP_WARN_ bei einer späteren Abgabe verloren geht|r
    .equip 15,5387 >>|cRXP_WARN_Legt den|r |T133762:0|t[Verzauberter Mondpirscherumhang],an |cRXP_WARN_wenn er besser ist als eurer aktuell angelegter Umhang|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #xprate >1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
    .target Gubber Blump
    .isQuestComplete 1138
step
    #xprate >1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde

----End of Darkshore 2x 20 Turnins & Druid Training----
----Start of 2x Non-Deadmines Training/Class q section----



step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #label TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    .goto Darkshore,32.44,43.71,15 >> Reist zum Anlegestelle des Hafens von Menethil
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #label DarkshoreNoDMCook1
    #requires TravelMenethilNoDMBoat
    #completewith MenethilNoDMBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt ein|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #season 1
    #xprate >1.59
    #optional
    #requires DarkshoreNoDMCook1
    #completewith MenethilNoDMBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T132832:0|t|cRXP_LOOT_[Kleines-Ei]|r |cRXP_WARN_und|r |T134059:0|t[Milde Gewürze] |cRXP_WARN_zu|r |T132834:0|t[Kräutergebackenes Ei]
    .usespell 2550
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .dungeon !DM
step << Warrior/Paladin
    #xprate >1.59
    #ah
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe], falls ihr sie braucht |cRXP_WARN_während ihr auf das Boot zum Hafen von Menethil wartet|r << Warrior/Paladin/Rogue
    >>|cRXP_WARN_Falls ihr eine sehr gute Waffe in Taschen von Euch habt, die ihr bald anlegen könnt, überspringt diesen Schritt|r
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #ssf << Paladin/Warrior
    #label MenethilNoDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe], falls ihr sie braucht |cRXP_WARN_während ihr auf das Boot zum Hafen von Menethil wartet|r << Warrior/Paladin/Rogue
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 << Paladin/Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior/Paladin
    #ah
    #xprate >1.59
    #optional
    #label PalWarSkip20
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brak Durnad|r in Hafen von Menethil
    .vendor 1441 >>|cRXP_BUY_Kauft ein|r |T135329:0|t[Henkerschwert] |cRXP_BUY_von ihm (falls vorhanden und ihr es euch leisten könnt)|r
    >>|cRXP_WARN_Falls es nicht verfügbar ist, macht euch nichts draus, da ihr späterins Auktionshaus gehen werdet|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << Warrior/Paladin
    #ssf
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brak Durnad|r innerhalb
    >>|cRXP_BUY_Kauft ein|r |T135329:0|t[Henkerschwert] |cRXP_BUY_von ihm (falls vorhanden und ihr es euch leisten könnt)|r
    >>|cRXP_BUY_Falls es keins gibt, kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .zoneskip Darkshore
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +|cRXP_WARN_Legt das|r |T135329:0|t[Henkerschwert] an
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << !NightElf Warrior/Paladin
    #xprate >1.59
    #optional
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << !NightElf Warrior/Paladin/Mage/Warlock/!NightElf Rogue
    #xprate >1.59
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Shellei Brondir
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Springt vom Ende des Docks und schwimmt zum Wegpunkt
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Nutzt die Selbstservice-Funktion zum Freigeben des Charakters, um nach Eisenschmiede zu teleportieren. Ihr müsst euch an dieser Stelle abmelden, geht dann dann zum Hilfemenü auf einem anderen Charakter (alternativ fügt den Unstuck-Link unten in den Browser von Euch ein), scrollt dann zum Self Service hinunter. Klickt auf den Charakter von Euch und bewegt euch. Falls ihr euch nicht freigeben könnt, überspringt diesen Schritt und schwimmt entlang der Berge nach Westfall
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Klickt hier für eine Videoanleitung
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Klicke hier für den Unstuck-Link
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon !DM




----Start of NE Warrior and Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Falls der Online-Unstuck nicht verfügbar ist, schwimmt nach Westfall
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Lauft die Küste hoch und macht euch auf den Weg zur Späherkuppe
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Lauft nach Sturmwind
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59 << !Hunter
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Erlernt 1h Schwerter << Rogue
    .train 202 >> Erlernt 2h Schwerter << Warrior
    .target Woo Ping
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Ironforge
    .dungeon !DM




----End of NE Warrior Rogue 2x No Deadmines swim to Westfall Alternative section----



step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Buliwyf Steinhand|r
    .train 197 >> Erlernen 2h Äxte
    .train 199 >> Erlernen 2h Streitkolben
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional << NightElf
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_BUY_von ihr oder überprüft das Auktionshaus auf etwas Besseres/Billigeres|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brenwyn Wintersteel
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Paladin/Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    #completewith DeeprunDM
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >> Reist in Richtung |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional << NightElf
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,3 << NightElf Warrior --2h swords trained
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step <<Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .use 5352
    .itemcount 5352,1
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Paladin/Mage/Warlock/Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gerrig Bonegrip|r innerhalb
    .turnin 968 >> Gebt die Quest Die Macht in der Tiefe ab
    .target Gerrig Bonegrip
    .isOnQuest 968
    .zoneskip Darkshore << Warrior/Paladin
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>Reist zu |cRXP_FRIENDLY_Ginny Longberry|r innerhalb
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ginny Longberry|r innerhalb
    >>|cRXP_BUY_Kauft bis zu 4|r |T134419:0|t[Rune der Teleportation] |cRXP_BUY_von ihr|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon !DM
step << Mage
    #xprate >1.59
    #label MilstaffNoDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milstaff Stormeye|r
    .train 3562 >> Erlernen |T135763:0|t[Teleportieren: Eisenschmiede]
    .target Milstaff Stormeye
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dink
    .dungeon !DM
step << Paladin
    #xprate >1.59
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .dungeon !DM
step << skip --logout skip Mage
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Springt auf den Pfeiler über |cRXP_FRIENDLY_Bink|r, dann lauft leicht östlich von ihr zur Pfeilposition. Positioniert Euren Charakter bis es aussieht, als würde er schweben, dann führt einen Logout Skip durch, indem ihr euch ausloggt und wieder einloggt|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon !DM
step << Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1455,53.164,7.037,10 >> Betretet |cRXP_FRIENDLY_Jubahl Corpseseekers|r Haus
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << skip --logout skip Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Geht auf die Spitze des Bettes, dann springt auf die Spitze des Bücherregals. Führt einen Logout-Skip durch, indem ihr euch abmeldet und wieder anmeldet|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << skip --logout skip Warlock/Rogue
    #xprate >1.59
    #optional
    #completewith DeeprunNoDM
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Springt auf den Greifenkopf. Führt einen Logout-Skip durch, indem ihr euch ausloggt und wieder einloggt|r
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor 5175 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #requires MilstaffNoDM << Mage
    #label DeeprunNoDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #completewith WepTrainNoDM << !Warrior
    >>|cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_falls nötig während der Tramfahrt|r
    >>|cRXP_WARN_Ihr werdet eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_für eine spätere Quest auf 80+ bringen müssen|r << Rogue !Dwarf
    .zone Stormwind City >> Nehmt die Tiefenbahn nach Sturmwind
    .zoneskip Darkshore << Warrior
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Billibub Cogspinner
    .zoneskip Darkshore << Warrior/Paladin
    .bronzetube
    .train 201,1 << NightElf Rogue --1h swords not trained
    .train 202,1 << Warrior --2h swords not trained
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Lauf in Richtung |cRXP_FRIENDLY_Wu Shen|r im Kommandocenter
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Wu Shen|r auf der oberen Etage
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .zoneskip Darkshore
    .zoneskip Ironforge
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Trainiert|r |T132282:0|t[Hinterhalt] |cRXP_WARN_wenn ihr Geld übrig habt und einen|r |T135641:0|t[Dolch] |cRXP_WARN_ausgerüstet oder in euren Taschen habt. Es wird euch später Zeit sparen|r
    .train 8676 >> Trainieren |T132282:0|t[Hinterhalt]
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T132320:0|t[Verstohlenheit]|cRXP_WARN_,|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_, und|r |T136058:0|t[Schloss knacken] lernt |cRXP_WARN_da ihr es später brauchen werdet|r
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .train 921 >>Erlert |T133644:0|t[Taschendiebstahl]
    .train 1804 >> Erlernt|T136058:0|t[Schloss knacken]
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .dungeon !DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>Stellt sicher, dass ihr |T133644:0|t[Verstohlenheit]|cRXP_WARN_,|r |T136058:0|t[Taschendiebstahl] |cRXP_WARN_, und|r |T136058:0|t[Schloss knacken] lernt |cRXP_WARN_da ihr es später brauchen werdet|r
    >>|cRXP_WARN_Seid SEHR VORSICHTIG mit dem Geldhaushalt von Euch in den kommenden Schritten. Kauft nur essentielle Zauber. Ihr werdet bald Geld für Vanish brauchen und 75 Silber, um eine Rune bei der Rückkehr ins Sumpflands zu erhalten|r
    .train 921 >>Erlernt |T133644:0|t[Taschendiebstahl]
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .dungeon !DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainNoDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T136058:0|t[Schloss knacken] lernt |cRXP_WARN_da ihr es später brauchen werdet|r
    >>|cRXP_WARN_Seid SEHR VORSICHTIG mit dem Geldhaushalt von Euch in den kommenden Schritten. Kauft nur essentielle Zauber. Ihr werdet bald Geld für Vanish brauchen und 75 Silber, um eine Rune bei der Rückkehr ins Sumpflands zu erhalten|r
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Reist zu |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r im SI:7 im oberen Stockwerk
    .dungeon !DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .accept 2281 >> Akzeptiert die Quest Rendezvous im Rotkammgebirge
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon !DM
step << NightElf Rogue/Mage/Warlock
    #xprate >1.59 << !Hunter
    #season 1 << Rogue sod
    #label WepTrainNoDM
    #optional << NightElf
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Erlernt 1h Schwerter << Mage/Rogue/Warlock
    .train 1180 >> Erlernt Dolche << Mage
    .train 202 >> Erlernt 2h Schwerter << Warrior
    .target Woo Ping
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Legt das|r |T135329:0|t[Henkerschwert] an
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r innerhalb
    >>|cRXP_BUY_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_BUY_von ihr oder überprüft das Auktionshaus auf etwas Besseres/Billigeres|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .zoneskip Stormwind City,1
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #optional
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r innerhalb
    >>|cRXP_BUY_Kauft ein|r |T135342:0|t[Kris] |cRXP_BUY_von ihr oder überprüft das Auktionshaus auf etwas Besseres/Billigeres|r
    >>|cRXP_WARN_Seid SEHR VORSICHTIG mit Geldverwaltung von Euch in den kommenden Schritten. Kauft nur einen Dolch wenn ihr das Geld nicht habt. Ihr werdet Geld für Verschwinden benötigen und 75 Silber um eine Rune nach der Rückkehr ins Sumpfland zu erhalten|r
    .collect 2209,2 --Kris (2)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Kauft einen|r |T135342:0|t[Kris] |cRXP_BUY_von ihr wenn ihr es euch leisten könnt|r
    >>|cRXP_WARN_Seid SEHR VORSICHTIG mit Geldverwaltung von Euch in den kommenden Schritten. Kauft nur einen Dolch wenn ihr das Geld nicht habt. Ihr werdet Geld für Verschwinden benötigen und 75 Silber um eine Rune nach der Rückkehr ins Sumpfland zu erhalten|r
    .collect 2209,1 --Kris (2)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Legt|r |T135342:0|t[Kris] an
    .use 2209
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.93
    .xp <21,1
    .dungeon !DM



----Start of 2x Non-Deadmines Rogue Class q section----



step << Rogue
    #xprate >1.59
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionator Jaxon|r
    >>Kauft das |T134437:0|t[Gegengift] für eure |T132290:0|t[Gifte]-Quest später und den Rest für schnellere Questabgaben im Rotkammgebirge << !Dwarf
    >>Kauft die folgenden Gegenstände für schnellere Abgaben im Rotkammgebirge << Dwarf
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T134437:0|t[Gegengift] << !Dwarf
    >>|T134172:0|t[Große Geiferzahnschnauze]
    >>|T134028:0|t[Zähes Kondorfleisch]
    >>|T134321:0|t[Knuspriges Spinnenfleisch]
    .collect 6452,1,2359,1 << !Dwarf --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind << !Human
    .fly Westfall >> Fliegt nach Westfall << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .zone Westfall >> Lauf nach Westfall
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .accept 65 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe << !Human
    .fly Redridge >> Fliegt ins Rotkammgebirge << Human
    .target Thor
    .dungeon !DM
step << Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .isOnQuest 65
    .dungeon !DM
step << !Human Rogue
    #xprate >1.59
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theocritus|r oben auf dem Turm von Azora
    .accept 94 >> Ein wachsames Auge annehmen
    .target Theocritus
    .dungeon !DM
    .xp <20,1
step << !Human Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chef Breanna|r innerhalb
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wiley der Schwarze|r oben
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 132 >> Die Bruderschaft der Defias annehmen
	.target Wiley the Black
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Rendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Gebt die Quest Rendezvous im Rotkammgebirge ab
    .accept 2282 >> Akzeptiert die Quest Althers Mühle
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .accept 89 >> Akzeptiert die Quest Die Immerruhbrücke
    .target Foreman Oslow
    .xp 21.4,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #sticky
    #completewith next
    .goto Redridge Mountains,39.6,33.2,0
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Ihr könnt einige der Gnolle auf dem Weg zu Althers Mühle töten. Ihr werdet dieses Ziel auf dem Rückweg abschließen
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116,100 >> Geht in Richtung Althers Mühle
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_Ihr MÜSST dies für eure|r |T132290:0|t[Gifte]|cRXP_WARN_ Quest später machen|r
    >>|cRXP_WARN_Steht auf dem Wegpunkt. Positioniert eure Kamera und euren Cursor, bis ihr 3 |cRXP_PICK_Übungsschließkisten|r gleichzeitig anklicken könnt, ohne das ihr euch bewegen müsst|r
    .skill lockpicking,80 >>|cRXP_WARN_Öffnet die |cRXP_PICK_Übungsschließkassette|r am Boden in Althers Mühle, bis euer|r |T136058:0|t[Schlossknacken] 80 erreicht|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Öffnet die |cRXP_PICK_Lucius's Schließkassette|r. Sammelt die Beute für die |cRXP_LOOT_Marke der Diebeskunst|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,39.6,33.2
    .goto Redridge Mountains,38.2,35.7,0
    .goto Redridge Mountains,35.2,37.8,0
    .goto Redridge Mountains,31.9,39.5,0
    .goto Redridge Mountains,28.5,38.7,0
    .goto Redridge Mountains,25.1,37.7,0
    >>Beendet das Töten der |cRXP_WARN_Gnolle|r für die Brückenteile
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .isOnQuest 89
    .dungeon !DM
    .mob Redridge Brute
    .mob Redridge Mystic
    .mob Redridge Basher
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,32.2,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .turnin 89 >> Gebt die Quest Die Immerruhbrücke ab
    .isQuestComplete 89
    .target Foreman Oslow
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Gebt die Quest Althers Mühle ab
    .target Lucius
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >> Zerstört das |T134328:0|t[Zertifikat der Diebeskunst] aus eurer Tasche, da es nicht mehr benötigt wird
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .xp 21+14325 >> Stellt sicher, dass ihr mindestens 14k Erfahrung in Stufe 21 habt, bevor ihr das Rotkammgebirge verlasst. Falls nicht, erwägt die |cRXP_ENEMY_Hilarys Halskette|r-Quest von |cRXP_FRIENDLY_Shawn|r oder |cRXP_ENEMY_Die verlorenen Werkzeuge|r von |cRXP_FRIENDLY_Großknecht Oslow|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge << !Human
    .fly Westfall >> Fliegt nach Westfall
    .target Ariena Stormfeather
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 132 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 135 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Tötet |cRXP_ENEMY_Zwerggiftweberspinne|r und |cRXP_ENEMY_Giftweberspinne|r. Plündert sie für |cRXP_LOOT_kleiner Giftbeutel|r und ihre |cRXP_LOOT_Klebriges Spinnenbein|r
    >>|cRXP_WARN_You need a |cRXP_LOOT_kleiner Giftbeutel|r um das|r |T134437:0|t[Gegengift] herzustellen |cRXP_WARN_um später den|r |T136230:0|t[Die Berührung von Zanzil] |cRXP_WARN_debuff zu heilen|r
    >>|cRXP_WARN_Behaltet die |cRXP_LOOT_Klebriges Spinnenbeine|r für später|r
    >>|cRXP_WARN_Falls ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_als Freund habt, könnt ihr diesen Schritt überspringen und sie bitten, es später für euch zu entfernen|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==ACHTET AUF DEN FOLGENDEN BEREICH==|r
    >>|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
    >>|cRXP_WARN_Zusätzlich wird empfohlen, dass ihr Gegner-Namensplaketten (Standardtaste: V) aktiviert, da es euch erlaubt, Feinde hinter einigen der Ecken innerhalb des Turms zu sehen|r
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    >>|cRXP_WARN_Ihr MÜSST diese Quest für die|r |T132290:0|t[Gifte] annehmen
    .turnin 2360 >> Gebt die Quest Mathias und die Defias ab
    .accept 2359 >> Klavens Turm annehmen
    .target Agent Kearnen
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Missgestaltete Drohne der Defias|r. Plündert es für |cRXP_LOOT_Turmschlüssel der Defias|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Die |cRXP_ENEMY_Missgestaltete Drohne der Defias|r taucht am Eingang des Turms auf und patrouilliert um das Äußere des Turms herum|r
    >>|cRXP_WARN_Passt auf, da er sehr viel Schaden verursacht. Falls von Euch|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_abbricht, nutzt schnell|r |T132307:0|t[Sprinten] |cRXP_WARN_und lauft weg|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Malformed Defias Drone
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Legt|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_für diese Quest an, wenn ihr nicht bereits einen|r |T135641:0|t[Dolch] |cRXP_WARN_angelegt habt|r
    .use 15396
    .itemcount 15396,1
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Reist bis zum 2. Stockwerk des Turms hinauf. Während ihr in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_seid und die |cRXP_ENEMY_Turmwachposten der Defias|r nicht neben euch sind, springt auf den Stuhl, dann auf die Lampe, dann auf das Bücherregal oben auf dem Wegpunkt|r
    >>|cRXP_WARN_Stoppt manuell|r |T132320:0|t[Verstohlenheit]|cRXP_WARN_, dann drückt von Euch "Interagieren mit Ziel" Taste, um das |cRXP_PICK_Dämmerwaldtruhe|r zu öffnen. Plündert sie für|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_NOTIZ: Eure|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_wird kurz nachdem ihr gelootet habt nicht funktionieren|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_Seid bereit zu laufen, wenn ihr nicht die |cRXP_ENEMY_Turmwachposten der Defias|r im 2. Stockwerk tötet. Sie werden euch wahrscheinlich permanent angreifen (aber nicht treffen), wenn ihr auf dem Bücherregal steht, da es ein Ausweich-Platz ist|r
    >>|cRXP_WARN_Wenn ihr einen|r |T135641:0|t[Dolch] |cRXP_WARN_in euren Taschen oder ausgerüstet habt, könnt ihr|r |T132282:0|t[Hinterhalt] |cRXP_WARN_auf die |cRXP_ENEMY_Turmpatrouille der Defias|r und |cRXP_ENEMY_Turmwachposten der Defias|r im Inneren wirken, um sie sofort zu töten. Seid bereit zu laufen, nachdem ihr den ersten |cRXP_ENEMY_Turmwachposten der Defias|r getötet habt und denkt daran, dass ihr von oben getroffen werden könnt. Das ist langsamer, aber VIEL sicherer|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Missgestaltete Drohne der Defias|r und |cRXP_ENEMY_Drohne der Defias|r am Eingang des Turms sein können, wenn ihr aus ihm laufen müsst|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Stelle ein |T134437:0|t[Gegengift] her
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Wirkt |T136225:0|t[Steingestalt], um |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .aura -9991
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Lauf in Richtung |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .skill firstaid,80 >> |cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .train 7934 >> |cRXP_WARN_Trainiert|r |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Stelle ein |T134437:0|t[Gegengift] her
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon !DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .dungeon !DM
step << Rogue
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Erinnert euch, wieder auf eure Hauptwaffe zu wechseln, sofern ihr sie durch einen|r |T135641:0|t[Dolch] |cRXP_WARN_gewechselt habt|r << Rogue !sod
    .turnin 135 >> Gebt die Quest Die Bruderschaft der Defias ab
--  .accept 141 >> Accept The Defias Brotherhood
    .turnin 2359 >> Gebt die Quest Klavens Turm ab
    .target Master Mathias Shaw
    .dungeon !DM
step << Rogue
    #xprate >1.59
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jasper Fel|r im Erdgeschoss des Gebäudes
    >>Kauft Reagenzien zum Herstellen |T132273:0|t[|cRXP_FRIENDLY_Sofort wirkendes Gift|r] und |T132331:0|t[|cRXP_FRIENDLY_Verschwinden|r] von ihm
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
    #xprate >1.59
    >>Öffnet euer Zauberbuch und findet die |T136242:0|t[|cRXP_FRIENDLY_Gifte|r] Fähigkeit aus Allgemein Tab des Zauberbuchs. Öffnet es und stellt 20x Sofort wirkendes Gift her. |cRXP_WARN_Erinnert euch daran, sie während des Kampfes auf beide eurer Waffen zu benutzen|r
    .collect 6947,20 --Instant Poison (20)
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Seid SEHR VORSICHTIG mit Geldverwaltung von Euch in den kommenden Schritten. Kauft nur essenzielle Zauber. Ihr werdet 75 Silber benötigen um eine Rune nach ein Paar Quests in Sumpfland zu erhalten|r
    >>|cRXP_WARN_Lernt|r |T132331:0|t[Verschwinden] und |T132320:0|t[Verstohlenheit](Rang 2). Ihr werdet es benötigen, um bald |T236270:0|t[Tödliche Mischung] freizuschalten
    .train 1856 >> Erlernt |T132331:0|t[Verschwinden]
    .train 1785 >> Erlernt |T132320:0|t[Verstohlenheit](rank 2)
    .target Osborne the Night Man
    .dungeon !DM


----End of 2x Non-Deadmines Rogue Class q section----


step << Warlock
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ardwyn Cailen|r innerhalb
    .vendor 1312 >>|cRXP_BUY_Kauft einen|r |T135469:0|t[Dämmerungszauberstab] |cRXP_BUY_von ihr, wenn ihr es euch leisten könnt|r
    >>|cRXP_BUY_Alternativ, kauft einen|r |T135144:0|t[Großer Magiezauberstab] |cRXP_BUY_vom Auktionshaus, wenn es billiger als 52s 47c ist|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ardwyn Cailen|r innerhalb
    >>|cRXP_BUY_Kauft einen|r |T135469:0|t[Dämmerungszauberstab] |cRXP_BUY_von ihr|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Legt den|r |T135469:0|t[Dämmerungszauberstab] an
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith NoDMStockadeEnd
    +|cRXP_WARN_Legt den|r |T135144:0|t[den Großen Magiezauberstab] an
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Betritt Zum Geschlachteten Lamm. Geht die Treppe hinunter
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Spackle Dornbeere|r
    .vendor >>|cRXP_BUY_Kauft das|r |T133738:0|t[Zauberfoliant der Qual (Rang 2)] |cRXP_BUY_von ihr|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
    .dungeon !DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2NoDMEnd
    #requires Torment2NoDM
    .train 20317 >>|cRXP_WARN_Benutzt den|r |T133738:0|t[Zauberfoliant der Qual (Rang 2)]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon !DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>Besteigt den Magierturm. Geht durch das grüne Portal
    .goto Stormwind City,39.681,79.538,15 >>Reisen in Richtung |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon !DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
    .target Larimaine Purdue
    .dungeon !DM
step << Mage/Warlock/Rogue
    #xprate >1.59
    #season 1 >> Schurke
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .zoneskip Ironforge << Warrior
    .zoneskip Darkshore << Warrior
    .target Argos Nightwhisper
    .dungeon !DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Benutzt euren Ruhestein nach Hafen von Menethil. |cRXP_WARN_Ghetto hearth vom Verlies aus, falls eurer auf cooldown ist|r
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Betretet das Verlies in Sturmwind|r
    >>|cRXP_WARN_Sobald ihr drin seid:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Klickt hier, um dieses Makro in den Chat zu kopieren + einzufügen und schnell nach Auberdine zurückzukehren|r
    .zone Darkshore >>|cRXP_WARN_Falls ihr dazu nicht in der Lage seid, macht euch auf den Weg zurück nach Auberdine|r
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith NEWarRogNoDMIFPP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #label NEWarRogNoDMNoFP1
    #completewith NEWarRogNoDMIFPP
    >>|cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_falls nötig während der Tramfahrt|r
    .zone Ironforge >> Nehmt die Tiefenbahn nach Eisenschmiede
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #requires NEWarRogNoDMNoFP1
    #label NEWarRogNoDMNoFP2
    #completewith NEWarRogNoDMIFPP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor 5175 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .bronzetube
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP2
    #label NEWarRogNoDMNoFP3
    #completewith NEWarRogNoDMIFPP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Buliwyf Steinhand|r
    .train 197 >> Erlernen 2h Äxte
    .train 199 >> Erlernen 2h Streitkolben
    .target Buliwyf Stonehand
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP3
    #label NEWarRogNoDMNoFP4
    #completewith NEWarRogNoDMIFPP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft den|r |T135427:0|t[Schweren Wurfdolch] |cRXP_BUY_von ihr|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Warrior
    #xprate >1.59
    #season 1 --Not loading for now
    #requires NEWarRogNoDMNoFP4
    #label NEWarRogNoDMNoFP5
    #completewith NEWarRogNoDMIFPP
    +|cRXP_WARN_Legt den|r |T135427:0|t[Schweren Wurfdolch] an
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #label NEWarRogNoDMIFPP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
    .zoneskip Darkshore
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gerrig Bonegrip|r innerhalb
    .turnin 968 >> Gebt die Quest Die Macht in der Tiefe ab
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .zoneskip Wetlands
    .isOnQuest 968
    .dungeon !DM



----End of 2x Non-Deadmines Training/Class q section----
----Start of 2x Non-Deadmines (Darnassus) training section----

step << Mage/Warlock/Rogue
    #xprate >1.59
    #label NoDMStockadeEnd
    #requires Torment2NoDMEnd << Warlock
    .goto StormwindClassic,39.834,54.360
    >>|cRXP_WARN_Betretet das Verlies in Sturmwind|r
    >>|cRXP_WARN_Sobald ihr drin seid:|r
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Klickt hier, um dieses Makro in den Chat zu kopieren + einzufügen und schnell nach Auberdine zurückzukehren|r
    .zone Darkshore >>|cRXP_WARN_Falls ihr dazu nicht in der Lage seid, macht euch auf den Weg zurück nach Auberdine|r
    .zoneskip Teldrassil << Warrior
    .zoneskip Darnassus << Warrior
    .zoneskip Ironforge
    .cooldown item,6948,<0
    .dungeon !DM
step << NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Menethil >> Fliegt ins Sumpfland
    .zoneskip Ironforge,1
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .zone Wetlands >> Laufe zum Hafen von Menethil
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Reist zum Dock des Bootes nach Auberdine
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << Warrior/NightElf Rogue
    #xprate >1.59
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Level eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_wenn nötig während ihr auf das Boot nach Auberdine wartet|r << Warrior/Paladin/Rogue
    .zone Darkshore >> Nehmt das Boot nach Auberdine
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .zoneskip Darkshore
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .cooldown item,6948,<0
    .dungeon !DM
step << !Druid
    #xprate >1.59
    #optional
    #completewith next
    .hs >> Ruhestein nach Auberdine
    .zoneskip Darkshore
    .subzoneskip 442
    .cooldown item,6948,>0,1
    .dungeon !DM << !Dwarf/!Hunter



----End of 2x no DM Return to Darkshore Steps----
----End of 2x Non-Deadmines (Darnassus) training section----




step << Dwarf Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >> Grindet bis eure Ruhestein-Abklingzeit weniger als 6 Minuten beträgt. Sterbt und erscheint beim |cRXP_FRIENDLY_Geistheiler|r
step << Dwarf Hunter
    #xprate <1.59
    #hardcore
    #optional
    #completewith next
    +Grindet bis eure Ruhestein-Abklingzeit weniger als 9 Minuten beträgt, dann lauft zurück nach Auberdine
step << !NightElf !Hunter
    #xprate <1.59
    #softcore
    #optional
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step << !NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
    .target Thundris Windweaver
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Entfernt die |T134059:0|t|cRXP_LOOT_[Getreideprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Zerstört die |T133944:0|t|cRXP_LOOT_[Nussprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Zerstört die |T134013:0|t|cRXP_LOOT_[Obstprobe der Schwarzfelle]|r aus eurer Tasche, da sie nicht mehr benötigt
step << !NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Gebt die Quest Tharnariuns Hoffnung ab
    .target Tharnariun Treetender
step << !NightElf
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Gebt die Quest Ein verirrter Meister ab
    .accept 993 >> Akzeptiert die Quest Ein verirrter Meister
    .target Terenthis
step << !NightElf
    #xprate <1.59
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Falls ihr |r |T133762:0|t[Verzauberter Mondpirscher-Umhang]|cRXP_WARN_ anlegt, stellt sicher, dass ihr euren aktuellen Umhang für später speichert, da der |r |T133762:0|t[Verzauberter Mondpirscherumhang] |cRXP_WARN_ bei einer späteren Abgabe verloren geht|r
    .equip 15,5387 >>|cRXP_WARN_Legt den|r |T133762:0|t[Verzauberter Mondpirscherumhang],an |cRXP_WARN_wenn er besser ist als eurer aktuell angelegter Umhang|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step << Dwarf Hunter
    #xprate <1.59
    #label TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    .goto 1439,33.169,40.179,15 >> Reist zum Dock des Bootes nach Darnassus
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #label DarnDwarfHCook1
    #requires TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt ein|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #requires DarnDwarfHCook1
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T132832:0|t|cRXP_LOOT_[Kleines-Ei]|r |cRXP_WARN_und|r |T134059:0|t[Milde Gewürze] |cRXP_WARN_zu|r |T132834:0|t[Kräutergebackenes Ei]
    .usespell 2550
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Dwarf Hunter
    #xprate <1.59
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nehmt das Boot nach Darnassus
    .zoneskip Darnassus
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >> Erlernt die Flugroute nach Teldrassil
    .target Vesprystus
step << Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Dwarf Hunter
    #xprate <1.59
    #completewith next
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jocaste
    .dungeon !DM
step << Dwarf Hunter
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Erlernen Bogen
    .train 227 >> Erlernt Stäbe
    .target Ilyenia Moonfire
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Kauft einen|r |T135489:0|t[Schwerer Doppelbogen] |cRXP_BUY_und einen|r |T134410:0|t[Mittlerer Köcher] |cRXP_BUY_von ihr|r
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #xprate <1.59
    #completewith next
    +|cRXP_WARN_Legt|r |T135489:0|t[Schwerer Doppelbogen] an
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter
    #xprate <1.59
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
    .turnin 741 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Chief Archaeologist Greywhisker
    .isOnQuest 741
step << Dwarf Hunter
    #xprate <1.59
    #optional
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Greywhisker|r
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Chief Archaeologist Greywhisker
    .isQuestTurnedIn 741
step << Druid
    #xprate <1.59
    #optional
	#completewith MoongladeTrain
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    #xprate <1.5
    .goto Moonglade,56.2,30.4
    >>Gehe nach Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite Sternenschauer|r
    .turnin 6124 >> Gebt die Quest Heilung der Kranken ab
    .accept 6125 >> Akzeptiert die Quest Macht über Gift
    .target Dendrite Starblaze
    .isQuestTurnedIn 6123
step << Druid
    #xprate <1.59
    #label MoongladeTrain
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step << NightElf/Dwarf Hunter
    #completewith BeachedCloak
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >> Reist nach Auberdine
    .cooldown item,6948,<0
step << NightElf/Dwarf Hunter
    #xprate <1.59
    #optional
    #completewith next
    .hs >> Ruhestein nach Auberdine
    .cooldown item,6948,>0,1
step
    #xprate <1.59
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    #requires DeleteGyromast
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
    .target Gubber Blump
    .isQuestComplete 1138
step << NightElf
    #xprate <1.59
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
    .target Thundris Windweaver
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12342 >> Entfernt die |T134059:0|t|cRXP_LOOT_[Getreideprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12343 >> Zerstört die |T133944:0|t|cRXP_LOOT_[Nussprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step << NightElf
    #xprate <1.59
    #optional
    #completewith LostMasters
    .destroy 12341 >> Zerstört die |T134013:0|t|cRXP_LOOT_[Obstprobe der Schwarzfelle]|r aus eurer Tasche, da sie nicht mehr benötigt
step << NightElf Hunter
    #xprate <1.59
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Deckt euch mit |T132382:0|t[Scharfe Pfeile] ein
    .target Dalmond
step << NightElf
    #xprate <1.59
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Gebt die Quest Tharnariuns Hoffnung ab
    .target Tharnariun Treetender
step << NightElf
    #xprate <1.59
    #label LostMasters
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Gebt die Quest Ein verirrter Meister ab
    .accept 993 >> Akzeptiert die Quest Ein verirrter Meister
    .target Terenthis




----End of <1.59x Turnin section----




step << NightElf
    #optional
    >>|cRXP_WARN_Falls ihr |r |T133762:0|t[Verzauberter Mondpirscher-Umhang]|cRXP_WARN_ anlegt, stellt sicher, dass ihr euren aktuellen Umhang für später speichert, da der |r |T133762:0|t[Verzauberter Mondpirscherumhang] |cRXP_WARN_ bei einer späteren Abgabe verloren geht|r
    .equip 15,5387 >>|cRXP_WARN_Legt den|r |T133762:0|t[Verzauberter Mondpirscherumhang],an |cRXP_WARN_wenn er besser ist als eurer aktuell angelegter Umhang|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7

----Start of Hunter Deadmines/All 2x Deadmines Section----
step
    #xprate <1.59 << !Hunter
    #label TravelMenethilDMBoat
    #completewith MenethilDMBoat
    .goto 1439,32.432,43.744,15 >> Reist zum Anlegestelle des Hafens von Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #label DarkshoreDMCook1
    #requires TravelMenethilDMBoat
    #completewith MenethilDMBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #optional
    #requires DarkshoreDMCook1
    #completewith DarnDMBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T132832:0|t|cRXP_LOOT_[Kleines-Ei]|r |cRXP_WARN_und|r |T134059:0|t[Milde Gewürze] |cRXP_WARN_zu|r |T132834:0|t[Kräutergebackenes Ei]
    .usespell 2550
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #label DarnDMBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Ihr werdet nun zu den Todesminen reisen|r
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe], falls ihr sie braucht |cRXP_WARN_während ihr auf das Boot zum Hafen von Menethil wartet|r << Warrior/Paladin/Rogue
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << Paladin/Warrior
    #ah
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brak Durnad|r innerhalb
    .vendor 1441 >>|cRXP_BUY_Kauft ein|r |T135329:0|t[Henkerschwert] |cRXP_BUY_von ihm (falls vorhanden und ihr es euch leisten könnt)|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior
    #ssf
    #optional
    #xprate >1.59
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brak Durnad|r innerhalb
    >>|cRXP_BUY_Kauft ein|r |T135329:0|t[Henkerschwert] |cRXP_BUY_von ihm (falls vorhanden und ihr es euch leisten könnt)|r
    >>|cRXP_BUY_Falls es keins gibt, kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_BUY_von ihm, falls ihr es euch leisten könnt|r
    .collect 4818,1,2040,1 --Collect Executioner's Sword (1)
    .disablecheckbox
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Brak Durnad
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8 --Intentionally lower than Falx so people don't buy the Falx if they have Executioners
    .itemcount 922,<1 --Dacian Falx (<1)
    .itemcount 4818,<1 --Executioner's Sword (<1)
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Legt das|r |T135329:0|t[Henkerschwert] an
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Paladin/Warrior !NightElf
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << !NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Springt vom Ende des Docks und schwimmt zum Wegpunkt
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Nutzt die Selbstservice-Funktion zum Freigeben des Charakters, um nach Eisenschmiede zu teleportieren. Ihr müsst euch an dieser Stelle abmelden, geht dann dann zum Hilfemenü auf einem anderen Charakter (alternativ fügt den Unstuck-Link unten in den Browser von Euch ein), scrollt dann zum Self Service hinunter. Klickt auf den Charakter von Euch und bewegt euch. Falls ihr euch nicht freigeben könnt, überspringt diesen Schritt und schwimmt entlang der Berge nach Westfall
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Klickt hier für eine Videoanleitung
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >> Klicke hier für den Unstuck-Link
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
    .dungeon DM




----Start of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative section----



step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> Falls der Online-Unstuck nicht verfügbar ist, schwimmt nach Westfall
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Lauft die Küste hoch und macht euch auf den Weg zur Späherkuppe
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
    .zoneskip Westfall,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Lauft nach Sturmwind
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Reist zu |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der Sturmwind-Kathedrale
    .zoneskip Stormwind City,1
    .dungeon DM
step << NightElf Priest
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .zoneskip Stormwind City,1
    .dungeon DM
--XX Alt if NE priest cant website unstuck




----End of Hunter/All Night Elves 2x Deadmines swim to Westfall Alternative (and Alt NE Priest Training) section----





step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Buliwyf Steinhand|r
    .train 197 >> Erlernen 2h Äxte << Warrior
    .train 199 >> Erlernen 2h Streitkolben << Warrior
    .train 266 >> Erlerne Schusswaffen << Hunter
    .target Buliwyf Stonehand
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .use 5352
    .itemcount 5352,1
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gerrig Bonegrip|r innerhalb
    .turnin 968 >> Gebt die Quest Die Macht in der Tiefe ab
    .target Gerrig Bonegrip
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isOnQuest 968
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto Ironforge,28.70,25.58,12,0
    .goto Ironforge,29.60,26.62,10,0
    .goto Ironforge,30.50,26.58,10,0
    .goto Ironforge,31.32,27.80,12 >>Reist zu |cRXP_FRIENDLY_Ginny Longberry|r innerhalb
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,31.32,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ginny Longberry|r innerhalb
    >>|cRXP_BUY_Kauft bis zu 4|r |T134419:0|t[Rune der Teleportation] |cRXP_BUY_von ihr|r
    .collect 17031,4 --Rune of Teleportation (4)
    .target Ginny Longberry
    .dungeon DM
step << Mage
    #xprate >1.59
    #label MilstaffDM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milstaff Stormeye|r
    .train 3562 >> Lerne |T135757:0|t[Teleportieren: Ironforge]
    .target Milstaff Stormeye
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dink
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional << NightElf
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Toldren Deepiron
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip Mage/Priest
    #xprate >1.59
    #optional
    #requires MilstaffDM << Mage
    #completewith DeeprunDM
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Springt auf den Pfeiler über |cRXP_FRIENDLY_Bink|r, dann lauft leicht östlich von ihr zur Pfeilposition. Positioniert Euren Charakter bis es aussieht, als würde er schweben, dann führt einen Logout Skip durch, indem ihr euch ausloggt und wieder einloggt|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Briarthorn|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >> Betretet |cRXP_FRIENDLY_Jubahl Corpseseekers|r Haus
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << skip --Warlock
    #xprate >1.59
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor 6382 >> |cRXP_BUY_Kauft|r |T133738:0|t[Grimoires] |cRXP_BUY_für eure Pets, falls ihr wollt|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << skip --logout skip skip --Warlock
    #xprate >1.59
    #optional
    #completewith DeeprunDM
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Geht auf die Spitze des Bettes, dann springt auf die Spitze des Bücherregals. Führt einen Logout-Skip durch, indem ihr euch abmeldet und wieder anmeldet|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step << !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,53.164,7.037,10 >> Betretet |cRXP_FRIENDLY_Jubahl Corpseseekers|r Haus
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Geht auf die Spitze des Bettes, dann springt auf die Spitze des Bücherregals. Führt einen Logout-Skip durch, indem ihr euch abmeldet und wieder anmeldet|r
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestTurnedIn 968
    .dungeon DM
step << skip --NightElf Hunter/NightElf Warrior
    #xprate >1.59 << !Hunter
    #optional
    #completewith DeeprunDM
    .goto 1455,60.975,90.479
    .goto 1455,76.414,51.226,20 |cRXP_WARN_Walk onto the railing next to |cRXP_FRIENDLY_Buliwyf Stonehand|r on the arrow position. Position your character until it looks like they're floating, then perform a Logout Skip by logging out and back in|r
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step << skip --logout skip !Mage !Priest
    #xprate >1.59 << !Hunter
    #completewith DeeprunDM
    #optional
    .goto 1455,56.207,46.844
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Springt auf den Greifenkopf. Führt einen Logout-Skip durch, indem ihr euch ausloggt und wieder einloggt|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .isQuestAvailable 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor 5175 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .subzoneskip 2257
    .bronzetube
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #requires MilstaffDM << Mage
    #label DeeprunDM
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << NightElf
    #completewith ShoniAccept
    >>|cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_falls nötig während der Tramfahrt|r
    >>|cRXP_WARN_Ihr werdet eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_für eine spätere Quest auf 80+ bringen müssen|r << Rogue !Dwarf
    .zone Stormwind City >> Nehmt die Tiefenbahn nach Sturmwind
    .zoneskip Wetlands << NightElf
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor 5519 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniAccept
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .accept 2040 >> Unterirdischer Angriff annehmen
    .target Shoni the Shilent
    .dungeon DM
step << Human
    #xprate >1.59
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
    .target Furen Longbeard
    .isOnQuest 1338
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Akzeptiert die Quest Oh Bruder...
    .accept +168 >> Akzeptiert Die Suche nach Andenken
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .dungeon DM
step << Hunter
--   #xprate >1.59
    #sticky
    #label DMPetTrain
    .goto 1453,61.576,15.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer 2879 >> Erlernt eure spells für euren Begleiter
    .target Karrina Mekenda
    .dungeon DM
step << Hunter
--   #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Enris Brightspear|r
    .trainer 5515 >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires DMPetTrain << Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r innerhalb
    .accept 167 >> Akzeptiert die Quest Oh Bruder...
    .accept 168 >> Akzeptiert Die Suche nach Andenken
    .target Wilder Thistlenettle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Trainiert|r |T132282:0|t[Hinterhalt] |cRXP_WARN_wenn ihr Geld übrig habt und einen|r |T135641:0|t[Dolch] |cRXP_WARN_ausgerüstet oder in euren Taschen habt. Es wird euch später Zeit sparen|r
    .train 8676 >> Trainieren |T132282:0|t[Hinterhalt]
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T132320:0|t[Verstohlenheit]|cRXP_WARN_,|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_, und|r |T136058:0|t[Schloss knacken] lernt |cRXP_WARN_da ihr es später brauchen werdet|r
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .train 921 >>Erlernt |T133644:0|t[Taschendiebstahl]
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .dungeon DM
    .train 1784,1
    .train 921,1
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>Stellt sicher, dass ihr |T133644:0|t[Verstohlenheit]|cRXP_WARN_,|r |T136058:0|t[Taschendiebstahl] |cRXP_WARN_, und|r |T136058:0|t[Schloss knacken] lernt |cRXP_WARN_da ihr es später brauchen werdet|r
    .train 921 >>Erlernt |T133644:0|t[Taschendiebstahl]
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .dungeon DM
    .train 921,1
step << Rogue
    #xprate >1.59
    #label RogueTrainDMEnd
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T136058:0|t[Schloss knacken] lernt |cRXP_WARN_da ihr es später brauchen werdet|r
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >> Reist zu |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r im SI:7 im oberen Stockwerk
    .dungeon DM
step << Rogue
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Renzik "Das Messer"|r und |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .accept 2281 >> Akzeptiert die Quest Rendezvous im Rotkammgebirge
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Lauf in Richtung |cRXP_FRIENDLY_Wu Shen|r im Kommandocenter
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Wu Shen|r auf der oberen Etage
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Erlernt 1h Schwerter << Mage/Rogue/Warlock
    .train 1180 >> Erlerne Dolche << Mage/Druid/Priest
    .train 202 >> Erlernt 2h Schwerter << Warrior/Paladin/Hunter
    .target Woo Ping
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Legt das|r |T135329:0|t[Henkerschwert] an
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r innerhalb
    >>|cRXP_BUY_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihr oder überprüft das Auktionshaus nach etwas Besserem/Günstigerem|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Kauft|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihr falls ihr es euch leisten könnt|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Reist zu |cRXP_FRIENDLY_Duthorian Rall|r in die Kathedrale von Sturmwind
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r. Er wird dir den [|cRXP_LOOT_Foliant der Ehre|r] geben
    .use 6776 >>|cRXP_WARN_Benutzt die |T133739:0|t[|cRXP_LOOT_Der Foliant der Ehre|r] um die Quest zu starten|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Der Foliant der Ehre annehmen
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Gebt die Quest Der Foliant der Ehre ab
    .accept 1650 >>Der Foliant der Ehre annehmen
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .target Argos Nightwhisper
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #ah
    #optional
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r innerhalb
    >>|cRXP_BUY_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_BUY_von ihr oder überprüft das Auktionshaus auf etwas Besseres/Billigeres|r
    .collect 922,1,2040,1 --Collect Dacian Falx (1)
    .target Marda Weller
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.0 --Arbitrary number lower than Falx/Exe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ah
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ardwyn Cailen|r innerhalb
    .vendor 1312 >>|cRXP_BUY_Kauft einen|r |T135469:0|t[Dämmerungszauberstab] |cRXP_BUY_von ihr, wenn ihr es euch leisten könnt|r
    >>|cRXP_BUY_Alternativ, kauft einen|r |T135144:0|t[Großer Magiezauberstab] |cRXP_BUY_vom Auktionshaus, wenn es billiger als 52s 47c ist|r
    .collect 5211,1 --Dusk Wand (1)
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #ssf
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ardwyn Cailen|r innerhalb
    >>|cRXP_BUY_Kauft einen|r |T135469:0|t[Dämmerungszauberstab] |cRXP_BUY_von ihr|r
    .collect 5211,1 --Dusk Wand (1)
    .target Ardwyn Cailen
    .money <0.5247
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Legt den|r |T135469:0|t[Dämmerungszauberstab] an
    .use 5211
    .itemcount 5211,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock/Priest
    #xprate >1.59
    #optional
    #completewith WileyStart
    +|cRXP_WARN_Legt den|r |T135144:0|t[den Großen Magiezauberstab] an
    .use 11288
    .itemcount 11288,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Betritt Zum Geschlachteten Lamm. Geht die Treppe hinunter
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DM
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Spackle Dornbeere|r
    .vendor >>|cRXP_BUY_Kauft das|r |T133738:0|t[Zauberfoliant der Qual (Rang 2)] |cRXP_BUY_von ihr|r
    .target Spackle Thornberry
    .itemcount 16346,<1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
    .dungeon DM
step << Warlock
    #xprate >1.59
    #sticky
    #label Torment2DMEnd
    #requires Torment2DM
    .train 20317 >>|cRXP_WARN_Benutzt den|r |T133738:0|t[Zauberfoliant der Qual (Rang 2)]
    .target Spackle Thornberry
    .use 16346
    .itemcount 16346,1 --Grimoire of Torment (<1)
    .train 20317,1
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,38.589,81.879,20,0
    .goto 1453,37.278,81.918,12,0
    .goto 1453,36.715,80.265,12,0
    .goto 1453,37.267,78.871,12,0
    .goto 1453,38.051,78.664,12,0
    .goto 1453,38.562,79.269,12,0
    .goto 1453,38.324,80.965,12,0
    .goto 1453,37.550,81.405,8,0
    .goto 1453,38.035,81.729,6,0
    .goto 1453,37.550,82.500,10,0
    >>Besteigt den Magierturm. Geht durch das grüne Portal
    .goto Stormwind City,39.681,79.538,15 >>Reist in Richtung |cRXP_FRIENDLY_Larimaine Purdue|r
    .dungeon DM
step << Mage
    #xprate >1.59
    .goto Stormwind City,39.681,79.538
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larimaine Purdue|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
    .target Larimaine Purdue
    .dungeon DM
step << !Paladin
    #xprate >1.59
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
    #xprate >1.59
    .goto 1453,20.883,55.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sheldras Mistelmond|r
    .train 6756 >> Trainiere deine Klassenfähigkeiten
    .target Sheldras Moontree
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #optional
    #completewith next
    .goto 1453,50.929,57.781,10 >>Betretet Den Leeren Köcher im inneren Ring des Handelsdistrikts
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ssf
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Kauft einen|r |T135489:0|t[Schwerer Doppelbogen] |cRXP_BUY_und einen|r |T134410:0|t[Mittlerer Köcher] |cRXP_BUY_von ihm|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step << Hunter
--  #xprate >1.59
    #ah
    .goto 1453,49.962,57.638
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Kauft einen|r |T135489:0|t[Schwerer Doppelbogen] |cRXP_BUY_und einen|r |T134410:0|t[Mittlerer Köcher] |cRXP_BUY_von ihm oder prüft das Auktionshaus für etwas Besseres/Billigeres|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .dungeon DM
step
    #xprate >1.59
    #ah
    #softcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionator Jaxon|r
    >>Kauft das |T134437:0|t[Gegengift] für eure |T132290:0|t[Gifte]-Quest später und den Rest für schnellere Questabgaben im Rotkammgebirge << !Dwarf Rogue
    >>Kauft die folgenden Gegenstände für schnellere Abgaben im Rotkammgebirge und Westfall in Kürze << Paladin
    >>Kauft die folgenden Gegenstände für schnellere Abgaben im Rotkammgebirge << !Paladin !Rogue/Dwarf Rogue
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T134437:0|t[Gegengift] << !Dwarf Rogue
    >>|T132794:0|t[Fläschchen Öl] << Paladin
    >>|T134172:0|t[Große Geiferzahnschnauze]
    >>|T134028:0|t[Zähes Kondorfleisch]
    >>|T134321:0|t[Knuspriges Spinnenfleisch]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 << Paladin -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionator Jaxon|r
    >>Kauft das |T134437:0|t[Gegengift] für eure |T132290:0|t[Gifte]-Quest später und den Rest für schnellere Questabgaben im Rotkammgebirge und Westfall << !Dwarf Rogue
    >>Kauft die folgenden Gegenstände für schnellere Abgaben im Rotkammgebirge und Westfall in Kürze << !Rogue/Dwarf Rogue
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T134437:0|t[Gegengift] << !Dwarf Rogue
    >>|T132794:0|t[Fläschchen Öl]
    >>|T134172:0|t[Große Geiferzahnschnauze]
    >>|T134028:0|t[Zähes Kondorfleisch]
    >>|T134321:0|t[Knuspriges Spinnenfleisch]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith GryanAll << Human
    #optional << Human
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind << !Human
    .fly Westfall >> Fliegt nach Westfall << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
    .dungeon DM
step << !Human
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .zone Westfall >> Lauf nach Westfall
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label GryanAll << Human
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .accept 65 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #requires Torment2DMEnd << Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe << !Human
    .fly Redridge >> Fliegt ins Rotkammgebirge << Human/Warlock
    .target Thor
    .zoneskip Westfall,1
    .dungeon DM
step << Human
    #xprate >1.59
    #optional
    #completewith WileyStart
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .dungeon DM
    .isOnQuest 65
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    .goto Elwynn Forest,65.20,69.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theocritus|r oben auf dem Turm von Azora
    .accept 94 >> Ein wachsames Auge annehmen
    .target Theocritus
    .dungeon DM
    .xp <20,1
step << !Human !Warlock
    #xprate >1.59 << !Hunter
    #optional
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chef Breanna|r innerhalb
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label WileyStart
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wiley der Schwarze|r oben
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 132 >> Die Bruderschaft der Defias annehmen
	.target Wiley the Black
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Gebt die Quest Rendezvous im Rotkammgebirge ab
    .accept 2282 >> Akzeptiert die Quest Althers Mühle
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_Ihr MÜSST dies für eure|r |T132290:0|t[Gifte]|cRXP_WARN_ Quest später machen|r
    >>|cRXP_WARN_Steht auf dem Wegpunkt. Positioniert eure Kamera und euren Cursor, bis ihr 3 |cRXP_PICK_Übungsschließkisten|r gleichzeitig anklicken könnt, ohne das ihr euch bewegen müsst|r
    .skill lockpicking,80 >>|cRXP_WARN_Öffnet die |cRXP_PICK_Übungsschließkassette|r am Boden in Althers Mühle, bis euer|r |T136058:0|t[Schlossknacken] 80 erreicht|r
    .dungeon DM
step << Rogue
    #xprate >1.59
	.goto Redridge Mountains,52.05,44.69
    >>Öffnet die |cRXP_PICK_Lucius's Schließkassette|r. Sammelt die Beute für die |cRXP_LOOT_Marke der Diebeskunst|r
    .complete 2282,1 --Token of Thievery (1)
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Gebt die Quest Althers Mühle ab
    .target Lucius
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith DefiasWestfall2
    .destroy 7907 >> Zerstört das |T134328:0|t[Zertifikat der Diebeskunst] aus eurer Tasche, da es nicht mehr benötigt wird
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Human/Warlock
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge << !Human !Warlock
    .fly Westfall >> Fliegt nach Westfall
    .target Ariena Stormfeather
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DefiasWestfall2
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 135 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith KlavenFinish
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Tötet |cRXP_ENEMY_Zwerggiftweberspinne|r und |cRXP_ENEMY_Giftweberspinne|r. Plündert sie für |cRXP_LOOT_kleiner Giftbeutel|r und ihre |cRXP_LOOT_Klebriges Spinnenbein|r
    >>|cRXP_WARN_You need a |cRXP_LOOT_kleiner Giftbeutel|r um das|r |T134437:0|t[Gegengift] herzustellen |cRXP_WARN_um später den|r |T136230:0|t[Die Berührung von Zanzil] |cRXP_WARN_debuff zu heilen|r
    >>|cRXP_WARN_Behaltet die |cRXP_LOOT_Klebriges Spinnenbeine|r für später|r
    >>|cRXP_WARN_Falls ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_als Freund habt, könnt ihr diesen Schritt überspringen und sie bitten, es später für euch zu entfernen|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
    .isQuestAvailable 2359
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==ACHTET AUF DEN FOLGENDEN BEREICH==|r
    >>|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
    >>|cRXP_WARN_Zusätzlich wird empfohlen, dass ihr Gegner-Namensplaketten (Standardtaste: V) aktiviert, da es euch erlaubt, Feinde hinter einigen der Ecken innerhalb des Turms zu sehen|r
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    >>|cRXP_WARN_Ihr MÜSST diese Quest für die|r |T132290:0|t[Gifte] annehmen
    .turnin 2360 >> Gebt die Quest Mathias und die Defias ab
    .accept 2359 >> Klavens Turm annehmen
    .target Agent Kearnen
    .dungeon DM
step << Rogue
    #xprate >1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Missgestaltete Drohne der Defias|r. Plündert es für |cRXP_LOOT_Turmschlüssel der Defias|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Die |cRXP_ENEMY_Missgestaltete Drohne der Defias|r taucht am Eingang des Turms auf und patrouilliert um das Äußere des Turms herum|r
    >>|cRXP_WARN_Passt auf, da er sehr viel Schaden verursacht. Falls von Euch|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_abbricht, nutzt schnell|r |T132307:0|t[Sprinten] |cRXP_WARN_und lauft weg|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Malformed Defias Drone
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Legt|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_für diese Quest an, wenn ihr nicht bereits einen|r |T135641:0|t[Dolch] |cRXP_WARN_angelegt habt|r
    .use 15396
    .itemcount 15396,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Reist bis zum 2. Stockwerk des Turms hinauf. Während ihr in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_seid und die |cRXP_ENEMY_Turmwachposten der Defias|r nicht neben euch sind, springt auf den Stuhl, dann auf die Lampe, dann auf das Bücherregal oben auf dem Wegpunkt|r
    >>|cRXP_WARN_Stoppt manuell|r |T132320:0|t[Verstohlenheit]|cRXP_WARN_, dann drückt von Euch "Interagieren mit Ziel" Taste, um das |cRXP_PICK_Dämmerwaldtruhe|r zu öffnen. Plündert sie für|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_NOTIZ: Eure|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_wird kurz nachdem ihr gelootet habt nicht funktionieren|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_Seid bereit zu laufen, wenn ihr nicht die |cRXP_ENEMY_Turmwachposten der Defias|r im 2. Stockwerk tötet. Sie werden euch wahrscheinlich permanent angreifen (aber nicht treffen), wenn ihr auf dem Bücherregal steht, da es ein Ausweich-Platz ist|r
    >>|cRXP_WARN_Wenn ihr einen|r |T135641:0|t[Dolch] |cRXP_WARN_in euren Taschen oder ausgerüstet habt, könnt ihr|r |T132282:0|t[Hinterhalt] |cRXP_WARN_auf die |cRXP_ENEMY_Turmpatrouille der Defias|r und |cRXP_ENEMY_Turmwachposten der Defias|r im Inneren wirken, um sie sofort zu töten. Seid bereit zu laufen, nachdem ihr den ersten |cRXP_ENEMY_Turmwachposten der Defias|r getötet habt und denkt daran, dass ihr von oben getroffen werden könnt. Das ist langsamer, aber VIEL sicherer|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Missgestaltete Drohne der Defias|r und |cRXP_ENEMY_Drohne der Defias|r am Eingang des Turms sein können, wenn ihr aus ihm laufen müsst|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Stelle ein |T134437:0|t[Gegengift] her
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step << Dwarf Rogue
    #xprate >1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Wirkt|T136225:0|t[Steingestalt],um|T136230:0|t[Berührung von Zanzil] Debuff zu entfernen|r
    .aura -9991
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Lauf in Richtung |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .skill firstaid,80 >> |cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .train 7934 >> |cRXP_WARN_Trainiert|r |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Stelle ein |T134437:0|t[Gegengift] her
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
    .dungeon DM
step << !Dwarf Rogue
    #xprate >1.59
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
    .dungeon DM
step
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Erinnert euch, wieder auf eure Hauptwaffe zu wechseln, sofern ihr sie durch einen|r |T135641:0|t[Dolch] |cRXP_WARN_gewechselt habt|r << Rogue
    .turnin 135 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 141 >> Die Bruderschaft der Defias annehmen
    .turnin 2359 >> Gebt die Quest Klavens Turm ab << Rogue
    .target Master Mathias Shaw
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith BandanaStart
    +Beginne damit, eine Gruppe für die Todesminen zusammenzustellen
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 141 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 142 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    #completewith next
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Reist nach Mondbruch
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Tötet den |cRXP_ENEMY_Bote der Defias|r. Plündert ihn für |cRXP_LOOT_Eine mysteriöse Nachricht|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Bote der Defias|r spawnt in Mondbruch. Er läuft entlang der Straße nördlich von Mondbruch zum Goldküstensteinbruch und zum Jangoschacht. Falls ihr ihn nicht entlang der Straße seht, wartet, bis er in Mondbruch spawnt|r
    >>|cRXP_WARN_Er respawnt nach 4-5 Minuten|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 142 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Der Verräter der Defias|r
    >>|cRXP_WARN_Möglicherweise müsst ihr auf |cRXP_FRIENDLY_Der Verräter der Defias|r warten, falls er nicht da ist|r
    >>|cRXP_WARN_Falls ihr bereits eine Gruppe gebildet habt, stellt sicher, dass Eure Gruppe den vorherigen Teil zuerst abgegeben hat, bevor die Eskorte startet|r
    .accept 155 >> Die Bruderschaft der Defias annehmen
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.56,71.71
    >>Begleitet |cRXP_FRIENDLY_Der Verräter der Defias|r zu den Todesminen
    >>|cRXP_WARN_Bleibt in der nähe von |cRXP_FRIENDLY_Der Verräter der Defias|r seid immer bereit zu kämpfen gegen |cRXP_ENEMY_Plünderer der Defias|r und |cRXP_ENEMY_Ausplünderer der Defias|r bis ihr Mondbruch erreicht|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 155 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 166 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label BandanaStart
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späherin Riell|r sie steht oben auf dem Turm
    .accept 214 >> Akzeptiert Rote Seidenkopftücher
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_tötet Gegner |cRXP_ENEMY_Gnolls|r südlich von der Späherkuppe während ihr auf eine Todesminen-Gruppe wartet|r
    .subzone 20 >>Reist nach Mondbruch, sobald eure Gruppe voll ist
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Betretet das Defias-Versteck mit eurer Gruppe
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith EnterDM
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith EnterDM
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    >>|cRXP_WARN_Ihr könnt dies auch in den Todesminen abschließen|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #completewith next
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Großknecht Thistlenettle|r. Plündert ihn für |cRXP_LOOT_Thistlenettles Abzeichen|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Betretet die Instanz Die Todesminen 
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #optional
    #completewith VanCleef << !Paladin
    #completewith DeadminesBackdoor << Paladin
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore
    #optional
    #completewith DeadminesBackdoor
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    >>Tötet |cRXP_ENEMY_Sneed|r. Plündert Ihn für |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith VanCleef
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label VanCleef
    >>Tötet |cRXP_ENEMY_Edwin VanCleef|r. Plündert ihn für |cRXP_LOOT_Van Cleevs Kopf|r und |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #label DeadminesBackdoor
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    >>|cRXP_WARN_Fragt Eure Gruppe, ob sie bleiben kann, um euch mit der paladinspezifischen |cRXP_FRIENDLY_Daphne Stillbrunn|r Eskorte bald zu helfen (falls möglich)|r << Paladin
    .subzone 920 >>Verlasst die Todesminen über den hinteren Ausgang östlich von |cRXP_ENEMY_Edwin van Cleef|r
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1436,39.444,85.755
    .goto 1436,40.010,86.514,20 >> Reist zu |cRXP_FRIENDLY_Daphne Stillbrunn|r auf ihrem Feld
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daphne Stillbrunn|r auf ihrem Feld, um ihre Eskorte zu starten
    >>|cRXP_WARN_Sie patrouilliert leicht auf ihrem Feld herum|r
    >>|cRXP_WARN_Seid vorsichtig, da dies etwas schwierig sein kann. Es werden 3 Wellen mit 3, dann 4, dann 5 Stufe-17-18 |cRXP_ENEMY_Räuber der Defias|r spawnen
    .turnin 1650 >>Gebt die Quest Der Foliant der Ehre ab
    .accept 1651,1 >>Der Foliant der Ehre annehmen
    .link https://youtu.be/1-nnLcqIIlQ?si=kZi41eXT8ZQmSBY2&t=10 >> KLICKT HIER für einen Videoanleitung
    .target Daphne Stilwell
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1436,41.311,88.506
    >>Beschützt |cRXP_FRIENDLY_Daphne Stilwell|r
    >>|cRXP_WARN_Falls entweder ihr oder |cRXP_FRIENDLY_Daphne Stillbrunn|r stirbt, wird die Quest fehlschlagen und ihr müsst erneut versuchen|r
    >>|cRXP_WARN_Seid vorsichtig, da dies etwas schwierig sein kann. Es werden 3 Wellen mit 3, dann 4, dann 5 Stufe-17-18 |cRXP_ENEMY_Räuber der Defias|r spawnen
    .complete 1651,1 --Protect Daphne Stilwell (1)
    .dungeon DM
step << Paladin
    #xprate >1.59
    #loop
    .goto 1436,41.645,88.729,0
    .goto 1436,41.196,89.173,10,0
    .goto 1436,41.696,89.244,10,0
    .goto 1436,41.645,88.729,10,0
    .goto 1436,41.461,88.498,10,0
    .goto 1436,41.311,88.506,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daphne Stillbrunn|r
    >>|cRXP_WARN_Sie patrouilliert leicht auf ihrem Feld herum|r
    .turnin 1651 >>Gebt die Quest Der Foliant der Ehre ab
    .accept 1652 >>Der Foliant der Tapferkeit annehmen
    .target Daphne Stilwell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #hardcore << !Paladin
    #optional
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Reist zum Leuchtturm von Westfall
    .dungeon DM
step
    #xprate >1.59
    #ah
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .accept 104 >> Akzeptiert die Quest Bedrohung an der Küste
    .accept 103 >> Akzeptiert die Quest Bewahrer der Flamme
    .turnin 103 >> Gebt die Quest Bewahrer der Flamme ab
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    #xprate >1.59
    #ssf
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Akzeptiert die Quest Bedrohung an der Küste
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #ah
    #optional
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .accept 104 >> Akzeptiert die Quest Bedrohung an der Küste
    .target Captain Grayson
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tötet |cRXP_ENEMY_Old Murk-Eye|r. Plündert ihn für seine |cRXP_LOOT_Schuppe|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrouilliert auf und ab die Endlose Küste. Falls ihr ihn nicht findet, überspringt diesen Schritt|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    #xprate >1.59
    #hardcore << !Paladin
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .turnin 104 >> Gebt die Quest Bedrohung an der Küste ab
    .target Captain Grayson
    .isQuestComplete 104
    .dungeon DM
step
    #xprate >1.59
    #optional
    #hardcore << !Paladin
    #completewith DeadminesEnd
    .abandon 103 >> Brecht die Quest Bewahrer der Flamme ab
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Betretet das Defias-Versteck allein
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto 1415,40.678,79.578
    >>Tötet die |cRXP_ENEMY_Defias|r außerhalb der Todesminen Instanz. Plündert sie für ihre |cRXP_LOOT_Rote Seidenkopftücher|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step << !Paladin
    #xprate >1.59 << !Hunter
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    >>|cRXP_WARN_Falls es keine |cRXP_ENEMY_Defias|r mehr in den Todesminen gibt, tötet sie stattdessen draußen|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #softcore
    #completewith DeadminesEnd
    .deathskip >> Sterbt und spawnt beim |cRXP_FRIENDLY_Geistheiler|r
    .target Geistheiler
    .dungeon DM
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .dungeon DM
    .xp <21,1
step << Rogue
    #xprate >1.59
    #optional
    #completewith DeadminesEnd
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label DeadminesEnd
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späherin Riell|r sie steht oben auf dem Turm
    .turnin 214 >> Gebt die Quest Rote Seidenkopftücher ab
    .target Scout Riell
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional
    #sticky
    #label LetterLater
    .abandon 373 >> Brecht die Quest Der nie verschickte Brief ab. Ihr werdet dies später tun.
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Caste [Teleportieren: Sturmwind]
    .zoneskip Stormwind City
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .train 2138 >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #optional << Mage
    #completewith ShoniEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .zoneskip Stormwind City
    .target Thor
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Betritt Zum Geschlachteten Lamm. Geht die Treppe hinunter
    .xp <22,1
    .dungeon DM
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
    .xp <22,1
    .dungeon DM
--XX Not adding one to check xp after turnins, waste of time to do that/take tram and train etc
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Reist zu |cRXP_FRIENDLY_Duthorian Rall|r in die Kathedrale von Sturmwind
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Gebt die Quest Der Foliant der Ehre ab
    .accept 1653 >>Akzeptiert die Quest Die Prüfung der Rechtschaffenheit
    .target Duthorian Rall
    .xp <22,1
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 19835 >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Reist zu |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der Sturmwind-Kathedrale
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r innerhalb
    .train 8103 >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    .train 1856 >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Lauf in Richtung |cRXP_FRIENDLY_Wu Shen|r im Kommandocenter
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Wu Shen|r auf der oberen Etage
    .train 6192 >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r innerhalb
    .turnin 167 >> Gebt die Quest Oh Bruder... ab
    .turnin 168 >> Gebt die Quest Die Suche nach Andenken ab
    .target Wilder Thistlenettle
    .dungeon DM
step << skip --Hunter - nothing good to train at 22
    #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Enris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
    .xp <22,1
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .turnin 2040 >> Gebt die Quest Unterirdischer Angriff ab
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Zahnrad|r
    .vendor 5519 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Reist zu |cRXP_FRIENDLY_Duthorian Rall|r in die Kathedrale von Sturmwind
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Gebt die Quest Der Foliant der Ehre ab
    .accept 1653 >>Akzeptiert die Quest Die Prüfung der Rechtschaffenheit
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .train 19835 >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >> Reist zu |cRXP_FRIENDLY_Hohepriesterin Laurena|r in der Sturmwind-Kathedrale
    .xp <22,1
    .dungeon DM
step << Priest
    #xprate >1.59
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r innerhalb
    .train 8103 >> Trainiere deine Klassenfähigkeiten
    .target High Priestess Laurena
    .xp <22,1
    .dungeon DM
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne der Nachtmensch|r
    .train 1856 >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Lauf in Richtung |cRXP_FRIENDLY_Wu Shen|r im Kommandocenter
    .xp <22,1
    .dungeon DM
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Wu Shen|r auf der oberen Etage
    .train 6192 >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .xp <22,1
    .dungeon DM
--XX No way to check if the user has the ironforge FP, if they don't, send them to the trainer there instead
step << Mage
    #xprate >1.59
    #optional
    #completewith next
    .cast 3561 >>Caste [Teleportieren: Sturmwind]
    .dungeon DM
step << Mage
    #xprate >1.59
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elsharin|r oben auf dem Turm
    .train 2138 >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
    .xp <22,1
    .dungeon DM
step << Druid
    #xprate >1.59
    #optional
    #completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    #xprate >1.59
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
	>>Gehe nach Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .train 8926 >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <22,1
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #completewith NEIFFP
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #label DeeprunDMNoFP1
    #completewith NEIFFP
    >>|cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_falls nötig während der Tramfahrt|r
    .zone Ironforge >> Nehmt die Tiefenbahn nach Eisenschmiede
    .zoneskip Ironforge
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    #requires DeeprunDMNoFP1
    #label DeeprunDMNoFP2
    #completewith NEIFFP
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor 5175 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .target Gearcutter Cogspinner
    .bronzetube
    .dungeon DM
step << NightElf Warrior/NightElf Hunter
    #xprate >1.59 << !Hunter
    #requires DeeprunDMNoFP2
    #label DeeprunDMNoFP3
    #completewith NEIFFP
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .train 197 >> Erlernen 2h Äxte << Warrior
    .train 199 >> Erlernen 2h Streitkolben << Warrior
    .train 266 >> Erlerne Schusswaffen << Hunter
    .target Buliwyf Stonehand
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP3
    #label DeeprunDMNoFP4
    #completewith NEIFFP
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft den|r |T135427:0|t[Schweren Wurfdolch] |cRXP_BUY_von ihr|r
    .collect 3108,200 --Collect Heavy Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf Warrior
    #xprate >1.59
    #requires DeeprunDMNoFP4
    #label DeeprunDMNoFP5
    #completewith NEIFFP
    +|cRXP_WARN_Legt den|r |T135427:0|t[Schweren Wurfdolch] an
    .use 3108
    .itemcount 3108,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #label NEIFFP
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    #optional
    .goto Ironforge,50.826,5.613
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .use 5352
    .itemcount 5352,1
    .zoneskip Ironforge,1
    .dungeon DM
step << NightElf
    #xprate >1.59 << !Hunter
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gerrig Bonegrip|r innerhalb
    .turnin 968 >> Gebt die Quest Die Macht in der Tiefe ab
    .target Gerrig Bonegrip
    .zoneskip Ironforge,1
    .isOnQuest 968
    .dungeon DM
step
    #xprate >1.59 << !Hunter
    #requires LetterLater
    #optional
    .hs >> Benutzt euren Ruhestein zum Dunkelküste
    .zoneskip Darkshore
    .dungeon DM




----End of Hunter/All 2x Deadmines section----
----Start of <1.59x Redridge Transition----






step << !Hunter
--XX NightElf
    #xprate <1.59
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Kauft|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_und ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Dies ist zum Aufleveln  eurer|r |T133971:0|t[Kochkunst] |cRXP_WARN_während ihr bald auf dem Boot seid|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1
    .target Dalmond
step << !Hunter
--XX NightElf
    #xprate <1.59
    #completewith next
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Kauft|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm, bis ihr genauso viele|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_ oder mehr wie|r |T132832:0|t[Kleine Eier] |cRXP_BUY_die ihr derzeit habt|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
--ZXCV
step << !Hunter
    #xprate <1.59
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439,32.432,43.744,15 >> Reist zum Anlegestelle des Hafens von Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
step << !Hunter
    #xprate <1.59
    #optional
    #label DarkshoreRRCook1
    #requires TravelMenethilRRBoat
    #completewith MenethilRRBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #xprate <1.59
    #optional
    #requires DarkshoreRRCook1
    #completewith MenethilRRBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T132832:0|t|cRXP_LOOT_[Kleines-Ei]|r |cRXP_WARN_und|r |T134059:0|t[Milde Gewürze] |cRXP_WARN_zu|r |T132834:0|t[Kräutergebackenes Ei]
    .usespell 2550
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #xprate <1.59
    #label MenethilRRBoat
    .goto Darkshore,32.29,44.05
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe], falls ihr sie braucht |cRXP_WARN_während ihr auf das Boot zum Hafen von Menethil wartet|r << Rogue/Warrior/Paladin
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << !NightElf !Hunter
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Kaufe eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Neal Allen|r keine hat|r
	.target Neal Allen
    .bronzetube
step << !NightElf !Hunter
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Shellei Brondir



----Start of <1.59x Night Elf Wetlands->IF Transition----



step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Häute junger Krokilisken annehmen
step << !Hunter NightElf
    #xprate <1.59
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Erlernt die Flugroute nach Sumpfland
    .target Shellei Brondir
step << !Hunter NightElf
    #xprate <1.59
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Kaufe eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Neal Allen|r keine hat|r
	.target Neal Allen
    .bronzetube
step << !Hunter NightElf !Warrior
    #xprate <1.59
    #completewith crocs
    >>Töte |cRXP_ENEMY_Junge Sumpflankrokilisken|r. Loote sie für ihre |cRXP_LOOT_Haut eines jungen Krokilisken|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
    .xp <19,1--ignore if level 18 or below
step << !Hunter NightElf
    #xprate <1.59
    #completewith next
    .goto Wetlands,49.91,39.36,50 >> Reisen east toward |cRXP_FRIENDLY_Einar Stonegrip|r
step << !Hunter NightElf
    #xprate <1.59
    #label crocs
    .goto Wetlands,49.91,39.36
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einar Stonegrip|r
    .accept 469 >> Tägliche Lieferung annehmen
step << !Hunter NightElf !Warrior
    #xprate <1.59
    .goto Wetlands,53.2,41.3,55,0
    .goto Wetlands,58.5,50.8,55,0
    .goto Wetlands,62.1,61.4,55,0
    .goto Wetlands,64.0,72.2
    >>Töte |cRXP_ENEMY_Junge Sumpflankrokilisken|r. Loote sie für ihre |cRXP_LOOT_Haut eines jungen Krokilisken|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
    .xp <19,1
step << skip --logout skip !Hunter NightElf
    #xprate 1.49-1.59
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Geht zur Höhle am Fuß des Staudamms im östlichen Sumpfland
	.zone Loch Modan >> Loggt euch oben auf den Pilzen am hinteren Ende der Höhle aus.
    >>Wenn ihr euch wieder anmeldet, werdet ihr nach Thelsamar teleportiert
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> |cRXP_WARN_KLICKT HIER FÜR EINE REFERENZ|r
step << !Hunter NightElf
    #xprate <1.5
    #completewith next
    .goto Wetlands,53.14,70.38,30,0
    .goto Wetlands,48.32,67.07,35,0
    .goto Wetlands,50.14,72.10,30,0
    .goto Loch Modan,25.4,10.6,30 >> Reist nach Loch Modan
    .zone Loch Modan >> |cRXP_WARN_Bleibt auf der Hauptstraße, um Mobs zu vermeiden|r
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chefingenieur Hinderweir VII.|r
    .accept 250 >> Akzeptiert die Quest Eine dunkle Bedrohung
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,56.05,13.24
    >>Klickt das |cRXP_PICK_Verdächtige Fass|r
    .turnin 250 >> Gebt die Quest Eine dunkle Bedrohung ab
    .accept 199 >> Akzeptiert die Quest Eine dunkle Bedrohung
step << !Hunter NightElf
    #xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chefingenieur Hinderweir VII.|r
    .turnin 199 >> Gebt die Quest Eine dunkle Bedrohung ab
step << !Hunter NightElf
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .target Thorgrum Borrelson
step << !Hunter NightElf
    #xprate <1.59
    .goto Loch Modan,21.30,68.60,40,0
    .goto Loch Modan,19.11,62.11,25,0
    .goto Dun Morogh,86.04,51.05,20 >> Reist nach Dun Morogh
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step << !Hunter NightElf
    #xprate <1.59
    .goto Dun Morogh,55.13,34.91
    .zone Ironforge >> Lauf nach Ironforge
step << skip --logout skip !Hunter NightElf
    #xprate <1.59
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>Geht zur Trogg-Höhle im Westen und loggt euch auf der Bohrmaschine in der Nähe des Eingangs aus, um einen Logout-Skip durchzuführen, der euch zu Eisenschmiede teleportiert
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >> Klicke hier als Referenz
step << !Hunter NightElf
    #xprate <1.59
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden



----End of <1.59x Night Elf Wetlands->IF Transition----



step << skip --logout skip !Hunter
    #xprate <1.59
    #completewith next
    #optional
    .goto Ironforge,56.23,46.83,0
    .goto Ironforge,78.00,52.00,20 >> |cRXP_WARN_Führt einen Logout-Skip durch, indem ihr auf einen der Greif-Köpfe springt, euch abmeldet und dann wieder anmeldet|r
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Klickt hier für einen Video-Guide|r
step << !Hunter
    #xprate <1.59
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor >> |cRXP_WARN_Kaufe eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Gearcutter Cogspinner|r keine hat|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << !Hunter
    #xprate <1.59
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Betretet die Tiefenbahn. Nehmt die Straßenbahn nach Sturmwind
    >>|cRXP_WARN_Level eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_falls benötigt, während ihr auf die Tram wartet|r
    >>Ihr werdet eure|cRXP_WARN_ |T135966:0|t[Erste Hilfe] |rauf 80 benötigen für eine spätere Ques mit level 24|cRXP_WARN_ << Rogue !Dwarf




----End of <1.59x Redridge Transition----




]])

----Start of <1.59x Redridge----
----2x and ALL Hunters stay in Darkshore/Ashen and grind----

RXPGuides.RegisterGuide([[
#xprate <1.59
#classic
#tbc
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 19-20 Rotkammgebirge
#next 20-21 Dunkelküste/Eschental

step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_WARN_Kaufe eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Billibub Zahnrad|r keine hat|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .accept 2040 >> Unterirdischer Angriff annehmen
    .target Shoni the Shilent
    .dungeon DM
step << !NightElf
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
    .target Furen Longbeard
    .isOnQuest 1338
step
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Akzeptiert die Quest Oh Bruder...
    .accept 168 >> Akzeptiert Die Suche nach Andenken
    .target Wilder Thistlenettle
    .dungeon DM
step << !NightElf
    #xprate <1.5
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Gebt die Quest Ein bescheidener Anfang ab
    .target Baros Alexston
    .isQuestComplete 399
--XX Westfall 1x only
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Reist zum Magierturm
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Paladin/Priest !NightElf
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
    #label PalTrainer
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Priest !NightElf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Kauft einen|r |T135139:0|t[Brennender Zauberstab] |cRXP_WARN_Falls es ein upgrade ist|r
    >>|cRXP_WARN_Es ist wichtig, einen Zauberstab ohne Schattenschaden zu kaufen. Später werdet ihr auf Gegner stoßen, die gegen Schattenschaden resistent sind.|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T136058:0|t[Schlossknacken] |cRXP_WARN_trainiert, da ihr sie bald für die Schurken-Klassenquest von Euch brauchen werdet|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Betretet das SI:7-Hauptquartier. Geht die Treppen nach oben zu |cRXP_FRIENDLY_Renzik "Das Messer"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Renzik "Das Messer"|r
    .accept 2281 >> Akzeptiert die Quest Rendezvous im Rotkammgebirge
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior !NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Erlernt 1h Schwerter << Mage/Rogue/Warlock
    .train 1180 >> Erlernen Dolche << Mage/Druid
    .train 202 >> Erlernt 2h Schwerter << Warrior/Paladin
    .target Woo Ping
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Gebt die Quest Der Foliant der Offenbarung ab
    .target Stephanie Turner
    .accept 1644 >> Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1644 >> Gebt die Quest Der Foliant der Offenbarung ab
    >>|cRXP_WARN_Ihr werdet 10|T132889:0|t[Leinenstoff] benötigen|r
--  .accept 1780 >> Accept The Tome of Divinity
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft eine|r |T135342:0|t[Kris] |cRXP_BUY_oder etwas Besseres beim Auktionshaus|r
    >>|cRXP_WARN_Legt es an, sobald ihr Stufe 19 seid|r
    .collect 2209,1 --Kris
    .target Marda Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft einen|r |T135342:0|t[Kris]
    >>|cRXP_WARN_Legt es an, sobald ihr Stufe 19 seid|r
    .collect 2209,1 --Kris
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Legt|r |T135342:0|t[Kris] an
    .use 2209
    .itemcount 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.89
    .xp <19,1
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionator Jaxon|r
    >>Kauft das |T134437:0|t[Gegengift] für eure |T132290:0|t[Gifte]-Quest später und den Rest für schnellere Questabgaben im Rotkammgebirge << !Dwarf Rogue
    >>Kauft die folgenden Gegenstände für schnellere Abgaben im Rotkammgebirge << !Rogue/Dwarf Rogue
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T134437:0|t[Gegengift] << !Dwarf Rogue
    >>|T134172:0|t[Große Geiferzahnschnauze]
    >>|T134028:0|t[Zähes Kondorfleisch]
    >>|T134321:0|t[Knuspriges Spinnenfleisch]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon !DM
step << !Human !Warlock
    #completewith start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Longdrink|r
    .goto StormwindClassic,66.27,62.12
    .fp Stormwind >> Erlernt die Sturmwind Flugroute
    .target Dungar Longdrink
step << NightElf
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Verlasst Sturmwind
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
    .zoneskip Westfall
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Die Bruderschaft der Defias annehmen
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64,-1
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thor|r oder |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Thor
    .target Dungar Longdrink
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Lauf nach Westfall
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
    .target Thor
step << Gnome Warlock
#xprate >1.49
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Thor
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Die Bruderschaft der Defias annehmen
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << NightElf Warrior/NightElf Priest
    #completewith next
    .goto Elwynn Forest,41.08,65.76,25 >> Lauf nach Goldhain << Warrior
    .goto Elwynn Forest,43.17,65.70,15 >> Lauf nach Goldhain << Priest
step << NightElf Warrior
    .goto Elwynn Forest,41.08,65.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyria|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
step << NightElf Priest
    >>Reist zum Gasthaus. Geh nach oben
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Josetta|r
    .goto Elwynn Forest,43.17,65.70,12,0
    .goto Elwynn Forest,43.80,66.47,8,0
    .goto Elwynn Forest,43.28,65.72
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Priestess Josetta
step << !Human !Warlock
    #xprate >1.49 << !NightElf
    .xp <20,1
    >>Lauft zum Turm von Azora
    .goto Elwynn Forest,65.20,69.80
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Ein wachsames Auge annehmen
step << !NightElf
.dungeon !DM
    #xprate <1.5 << !Human
    #completewith next
    .goto StormwindClassic,66.27,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge >>Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    #completewith next
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
step << NightElf
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Deputy Feldon|r
    .target Deputy Feldon
    .accept 246 >> Akzeptiert die Quest Einschätzung der Gefahr
step
.dungeon DM
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiley der Schwarze|r die Treppe hinauf
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 132 >> Die Bruderschaft der Defias annehmen
	.target Wiley the Black
step
.dungeon DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Akzeptiert die Quest Botschaft nach Sturmwind
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Akzeptiert die Quest Der Preis für Hufeisen
step
.dungeon DM
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Fliegt nach Westfall
    .target Ariena Stormfeather
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 135 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step
.dungeon DM
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 141 >> Die Bruderschaft der Defias annehmen
    .target Master Mathias Shaw
step
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 141 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 142 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Reist nach Mondbruch
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Tötet den |cRXP_ENEMY_Bote der Defias|r. Plündert ihn für |cRXP_LOOT_Eine mysteriöse Nachricht|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Bote der Defias|r spawnt in Mondbruch. Er läuft entlang der Straße nördlich von Mondbruch zum Goldküstensteinbruch und zum Jangoschacht. Falls ihr ihn nicht entlang der Straße seht, wartet, bis er in Mondbruch spawnt|r
    >>|cRXP_WARN_Er respawnt nach 4-5 Minuten|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 142 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Der Verräter der Defias|r
    >>|cRXP_WARN_Möglicherweise müsst ihr auf |cRXP_FRIENDLY_Der Verräter der Defias|r warten, falls er nicht da ist|r
    .accept 155 >> Die Bruderschaft der Defias annehmen
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>Begleitet |cRXP_FRIENDLY_Der Verräter der Defias|r zu den Todesminen
    >>|cRXP_WARN_Bleibt neben |cRXP_FRIENDLY_Der Verräter der Defias|r jederzeit! Seid bereit, |cRXP_ENEMY_Die Defias|r zu bekämpfen, wenn ihr Mondbruch erreicht|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 166 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späherin Riell|r sie steht oben auf dem Turm
    .accept 214 >> Akzeptiert Rote Seidenkopftücher
    .goto Westfall,56.67,47.35
    .target Scout Riell
step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> Jetzt solltet ihr nach einer Gruppe für die Todesminen suchen
    >>Tötet Gnolle während du eine Gruppe für die Todesminen zusammenstellst
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Reist zu den Todesminen
step
.dungeon DM
    #completewith EnterDM
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für ihre |cRXP_LOOT_Seidenkopftücher|r
    >>|cRXP_WARN_Ihr könnt dies auch nach der Instanz abschließen|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Großknecht Thistlenettle|r. Plündert ihn für |cRXP_LOOT_Thistlenettles Abzeichen|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Betretet die Instanz Die Todesminen 
step
.dungeon DM
    #completewith DMend
    >>Tötet die |cRXP_ENEMY_Defias|r.in den Todesminen Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Tötet |cRXP_ENEMY_Sneed|r. Plündert Ihn für |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Tötet |cRXP_ENEMY_Edwin VanCleef|r. Plündert ihn für |cRXP_LOOT_Van Cleevs Kopf|r und |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r]
    >>|cRXP_WARN_benutze |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r], um die Quest zu beginnen|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Der nie verschickte Brief annehmen
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> Reist zur Späherkuppe
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Gryan Starkmantel|r und |cRXP_FRIENDLY_Späherin Riell|r oben auf dem Turm
    .turnin 166 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin -214 >> Gebt die Quest Rote Seidenkopftücher ab
    .target +Scout Riell
    .goto Westfall,56.67,47.35
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step
.dungeon DM
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Gebt die Quest Botschaft nach Sturmwind ab
    .accept 121 >> Akzeptiert die Quest Botschaft nach Sturmwind
    .target General Marcus Jonathan
step << Mage
.dungeon DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Reist zum Magierturm
step << Mage
.dungeon DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
	.xp <20,1
    .target Larimaine Purdue
step << Warlock
.dungeon DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
.dungeon DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
.dungeon DM
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
    .xp <20,1
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .target Argos Nightwhisper
    .dungeon DM
step << Druid
.dungeon DM
    #season 2
    #completewith next
    +|cRXP_WARN_Ihr solltet euch darauf vorbereiten, zu|r |T132276:0|t[Wildheit] |cRXP_WARN_anstatt|r |T136096:0|t[Gleichgewicht] zu nutzen|cRXP_WARN_sobald ihr die Runen für eure Fähigkeiten|r |T132135:0|t[Zerfleischen] |cRXP_WARN_und|r |T236167:0|t[Wildes Brüllen] habt
step << Druid
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sheldras Moontree|r
    .goto StormwindClassic,20.89,55.50
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 768 >> Erlernt |T132115:0|t[Katzengestalt]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r. Er wird dir den [|cRXP_LOOT_Foliant der Ehre|r] geben
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Der Foliant der Tapferkeit annehmen
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Gebt die Quest Der Foliant der Ehre ab
    .accept 1650 >>Der Foliant der Ehre annehmen
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Priest
.dungeon DM
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Gebt die Quest Ein nie abgeschickter Brief ab
    .accept 389 >> Bazil Thedd annehmen
    .target Baros Alexston
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Distelklette|r und |cRXP_FRIENDLY_Shoni die Schtille|r
    .turnin 167 >> Gebt die Quest Oh Bruder... ab
    .turnin 168 >> Gebt die Quest Die Suche nach Andenken ab
    .target +Wilder Thistlenettle
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >> Gebt die Quest Unterirdischer Angriff ab
    .target +Shoni the Shilent
    .goto StormwindClassic,55.510,12.504
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Rogue
.dungeon DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
.dungeon DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_WARN_und rüstet es auf Stufe 21 aus|r
    >>|cRXP_WARN_Kauft etwas aus dem Auktionshaus, wenn es etwas günstigeres oder besseres gibt|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_WARN_und rüstet es auf Stufe 21 aus|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #optional
    #completewith next
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_WARN_wenn ihr genug Geld habt. Rüstet sie aus, wenn ihr Stufe 21 erreicht|r
    >>|cRXP_WARN_Kauft etwas aus dem Auktionshaus, wenn es etwas günstigeres oder besseres gibt|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_WARN_wenn ihr genug Geld habt. Rüstet sie aus, wenn ihr Stufe 21 erreicht|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #optional
    #completewith next
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aufseher Thelwasser|r
    .turnin 389 >> Gebt die Quest Bazil Thredd ab
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft das |T134437:0|t[Gegengift] für eure |T132290:0|t[Gifte]-Quest später und den Rest für schnellere Questabgaben im Rotkammgebirge << !Dwarf Rogue
    >>Kauft die folgenden Gegenstände für schnellere Abgaben im Rotkammgebirge << !Rogue/Dwarf Rogue
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T134437:0|t[Gegengift] << !Dwarf Rogue
    >>|T134172:0|t[Große Geiferzahnschnauze]
    >>|T134028:0|t[Zähes Kondorfleisch]
    >>|T134321:0|t[Knuspriges Spinnenfleisch]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
    .dungeon DM
step
.dungeon DM
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Verlasst Sturmwind. Reist nach Goldhain
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Gebt die Quest Der Preis für Hufeisen ab
    .accept 119 >> Akzeptiert die Quest Zurück zu Verner
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 118
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .accept 119 >> Akzeptiert die Quest Zurück zu Verner
    .xp <20,1
step
.dungeon DM
    #completewith next
    .subzone 91 >> Reist zum Turm von Azora. Erklimmt den Turm
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Ein wachsames Auge annehmen
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_hat eine begrenzte Auswahl an Gegenständen wie|r |T134938:0|t|T134937:0|t|T134943:0|t[Schriftrollen] |cRXP_BUY_und|r |T134850:0|t|T134830:0|t[Tränke]|cRXP_BUY_, die ihr kaufen solltet, falls verfügbar|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_hat eine begrenzte Auswahl an Gegenständen wie|r |T134938:0|t|T134937:0|t|T134943:0|t[Schriftrollen] |cRXP_BUY_und|r |T134830:0|t|T134830:0|t[Tränke]|cRXP_BUY_, die ihr kaufen solltet, falls verfügbar|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
.dungeon DM
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Reist ins Rotkammgebirge

step
.dungeon DM
    #xprate <1.5
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step
.dungeon DM
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Akzeptiert die Quest Bedrohung durch die Blackrock
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Akzeptiert die Quest Die verlorenen Werkzeuge
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Akzeptiert die Quest Der Preis für Hufeisen
step
.dungeon DM
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Gebt die Quest Zurück zu Verner ab
    .accept 124 >> Akzeptiert die Quest Das Bellen der Gnolle
step
.dungeon DM
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Gebt die Quest Zurück zu Verner ab
    .accept 124 >> Akzeptiert die Quest Das Bellen der Gnolle
    .accept 122 >> Akzeptiert die Quest Bauchschuppen
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >> Gebt die Quest Botschaft nach Sturmwind ab
    .accept 121 >> Akzeptiert die Quest Botschaft nach Sturmwind
step
.dungeon !DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Akzeptiert die Quest Botschaft nach Sturmwind
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >> Fischhandel annehmen
step
#xprate <1.5
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .accept 129 >> Akzeptiert die Quest Ein geschenktes Mittagessen
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiley der Schwarz|r oben die Treppen hinauf
	.target Wiley the Black
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
    .isOnQuest 65
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.85,46.32
    .accept 34 >> Akzeptiert die Quest Ein ungebetener Gast
step << Warlock
    .goto Redridge Mountains,15.68,49.30
    >>Tötet |cRXP_ENEMY_Stopfwanst|r. Plündert ihn für seine |cRXP_LOOT_Hauer|r
    >>|cRXP_WARN_Zieht |cRXP_ENEMY_Stopfwanst|r nach Seenhain, damit die |cRXP_FRIENDLY_Wachen|r euch beim Töten von |rStopfwanst|cRXP_ENEMY_ helfen|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Ihr könnt diesen Schritt überspringen und später zurückkommen|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >> |cRXP_WARN_klickt hier für einen Video-Guide|r
    .mob Bellygrub
step << Warlock
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Gebt die Quest Ein ungebetener Gast ab
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Gebt die Quest Rendezvous im Rotkammgebirge ab
    .accept 2282 >> Akzeptiert die Quest Althers Mühle
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Akzeptiert die Quest Hilarys Halskette
step
    >>|cRXP_WARN_Springt in den See|r
    >>Öffnet |cRXP_PICK_Glitzernder Matsch|r. Plündert es für |cRXP_LOOT_Hilarys Halskette|r
    >>|cRXP_WARN_Es kann an mehreren Orten im See spawnen|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
step
    #softcore
    >>Öffnet die |cRXP_PICK_Versunkene Truhe|r. Plündert sie für |cRXP_LOOT_Oslows Werkzeugkasten|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #xprate <1.5
    #sticky
    #completewith orcs
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    >>Tötet |cRXP_ENEMY_Taranteln|r. Plündert sie für ihr |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>|cRXP_WARN_Verkauft KEINE dieser Gegenstände, bis ihr die Quest Rotkammgulasch abgebt|r
    >>|cRXP_WARN_Sichert jeden|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_, den ihr plündert, da ihr ihn zum Leveln von|r |T133971:0|t[Kochkunst] |cRXP_WARN_bis 50 verwenden könnt, was später im Dämmerwald erforderlich ist|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Gebt die Quest Ein geschenktes Mittagessen ab
    .accept 130 >> Akzeptiert die Quest Besuch im Kräuterladen
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .accept 246 >> Akzeptiert die Quest Einschätzung der Gefahr
step
    #xprate <1.5
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Tötet |cRXP_ENEMY_Taranteln|r. Plündert sie für ihr |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #xprate <1.5
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>Tötet |cRXP_ENEMY_Bastard der Rotkammgnolle|r und |cRXP_ENEMY_Wilderer der Rotkammgnolle|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
step
    .goto Redridge Mountains,49.0,70.0
    >>Tötet |cRXP_ENEMY_Murlocküstenschläger|r und |cRXP_ENEMY_Schwacher Murlocgezeitenrufer|r. Plündert sie für ihre |cRXP_LOOT_Murlocflosse|r und |cRXP_LOOT_Gefleckter Sonnenfisch|r
	>>|cRXP_WARN_Passt auf, dieses Gebiet ist ein Hyperspawn, das heißt die |cRXP_ENEMY_Murlocs|r respawnen schnell nach|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr keine|r |cRXP_ENEMY_Terrorkondor|r seht
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #label orcs
    >>Tötet |cRXP_ENEMY_Grunzer der Blackrock|r und |cRXP_ENEMY_Kundschafter der Blackrock|r. Plündert sie für |cRXP_LOOT_Kampferprobte Axt|r
	>>Passt auf, die |cRXP_WARN_Kundschafter der Blackrock|cRXP_ENEMY_ wirken |T132149:0|t[Netz]|r auf euch|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Springt in den See|r
    >>Öffnet die |cRXP_PICK_Versunkene Truhe|r. Plündert sie für |cRXP_LOOT_Oslows Werkzeugkasten|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-7687 >> Farmt, bis ihr 7687 Erfahrungspunkte von Stufe 20 entfernt seid << !Rogue
    .xp 20-10012 >> Farmt, bis ihr 10012 Erfahrungspunkte von Stufe 20 entfernt seid << Rogue
step << Rogue
    #completewith next
    .subzone 97 >> Reist zu Althers Mühle
step << Rogue
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_Ihr MÜSST dies für eure|r |T132290:0|t[Gifte]|cRXP_WARN_ Quest später machen|r
    >>|cRXP_WARN_Steht auf dem Wegpunkt. Positioniert eure Kamera und euren Cursor, bis ihr 3 |cRXP_PICK_Übungsschließkisten|r gleichzeitig anklicken könnt, ohne das ihr euch bewegen müsst|r
    .skill lockpicking,80 >>|cRXP_WARN_Öffnet die |cRXP_PICK_Übungsschließkassette|r am Boden in Althers Mühle, bis euer|r |T136058:0|t[Schlossknacken] 80 erreicht|r
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Öffnet die |cRXP_PICK_Lucius's Schließkassette|r. Sammelt die Beute für die |cRXP_LOOT_Marke der Diebeskunst|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto Redridge Mountains,33.50,48.97,150 >> Reist nach Seenhain
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Gebt die Quest Bedrohung durch die Blackrock ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Gebt die Quest Die verlorenen Werkzeuge ab
    .accept 89 >> Akzeptiert die Quest Die Immerruhbrücke
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Gebt die Quest Fischhandel ab
    .accept 150 >> Murlocwilderer annehmen
    .turnin 150 >> Gebt die Quest Murlocwilderer ab
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Gebt die Quest Fischhandel ab
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Gebt die Quest Besuch im Kräuterladen ab
    .accept 131 >> Akzeptiert die Quest Narzissen für eine Dame
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Gebt die Quest Narzissen für eine Dame ab
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >> Gebt die Quest Althers Mühle ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >> Zerstört die |T134328:0|t[Zertifikat der Diebeskunst]. Ihr braucht es nicht mehr
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Gebt die Quest Einschätzung der Gefahr ab
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20 >> Grinde bis ihr Stufe 20 erreicht
step << Rogue
.dungeon DM
    #softcore
    .isOnQuest 2360
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge << !Human
    .fly Westfall >> Fliegt nach Westfall
    .target Ariena Stormfeather
step
.dungeon !DM << Rogue
    #completewith InRR
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
	.target Ariena Stormfeather
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge << !Human !Warlock
    .fly Stormwind >> Flieg nach Sturmwind
step << Rogue
.dungeon !DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_WARN_und rüstet es auf Stufe 21 aus|r
    >>|cRXP_WARN_Kauft etwas aus dem Auktionshaus, wenn es etwas günstigeres oder besseres gibt|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_WARN_und rüstet es auf Stufe 21 aus|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #optional
    #completewith next
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon !DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_WARN_wenn ihr genug Geld habt. Rüstet sie aus, wenn ihr Stufe 21 erreicht|r
    >>|cRXP_WARN_Kauft etwas aus dem Auktionshaus, wenn es etwas günstigeres oder besseres gibt|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_WARN_wenn ihr genug Geld habt. Rüstet sie aus, wenn ihr Stufe 21 erreicht|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #optional
    #completewith next
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step << Warlock
.dungeon !DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geht Zum geschlachtete Lamm und dann in den Keller
step << Warlock
.dungeon !DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
step << Mage
.dungeon !DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Reist zum Magierturm
step << Mage
.dungeon !DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Mage
.dungeon !DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
	.xp <20,1
    .target Larimaine Purdue
step
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .target Argos Nightwhisper
    .dungeon !DM
step << Druid
.dungeon !DM
    #season 2
    #completewith next
    +|cRXP_WARN_Ihr solltet euch darauf vorbereiten, zu|r |T132276:0|t[Wildheit] |cRXP_WARN_anstatt|r |T136096:0|t[Gleichgewicht] zu nutzen|cRXP_WARN_sobald ihr die Runen für eure Fähigkeiten|r |T132135:0|t[Zerfleischen] |cRXP_WARN_und|r |T236167:0|t[Wildes Brüllen] habt
step << Druid
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sheldras Moontree|r
    .goto StormwindClassic,20.89,55.50
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 768 >> Erlernt |T132115:0|t[Katzengestalt]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon !DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r. Er wird dir den [|cRXP_LOOT_Foliant der Ehre|r] geben
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Der Foliant der Tapferkeit annehmen
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Gebt die Quest Der Foliant der Ehre ab
    .accept 1650 >>Der Foliant der Ehre annehmen
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Priest
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
step << Rogue
.dungeon !DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Rogue
.dungeon !DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin



----Start of Rogue 20 Quest <1.59x Section----



step << NightElf Rogue
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >> Lauf nach Westfall
    >>Fliegt dorthin, wenn ihr bereits die Flugroute nach Westfall habt
    .isOnQuest 2360
step << NightElf Rogue
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Erlernt die Flugroute nach Westfall
    .target Thor
    .isOnQuest 2360
step << !NightElf Rogue
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Tötet |cRXP_ENEMY_Zwerggiftweberspinne|r und |cRXP_ENEMY_Giftweberspinne|r. Plündert sie für |cRXP_LOOT_kleiner Giftbeutel|r und ihre |cRXP_LOOT_Klebriges Spinnenbein|r
    >>|cRXP_WARN_You need a |cRXP_LOOT_kleiner Giftbeutel|r um das|r |T134437:0|t[Gegengift] herzustellen |cRXP_WARN_um später den|r |T136230:0|t[Die Berührung von Zanzil] |cRXP_WARN_debuff zu heilen|r
    >>|cRXP_WARN_Behaltet die |cRXP_LOOT_Klebriges Spinnenbeine|r für später|r
    >>|cRXP_WARN_Falls ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_als Freund habt, könnt ihr diesen Schritt überspringen und sie bitten, es später für euch zu entfernen|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==ACHTET AUF DEN FOLGENDEN BEREICH==|r
    >>|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
    >>|cRXP_WARN_Zusätzlich wird empfohlen, dass ihr Gegner-Namensplaketten (Standardtaste: V) aktiviert, da es euch erlaubt, Feinde hinter einigen der Ecken innerhalb des Turms zu sehen|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    >>|cRXP_WARN_Ihr MÜSST diese Quest für die|r |T132290:0|t[Gifte] annehmen
    .turnin 2360 >> Gebt die Quest Mathias und die Defias ab
    .accept 2359 >> Klavens Turm annehmen
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Missgestaltete Drohne der Defias|r. Plündert es für |cRXP_LOOT_Turmschlüssel der Defias|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Die |cRXP_ENEMY_Missgestaltete Drohne der Defias|r taucht am Eingang des Turms auf und patrouilliert um das Äußere des Turms herum|r
    >>|cRXP_WARN_Passt auf, da er sehr viel Schaden verursacht. Falls von Euch|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_abbricht, nutzt schnell|r |T132307:0|t[Sprinten] |cRXP_WARN_und lauft weg|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Legt|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_für diese Quest an, wenn ihr nicht bereits einen|r |T135641:0|t[Dolch] |cRXP_WARN_angelegt habt|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Reist bis zum 2. Stockwerk des Turms hinauf. Während ihr in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_seid und die |cRXP_ENEMY_Turmwachposten der Defias|r nicht neben euch sind, springt auf den Stuhl, dann auf die Lampe, dann auf das Bücherregal oben auf dem Wegpunkt|r
    >>|cRXP_WARN_Stoppt manuell|r |T132320:0|t[Verstohlenheit]|cRXP_WARN_, dann drückt von Euch "Interagieren mit Ziel" Taste, um das |cRXP_PICK_Dämmerwaldtruhe|r zu öffnen. Plündert sie für|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_NOTIZ: Eure|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_wird kurz nachdem ihr gelootet habt nicht funktionieren|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_Seid bereit zu laufen, wenn ihr nicht die |cRXP_ENEMY_Turmwachposten der Defias|r im 2. Stockwerk tötet. Sie werden euch wahrscheinlich permanent angreifen (aber nicht treffen), wenn ihr auf dem Bücherregal steht, da es ein Ausweich-Platz ist|r
    >>|cRXP_WARN_Wenn ihr einen|r |T135641:0|t[Dolch] |cRXP_WARN_in euren Taschen oder ausgerüstet habt, könnt ihr|r |T132282:0|t[Hinterhalt] |cRXP_WARN_auf die |cRXP_ENEMY_Turmpatrouille der Defias|r und |cRXP_ENEMY_Turmwachposten der Defias|r im Inneren wirken, um sie sofort zu töten. Seid bereit zu laufen, nachdem ihr den ersten |cRXP_ENEMY_Turmwachposten der Defias|r getötet habt und denkt daran, dass ihr von oben getroffen werden könnt. Das ist langsamer, aber VIEL sicherer|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Missgestaltete Drohne der Defias|r und |cRXP_ENEMY_Drohne der Defias|r am Eingang des Turms sein können, wenn ihr aus ihm laufen müsst|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Stelle ein |T134437:0|t[Gegengift] her
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Wirkt |T136225:0|t[Steingestalt], um |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .aura -9991
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Lauf in Richtung |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .skill firstaid,80 >> |cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .train 7934 >> |cRXP_WARN_Trainiert|r |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Stelle ein |T134437:0|t[Gegengift] her
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Erinnert euch, wieder auf eure Hauptwaffe zu wechseln, sofern ihr sie durch einen|r |T135641:0|t[Dolch] |cRXP_WARN_gewechselt habt|r << Rogue
    .turnin 2359 >> Gebt die Quest Klavens Turm ab
    .target Master Mathias Shaw



----End of Rogue 20 Quest <1.59x Section----




step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >> Gebt die Quest Botschaft nach Sturmwind ab
    .accept 121 >> Akzeptiert die Quest Botschaft nach Sturmwind
step
    #completewith next
    .goto Elwynn Forest,41.80,65.60,60 >> Lauf nach Goldhain
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Gebt die Quest Der Preis für Hufeisen ab
    .accept 119 >> Akzeptiert die Quest Zurück zu Verner
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >> Reist zum Turm von Azora. Erklimmt den Turm
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Ein wachsames Auge annehmen
    .xp <20,1
step
    #label InRR
    #completewith FlyR
    .goto StormwindClassic,66.30,62.30,-1
	.goto Redridge Mountains,6.7,72.4,-1
    .zone Redridge Mountains >>Reist ins Rotkammgebirge
    .fly Redridge >> Fliegt ins Rotkammgebirge
    >>|cRXP_WARN_Falls ihr in Goldhain seid, ist es schneller, von Sturmwind zu fliegen|r
	>>|cRXP_WARN_Falls ihr am Turm von Azora seid, lauft einfach ins Rotkammgebirge|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Gebt die Quest Zurück zu Verner ab
    .accept 124 >> Akzeptiert die Quest Das Bellen der Gnolle
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >> Akzeptiert die Quest Bauchschuppen
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Gebt die Quest Botschaft nach Sturmwind ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Gebt die Quest Fischhandel ab
    .accept 150 >> Murlocwilderer annehmen
    .turnin 150 >> Gebt die Quest Murlocwilderer ab
step
#optional
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Gebt die Quest Besuch im Kräuterladen ab
    .accept 131 >> Akzeptiert die Quest Narzissen für eine Dame
step
    #xprate <1.2
	#completewith next
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #xprate <1.5
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    >>|cRXP_WARN_Sichert jeden|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_, den ihr plündert, da ihr ihn zum Leveln von|r |T133971:0|t[Kochkunst] |cRXP_WARN_bis 50 verwenden könnt, was später im Dämmerwald erforderlich ist|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .collect 2296,5,92,1
    .mob Great Goretusk
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
    #xprate <1.2
	#completewith next
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Tötet |cRXP_ENEMY_Schläger der Rotkammgnolle|r und |cRXP_ENEMY_Mystiker der Rotkammgnolle|r. Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    .complete 124,1 --Redridge Brute (10)
    .mob +Redridge Brute
    .complete 124,2 --Redridge Mystic (8)
    .mob +Redridge Mystic
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Mystic
	.mob +Redridge Brute
    .complete 89,2 --Iron Rivet (5)
	.mob +Redridge Mystic
	.mob +Redridge Brute
step
    #xprate <1.2
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Gebt die Quest Narzissen für eine Dame ab
step
    #xprate <1.2
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_Level up eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_benutzt die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_welche ihr vorher gefarmt habt. Ihr braucht 50|r |T133971:0|t[Kochkunst]
    +|cRXP_WARN_Falls ihr mehr|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r braucht |cRXP_WARN_reist nach Westen in die nähe von|r |cRXP_ENEMY_Stopfwanst|r |cRXP_WARN_und tötet mehr|r |cRXP_ENEMY_Großer Geiferzahn|r
    .skill cooking,50,1
    .mob Great Goretusk
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Gebt die Quest Das Bellen der Gnolle ab
    .turnin 122 >> Gebt die Quest Bauchschuppen ab
step
    #xprate >1.0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >> Gebt die Quest Das Bellen der Gnolle ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Gebt die Quest Die Immerruhbrücke ab
]])

----End of <1.59x Redridge----
----Start of Hunter-only Darkshore/Ashen (Needs to be merged)----

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
#season 0
<< Alliance Hunter
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 19-21 Dunkelküste/Eschental
#next RestedXP Allianz 20-30\21-23 Eschental/Stonetalon

step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon DM
step
    #xprate >1.49
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    #xprate >1.49
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #xprate >1.49
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #xprate >1.49
    #label SeaCreatureEnd
    .goto 1439,31.251,87.419
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Diese Quest kann SEHR schwierig sein. Bekämpft die |cRXP_ENEMY_Murlocs|r einzeln, Andernfalls könntest du die Aggro von mehreren gleichzeitig auf dich ziehen.|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Gebt die Quest Mathystra-Relikte ab
    .target Onu
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r, um die Eskorte zu beginnen
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn er nicht dort ist. Es kann bis zu 25 Minuten dauern, bis er respawnt|r
    >>|cRXP_WARN_Das ist eine zeitgebundene Quest, ihr müsst ihn die ganze Strecke bis nach Ashenvale in 20 Minuten eskorieren|r
    .accept 5321 >> Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis er respawnt oder bis andere die Eskorte beenden|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .isOnQuest 729
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>Das wird eine Eskorte starten
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith TheryluneEnd
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
    --  .use 13536
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therylune|r. Es wird eine Escort quest starten
    >>|cRXP_WARN_Überspringt diesen Schritt, falls sie nicht da ist|r
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    #label TheryluneEnd
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Therylune|r aus Der Meistergleve|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #xprate <1.5
    #optional
    .goto 1439,31.251,87.419
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Diese Quest kann SEHR schwierig sein. Bekämpft die |cRXP_ENEMY_Murlocs|r einzeln, Andernfalls könntest du die Aggro von mehreren gleichzeitig auf dich ziehen.|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
step
    #xprate <1.5
    #optional
    .goto 1439,31.229,85.564
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
	#xprate <1.5
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>Seht euch vor, da sie wirkt |T132152:0|t[Verheeren], einen Sofortangriff, der 20-40 Schaden verursacht und |cRXP_WARN_euch für 2s zu Boden wirft|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5
    .goto Darkshore,41.389,80.565
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 525|r auf dem Boden
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .isOnQuest 1003
step
    #xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Tötet die Furbolgs in der Nähe der Höhle, bevor ihr mit ihm sprecht|r
    .turnin 993 >> Gebt die Quest Ein verirrter Meister ab
    .accept 994 >> Akzeptiert die Quest Flucht durch Gewalt
    .target Volcor
    .isOnQuest 993
step
    #xprate <1.5
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Tötet die Furbolgs in der Nähe der Höhle, bevor ihr mit ihm sprecht|r
    .accept 994 >> Akzeptiert die Quest Flucht durch Gewalt
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate >1.59
    #optional
    #completewith Escaped
    .goto Darkshore,39.2,43.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Selarin|r wenn sie da ist
    .accept 990 >> Akzeptiert die Quest Marsch ins Eschental
    .target Sentinel Selarin
step
	#xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Gebt die Quest Ein verirrter Meister ab
    .accept 995 >> Akzeptiert die Quest Flucht durch Verstohlenheit
    .target Volcor
    .isOnQuest 993
step
	#xprate >1.49
    #optional
    #label Escaped
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .accept 995 >> Akzeptiert die Quest Flucht durch Verstohlenheit
    .target Volcor
    .isQuestTurnedIn 993
step
	#xprate <1.5
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Eskortiert |cRXP_FRIENDLY_Volcor|r
    >>Nachdem ihr die 3. Fackel überquert und die Höhle verlassen habt, spawnet ein |cRXP_ENEMY_Furbog|r von beiden Seiten und greift |cRXP_FRIENDLY_Volcor|r an
    >>Auf halbem Weg zur Straße spawnen |cRXP_ENEMY_Furbolgs|r von beiden Seiten und greifen |cRXP_FRIENDLY_Volcor|r an
    .complete 994,1 --Help Volcor to the road (1)
    .isQuestTurnedIn 993
step
	#xprate >1.49
    .goto Darkshore,44.44,84.69
    >>Warte auf das RP
    .complete 995,1 --Help Volcor escape the cave (1)
    .isQuestTurnedIn 993
step
    #xprate >1.49
    #optional
    #completewith tower
    .equip 15 >>|cRXP_WARN_Legt euren vorherigen |r |T133762:0|t[Umhang] an
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Gebt die Quest Mathystra-Relikte ab
    .target Onu
    .isOnQuest 951
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r, um die Eskorte zu beginnen
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn er nicht dort ist. Es kann bis zu 25 Minuten dauern, bis er respawnt|r
    >>|cRXP_WARN_Das ist eine zeitgebundene Quest, ihr müsst ihn die ganze Strecke bis nach Ashenvale in 20 Minuten eskorieren|r
    .accept 5321 >> Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label AshenStart
    #completewith tower
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto Ashenvale,29.7,13.6
step
    #sticky
    #completewith Kerlonian
    >>Tötet und plündert |cRXP_WARN_Geisterpfotenläufer|r,die ihr beim Questen antrefft. Behaltet alle |T133970:0|t[|cRXP_LOOT_Magere Wolfflanke|r], die ihr erhaltet. Ihr werdet später 10 für eine Kochquest benötigen
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label Kerlonian
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
	#xprate <1.5
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
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Tötet |cRXP_ENEMY_Kultist des dunklen Strangs|r, |cRXP_ENEMY_Adept des dunklen Strangs|r, |cRXP_ENEMY_Vollstrecker des dunklen Strangs|r und |cRXP_ENEMY_Ausgräber des dunklen Strangs|r. Plündert sie für |cRXP_LOOT_Leuchtender Seelenedelstein|r
    >>Hab Geduld, dieser Gegenstand hat eine niedrige Drop-Rate
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
    .goto Ashenvale,31.25,30.70
    .xp 20-1650 >>Tötet weiter |cRXP_ENEMY_Mobs des dunklen Strangs|r bis ihr genug XP habt, um Stufe 20 zu erreichen
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
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
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 973 >> Der Turm von Althalaxx annehmen
    .target Delgren the Purifier
step
    #sticky
    #completewith Astranaar
    >>Tötet und plündert |cRXP_WARN_Geisterpfotenläufer|r,die ihr beim Questen antrefft. Behaltet alle |T133970:0|t[|cRXP_LOOT_Magere Wolfflanke|r], die ihr erhaltet. Ihr werdet später 10 für eine Kochquest benötigen
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >> Gebt die Quest Therylunes Flucht ab
    .isQuestComplete 945
step << Hunter
    #xprate <1.59
    .goto 1440/1,522.900,2716.100,30 >> Lauft die Rampe nach Nordwesten hinauf
step
    #xprate <1.59
    #completewith Astranaar
    >>Sammelt bis zu 6 |cRXP_LOOT_Klebriges Spinnenbein|r von den |cRXP_ENEMY_Spinnen|r in der Zone auf für später
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    #xprate <1.59
    #sticky
    .goto Ashenvale,17.976,60.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bolyun|r
    .trainer >> Erlernt die Begleiter Fähigkeiten
    .target Bolyun
--XX Train in darn at 20 on 2x
step << Hunter
    #xprate <1.59
    .goto Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alenndaar Lapidaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 5118 >> Erlernt |T132242:0|t[Aspekt des Geparden]
    .target Alenndaar Lapidaar
step
    #label Astranaar
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Erlernt die Flugroute nach Astranaar
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >> Akzeptiert die Quest Der Zoramstrand
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Wache halten im Steinkrallengebirge annehmen
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Akzeptiert die Quest Reise zum Steinkrallengipfel
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >> Raenes Säuberung annehmen
    .accept 1054 >> Die Auswahl der Bedrohung annehmen
step
    #label HCHunterNoHS --hidden step for #include
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kimlya|r
    .home >> Setzt von Euch Ruhestein auf Astranaar
    .target Innkeeper Kimlya
step
    #label HCHunterNoHSStart --hidden step for #include
step
    #xprate <1.59
    .goto Ashenvale,36.6,49.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maliynn|r
    .vendor >> |cRXP_BUY_Kaufe bei Bedarf Essen und Wasser|r
    .target Maliynn
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Gebt die Quest Orendils Heilmittel ab
    .timer 24,Orendils Heilmittel Roleplay
    .accept 1033 >> Elunes Träne annehmen
step << Hunter
    #xprate <1.59
    .goto Ashenvale,34.8,50.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Haljan Eichenherz|r
    .vendor >> |cRXP_BUY_Füllt eure Munition auf, falls nötig|r
    .target Haljan Oakheart
step
    #xprate <1.59
    #completewith ElunesTear
    >>Behalte bis zu 6 |cRXP_LOOT_Klebriges Spinnenbein|r was du von den |cRXP_ENEMY_Spinnen|r in der Zone gelootet hast. Du brauchst sie später für eine Quest
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #xprate <1.59
    .goto Ashenvale,46.37,46.38
    >>Loote |cRXP_LOOT_Elunes Träne|r auf dem Boden
    .complete 1033,1
step
    #xprate <1.59
    #label ElunesTear
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Gebt die Quest Elunes Träne ab
    .timer 17,Elunes Träne RP
    .accept 1034 >> Die Sternenstaubruinen annehmen
step
    #xprate <1.59
    .goto Ashenvale,33.30,67.79
    >>Loote die |cRXP_PICK_Mit Sternenstaub bedeckter Busch|r für |cRXP_LOOT_Hand voll Sternenstaub|r
    >>|cRXP_WARN_Ihre Spawpunkte sind über die gesamte Insel verstreut|r
    .complete 1034,1
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Lauft zum Fuß des Berges
    .goto Ashenvale,31.21,61.60,15 >>Lauft geradeaus nach Norden, während ihr den Berg erklimmt
step
    #xprate <1.59
    #completewith next
    .goto Ashenvale,27.50,60.76,8 >> Klettert den Hügel neben dem großen Baum rechts vom Eingang des Schrein des Sengenden Feuers hinauf
    >>Springt über die Baumwurzel und haltet euch rechts, um Mobs zu vermeiden, die euch angreifen könnten
step
    #xprate <1.5
    .goto Ashenvale,25.27,60.68
    >>Tötet |cRXP_ENEMY_Ilkrud Magthrull|r. Plündert ihn für |cRXP_LOOT_Ilkrud Magthrulls Foliant|r
    >>|cRXP_ENEMY_Ilkrud Magskluve|r |cRXP_WARN_wird|r |T136221:0|t[Ilkruds Wächter] wirken |cRXP_WARN_, was ein 5 Sekunden langer Zauber ist und 2 Leerwandler beschwört. Stoppt diesen Zauber, wenn ihr es könnt|r
    >>|cRXP_WARN_Macht einen Fluchtweg frei, damit ihr die|cRXP_ENEMY_Sukkubus|r zusammen mit ihm zurücksetzen könnt, falls nötig. Ihr könnt diesen Schritt überspringen und ihn auf Stufe 23 tun, falls gewünscht|r
    .complete 973,1
    .link https://youtu.be/03nTrdcQiKY >> |cRXP_WARN_Klickt hier für Videoreferenz|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    #xprate <1.5
    .isQuestComplete 973
    .goto Ashenvale,26.19,38.69
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 973 >> Gebt die Quest Der Turm von Althalaxx ab
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate <1.59
    #sticky
    #completewith StatuetteStart
    >>Behalte bis zu 6 |cRXP_LOOT_Klebriges Spinnenbein|r was du von den |cRXP_ENEMY_Spinnen|r in der Zone gelootet hast. Du brauchst sie später für eine Quest
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith StatuetteStart
    >>Tötet und plündert |cRXP_WARN_Geisterpfotenläufer|r,die ihr beim Questen antrefft. Behaltet alle |T133970:0|t[|cRXP_LOOT_Magere Wolfflanke|r], die ihr erhaltet. Ihr werdet später 10 für eine Kochquest benötigen
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label StatuetteStart
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Die antiken Statuetten annehmen
step
    #xprate <1.59
    #completewith nagas
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    >>Mach dir keine Umstände, dies jetzt abzuschließen
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    #xprate <1.59
    .goto Ashenvale,14.20,20.64
    >>Sammelt |cRXP_LOOT_Die antike Statuette|r vom Boden auf
    .complete 1007,1
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Gebt die Quest Die antiken Statuette ab
    .timer 22,Die antiken Statuetten RP
    .accept 1009 >> Ruuzel annehmen
step
    #xprate <1.59
    .goto Ashenvale,6.528,13.361
    >>Tötet |cRXP_ENEMY_Ruuzel|r. Plündert sie für den |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patroulliert die Insel mit einem |cRXP_ENEMY_Myrmidone der Rächerflossen|r und einer |cRXP_ENEMY_Meerhexe der Rächerflossen|r ab. Tötet einen von ihnen und setzt sie zurück, falls nötig|r
    >>|cRXP_WARN_Wenn ihr irgendwelche|r |T133717:0|t[Bomben]|cRXP_WARN_/|r[Granaten] habt|cRXP_WARN_könnt ihr sie auch verwenden, um die Mobs zu trennen|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ist ein rar-Spawn, der auch den |cRXP_LOOT_Ring of Zoram|r fallen lassen kann, falls ihr sie seht|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Teil pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #xprate <1.59
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Tötet |cRXP_ENEMY_Ruuzel|r. Plündert sie für den |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patroulliert die Insel mit einem |cRXP_ENEMY_Myrmidone der Rächerflossen|r und einer |cRXP_ENEMY_Meerhexe der Rächerflossen|r ab. Tötet einen von ihnen und setzt sie zurück, falls nötig|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ist ein rar-Spawn, der auch den |cRXP_LOOT_Ring of Zoram|r fallen lassen kann, falls ihr sie seht|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    #xprate <1.59
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Gebt die Quest Ruuzel ab
step
    #xprate <1.59
    #sticky
    #completewith SoulGemStart
    >>Behalte bis zu 6 |cRXP_LOOT_Klebriges Spinnenbein|r was du von den |cRXP_ENEMY_Spinnen|r in der Zone gelootet hast. Du brauchst sie später für eine Quest
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith SoulGemStart
    >>Tötet und plündert |cRXP_WARN_Geisterpfotenläufer|r,die ihr beim Questen antrefft. Behaltet alle |T133970:0|t[|cRXP_LOOT_Magere Wolfflanke|r], die ihr erhaltet. Ihr werdet später 10 für eine Kochquest benötigen
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label SoulGemStart
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Teronis' Leichnam|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >> Gebt die Quest Raenes Säuberung ab
    .accept 1023 >> Raenes Säuberung annehmen
step
    #sticky
    #completewith GlowingGem
    >>Behaltet alle |T134304:0|t[Murlocflossen], die ihr plündert. Ihr braucht später 8 für eine Quest
    .collect 1468,8 --Murloc Fin(8)
step
    #label GlowingGem
    #xprate <1.59
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>Tötet |cRXP_ENEMY_Matschkrabbler der Salzflossen|r. Plündert sie für |cRXP_LOOT_Leuchtender Edelstein|r
    >>|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Orakels|r heilen können und alle paar Sek. einen Schockzauber mit 90 Schaden wirken|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter
    #xprate <1.59
    .hs >> Ruhestein nach Auberdine
step << !Dwarf/!Hunter
    #xprate <1.59
    #softcore
    #completewith next
    .deathskip >> Sterbt auf der östlichen Seite des Sees und lässt euch vom Geistheiler in Astranaar wieder beleben
step << !Dwarf/!Hunter
    #xprate <1.59
    #hardcore
    #completewith next
    .goto Ashenvale,34.40,48.00,200 >> Reist nach Astranaar
step << !Dwarf/!Hunter
    #xprate <1.59
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Fliegt zur Dunkelküste
    .target Daelyshia
step
    #xprate <1.59
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    #xprate <1.59
    #completewith end
    .vendor >> Restock/Nachschub
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Gebt die Quest Flucht durch Verstohlenheit ab
    .target Terenthis
    .isOnQuest 995
step
    #xprate <1.59
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Gebt die Quest Flucht durch Gewalt ab
    .target Terenthis
    .isOnQuest 994
step
    #xprate <1.59
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4731 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4732 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4733 >> Gebt die Quest Gestrandete Meereskreatur ab
    .target Gwennyth Bly'Leggonde
step
    #xprate <1.59
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
step
    #xprate <1.59
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .xp <22,1
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garryeth|r
    .goto Darnassus,40.0,42.2
    .bankdeposit 5996,1468,2251,1015 >> Deponiert die folgenden Gegenstände in eurer Bank
    .target Garryeth
    >>|T134797:0|t[Elixier der Wasseratmung] --5996
    >>|T134304:0|t[Murlocflossen] --1468
    >>|T134321:0|t[Klebriges Spinnenbein] --2251
    >>|T133970:0|t[Magere Wolfflanke] --1015
step << Dwarf Hunter
    #xprate <1.59
-- #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >> Erlernt Bogen
    .train 227 >> Erlernt Stäbe
    .target Ilyenia Moonfire
    .dungeon DM
step
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .isOnQuest 741
step
    #optional
    #xprate <1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .isQuestTurnedIn 741
step << !Dwarf/!Hunter
    #xprate <1.59
    #label end
    .hs >> Ruhestein nach Astranaar
step << Dwarf Hunter
    #xprate <1.59
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter
    #xprate <1.59
    #label end
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Ashenvale >> Fliegt ins Eschental
    .target Vesprystus
    .zoneskip Ashenvale
]])


----End of Hunter-only Darkshore/Ashen (Needs to be merged)----


RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0
#version 1
<< Alliance !Hunter
#season 0
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 20-21 Dunkelküste/Eschental
#next RestedXP Allianz 20-30\21-23 Steinkrallengebirge/Ashenvale;RestedXP Allianz 20-30\21-22 Eschental SoD


step << Druid
    #xprate <1.59
	#completewith next
	.cast 18960 >> Caste Teleportieren: Mondlichtung
	.zoneskip Moonglade
step << Druid
    #xprate <1.59
    .goto Moonglade,52.53,40.57
	>>Gehe zur Mondlichtung
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step
    #xprate <1.59
    #optional
    #completewith TheryluneE
    .hs >> Ruhestein nach Auberdine
step
    .goto Darkshore,37.21,44.22
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 948 >> Akzeptiert die Quest Onu
    .target Barithras Moonshade
step
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    #xprate <1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .target Gershala Nightwhisper
    .isOnQuest 3765
--  .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
step
    #xprate >1.59
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .target Gershala Nightwhisper
    .isOnQuest 3765
    .dungeon !DM << NightElf Warrior/Mage/Warlock/Rogue
step
    .goto 1439,39.373,43.483
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Akzeptiert die Quest Ein verirrter Meister
	.target Terenthis
    .isQuestTurnedIn 986
step
    #optional
    #completewith OnuGrove
    >>|cRXP_WARN_Falls ihr |r |T133762:0|t[Verzauberter Mondpirscher-Umhang]|cRXP_WARN_ anlegt, stellt sicher, dass ihr euren aktuellen Umhang für später speichert, da der |r |T133762:0|t[Verzauberter Mondpirscherumhang] |cRXP_WARN_ bei einer späteren Abgabe verloren geht|r
    .equip 15,5387 >>|cRXP_WARN_Legt den|r |T133762:0|t[Verzauberter Mondpirscherumhang],an |cRXP_WARN_wenn er besser ist als eurer aktuell angelegter Umhang|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith MasterG
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>Seht euch vor, da sie wirkt |T132152:0|t[Verheeren], einen Sofortangriff, der 20-40 Schaden verursacht und |cRXP_WARN_euch für 2s zu Boden wirft|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #optional
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Reist zum Hain der Uralten
step
    #xprate >1.49
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Gebt die Quest Mathystra-Relikte ab
    .target Onu
    .isQuestComplete 951
step
    #xprate >1.49
    #label OnuGrove
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Gebt die Quest Onu ab
    .target Onu
    .isOnQuest 948
step
    #xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Gebt die Quest Ein verirrter Meister ab
    .accept 995 >> Akzeptiert die Quest Flucht durch Verstohlenheit
    .timer 20,Flucht durch Verstohlenheit RP
    .target Volcor
    .isOnQuest 993
step
    #xprate >1.49
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .accept 995 >> Akzeptiert die Quest Flucht durch Verstohlenheit
    .timer 20,Flucht durch Verstohlenheit RP
    .target Volcor
    .isQuestTurnedIn 993
step
    #xprate >1.49
    .goto Darkshore,44.44,84.69
    >>Warte auf das RP
    .complete 995,1 --Help Volcor escape the cave (1)
    .isOnQuest 995
step
    #xprate >1.49
    #optional
    #completewith Murkdeep
    .equip 15 >>|cRXP_WARN_Re-equip euren vorherigen|r |T133762:0|t[Umhang]
    .itemStat 15,QUALITY,<7
    .isOnQuest 995
step
    #xprate <1.5
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Gebt die Quest Der Hain der Uralten ab << NightElf
    .turnin 948 >> Gebt die Quest Onu ab
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
    .target Onu
step
    #xprate <1.5
    #label MasterG
    .goto Darkshore,38.54,86.05,100 >> Reist zur Meistergleve
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
--  .use 13536
step
    #xprate <1.5
    #optional
    .goto Darkshore,38.54,86.05
    >>Entdeckt Die Meistergleve
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #xprate <1.5
    #completewith next
    .cast 5809 >> |cRXP_WARN_Benutzt die|r |T134715:0|t[Wahrsagephiole] |cRXP_WARN_und platziert sie auf dem Boden|r
    .use 5251
step
    #xprate <1.5
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_Klickt die |cRXP_PICK_Wahrsageschale|r auf dem Boden|r
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 5251
step
    #xprate <1.5
    .goto 1439,38.537,86.050
    >>Klickt den |cRXP_PICK_Twilight-Foliant|r auf dem nördlichen Sockel
    .turnin 949 >> Gebt die Quest Das Twilight-Lager ab
    .accept 950 >> Akzeptiert die Quest Rückkehr zu Onu
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therylune|r. Es wird eine Escort quest starten
    >>|cRXP_WARN_Überspringt diesen Schritt, falls sie nicht da ist|r
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    #label TheryluneEnd
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Therylune|r aus Der Meistergleve|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
	#xprate <1.5 --<< !NightElf/Hunter
    #completewith prospectorEscort
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>Seht euch vor, da sie wirkt |T132152:0|t[Verheeren], einen Sofortangriff, der 20-40 Schaden verursacht und |cRXP_WARN_euch für 2s zu Boden wirft|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis er respawnt oder bis andere die Eskorte beenden|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .target Prospector Remtravel
    .isOnQuest 729
step
    #label prospectorEscort
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r. Dieser wird eine Escort Quest starten
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 731,1
    .isOnQuest 731
step
    #xprate <1.5
    #optional
    #completewith Murkdeep
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    #xprate >1.49
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #xprate >1.49
    .goto 1439,31.690,83.700
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #xprate >1.49
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #xprate >1.49
    .goto 1439,31.229,85.564
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto 1439,31.251,87.419
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Diese Quest kann SEHR schwierig sein. Bekämpft die |cRXP_ENEMY_Murlocs|r einzeln, Andernfalls könntest du die Aggro von mehreren gleichzeitig auf dich ziehen.|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
step
    #xprate <1.5
    .goto 1439,31.229,85.564
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #xprate <1.5
    #optional
    .goto 1439,31.690,83.700
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #xprate <1.5
    #optional
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    #xprate <1.5
    #optional
    #label Murkdeep
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Stellt sicher, dass ihr überprüft, ob |cRXP_ENEMY_Gurgelbacke|r bereits im Wasser ist (wenn der Kampf zuvor fehlgeschlagen ist oder ihr den |cRXP_ENEMY_Jäger der Grauflossen|r in der Welle, in der er spawnt, am Leben gelassen habt)|r
    >>Tötet die |cRXP_ENEMY_Krieger der Grauflossen|r und |cRXP_ENEMY_Jäger der Grauflossen|r im Lager
    >>|cRXP_WARN_Bewegt euch zum Freudenfeuer in der Mitte des Lagers, um den |cRXP_ENEMY_Gurgelbacke|r-Kampf zu beginnen:|r
    >>|cRXP_WARN_3 Wellen spawnen aus dem Wasser, jede nach dem Töten der vorherigen Welle: Welle 1 hat 3 Level 12-13 |cRXP_ENEMY_Küstenläufer der Grauflossen|r, Welle 2 hat 2 Level 15-16 |cRXP_ENEMY_Krieger der Grauflossen|r, und Welle 3 hat ein Level 19 |cRXP_ENEMY_Gurgelbacke|r und einen Level 16-17 |cRXP_ENEMY_Jäger der Grauflossen|r. Ihr könnt euch vom Freudenfeuer entfernen, um nicht mit der nächste Welle in den Kampf zu geraten.|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #xprate <1.5
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
	#xprate <1.5 --<< !NightElf/Hunter
    #optional
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>Seht euch vor, da sie wirkt |T132152:0|t[Verheeren], einen Sofortangriff, der 20-40 Schaden verursacht und |cRXP_WARN_euch für 2s zu Boden wirft|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5 --<< !NightElf/Hunter
    .goto Darkshore,41.389,80.565
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 525|r auf dem Boden
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .isOnQuest 1003
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Gebt die Quest Mathystra-Relikte ab
    .target Onu
    .isQuestComplete 951
step
    #xprate <1.5
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
    .target Onu
step
    #xprate <1.5
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r, um die Eskorte zu beginnen
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn er nicht dort ist. Es kann bis zu 25 Minuten dauern, bis er respawnt|r
    >>|cRXP_WARN_Das ist eine zeitgebundene Quest, ihr müsst ihn die ganze Strecke bis nach Ashenvale in 20 Minuten eskorieren|r
    .accept 5321 >> Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
step
    #xprate <1.5
    .goto Darkshore,44.38,76.30
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321
step
#xprate <1.5
    #completewith volcorEnd
    .goto Ashenvale,27.26,35.58
    +|cRXP_FRIENDLY_Kerlonian|r wird euch folgen und wird gelegentlich im Kampf helfen. |cRXP_WARN_Passt auf, dass ihr ihn nicht verliert, denn er wird stehenbleiben, wenn er einschläft. Ihr habt 25 Minuten Zeit, um Eschental zu erreichen und diese Quest abzuschließen|r
    .use 13536 >> |cRXP_WARN_Benutzt das|r |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r] |cRXP_WARN_wenn |cRXP_FRIENDLY_Kerlonian|r einschläft, während ihr neben ihm steht, um ihn aufzuwecken|r
    >>|cRXP_WARN_Vermeidet es so weit wie möglich, auf der Hauptstraße zu laufen. Feinde spawnen nur, wenn ihr auf der Straße seid|r
    .isOnQuest 5321
step
#xprate <1.5
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Reist zu |cRXP_FRIENDLY_Volcor|r in der Höhle
    .isOnQuest 993
step
#xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Gebt die Quest Ein verirrter Meister ab
    .accept 995 >> Akzeptiert die Quest Flucht durch Verstohlenheit
    .timer 20,Flucht durch Verstohlenheit RP
    .target Volcor
step
#xprate <1.5
    #label volcorEnd
    .goto Darkshore,44.44,84.69
    >>Warte auf das RP
    .complete 995,1
    .isOnQuest 995
step -- adjusted to heading there straight from southern most beached sea creature
#xprate >1.49
    #completewith tower
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto Ashenvale,25.77,14.55
step
#xprate <1.50
    #completewith tower
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto Ashenvale,29.7,13.6
step
#xprate <1.5
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Begleitet |cRXP_FRIENDLY_Kerlonian|r zu Maestras Posten im Eschental|r
    .use 13536 >> |cRXP_WARN_Benutzt das|r |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r] |cRXP_WARN_wenn |cRXP_FRIENDLY_Kerlonian|r neben euch einschläft|r
    >>|cRXP_WARN_Vermeidet es so weit wie möglich, auf der Hauptstraße zu laufen. Feinde spawnen nur, wenn ihr auf der Straße seid|r
    .complete 5321,2
    .isOnQuest 5321
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Gebt die Quest Der Schläfer ist erwacht ab
    .isQuestComplete 5321
step << Paladin
    #season 2
    .goto Ashenvale,26.19,38.69
    >>Sprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 967 >> Gebt die Quest Der Turm von Althalaxx ab
    --.accept 970 >> Accept The Tower of Althalaxx
    .turnin 78088 >> Gebt die Quest Ein seltsames Artefakt ab
    .accept 78089 >> Akzeptiert die Quest Rat aus Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step << Paladin
    #season 2
    #label tower
    #optional
    .goto Ashenvale,26.19,38.69
    >>Sprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 967 >> Gebt die Quest Der Turm von Althalaxx ab
    --.accept 970 >> Accept The Tower of Althalaxx
    .accept 78089 >> Akzeptiert die Quest Rat aus Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step << !Warlock
    #season 0,1 << Paladin
	#xprate >1.49
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 967 >> Gebt die Quest Der Turm von Althalaxx ab
    .target Delgren the Purifier
step
    #season 0,1 << Paladin
	#xprate <1.5 << !Warlock
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 967 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 970 >> Der Turm von Althalaxx annehmen
    .target Delgren the Purifier
step
    #xprate <1.59
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
    .xp <20,1
step
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Tötet |cRXP_ENEMY_Kultist des dunklen Strangs|r und |cRXP_ENEMY_Adept des dunklen Strangs|r. Plündert sie für |cRXP_LOOT_Leuchtender Seelenedelstein|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto Ashenvale,31.25,30.70
    .xp 20-1650 >>Tötet weiter |cRXP_ENEMY_Mobs des dunklen Strangs|r bis ihr genug XP habt, um Stufe 20 zu erreichen
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T134916:0|t[Kräutersuche] |cRXP_WARN_aktiviert habt, um sie auf der Minikarte zu sehen|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #xprate <1.59
    #optional
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Gebt die Quest Bathranshaar ab
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    #xprate <1.59
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 973 >> Der Turm von Althalaxx annehmen
step
    #xprate <1.59
    .goto Ashenvale,31.89,22.53
    .xp 20 >> Farmt bis Stufe 20
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
    .target Orendil Broadleaf
step
    #optional
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Öffnet die |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T134916:0|t[Kräutersuche] |cRXP_WARN_aktiviert habt, um sie auf der Minikarte zu sehen|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Gebt die Quest Bathranshaar ab
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
step
    #xprate >1.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >> Gebt die Quest Therylunes Flucht ab
    .isQuestComplete 945
step
    #optional
    #completewith TZS
    .subzone 415 >> Reist nach Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Erlernt die Flugroute nach Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
    .accept 1008 >> Akzeptiert die Quest Der Zoramstrand
    .target Shindrell Swiftfire
step
    #xprate <1.59
    .goto Ashenvale,34.89,49.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Thenysil|r
    .accept 1070 >> Wache halten im Steinkrallengebirge annehmen
    .target Sentinel Thenysil
step
    #xprate <1.59
    .goto Ashenvale,35.76,49.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Akzeptiert die Quest Reise zum Steinkrallengipfel
    .target Faldreas Goeth'Shael
step
    #xprate <1.59
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .accept 991 >> Raenes Säuberung annehmen
    .accept 1054 >> Die Auswahl der Bedrohung annehmen
    .target Raene Wolfrunner
step << !Warlock
    #xprate <1.59
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kimlya|r
    .home 415 >> Setzt von Euch Ruhestein auf Astranaar
    .target Innkeeper Kimlya
step
    #xprate <1.59
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Gebt die Quest Orendils Heilmittel ab
    .timer 24,Orendils Heilmittel Roleplay
    .accept 1033 >> Elunes Träne annehmen
]])
