if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name Boosted Character 58-60
#subgroup RestedXP Horde Boosted 58-60
#subweight -1
#title Boosted Character 58-60 (NOT TRANSLATED IN :deDE YET)
#next 60-61 Hellfire Peninsula

step
+As soon as you log in for the first time, finish the little tutorial section in front of your class trainer to get access to all of the boosted gear (NOT TRANSLATED IN :deDE YET)
.use 185964
.use 186051
.use 186052
.use 186053
.use 186054
.use 186055
.use 186056
.use 186057
.isQuestAvailable 64035 << Alliance
.isQuestAvailable 64052 << Horde !Druid
.isQuestAvailable 64053 << Horde Druid
step << Druid
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Tal
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Thuul|r oben auf der Hütte
    .train 3567 >> Erlernt |T135759:0|t[Teleportieren: Orgrimmar]
    .train 11417 >> Erlernen |T135744:0|t[Portal: Orgrimmar]
    .target Thuul
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Kauft alle Haustierverbesserungen, die ihr euch leisten könnt
	.target Kurgul
step
    .goto Orgrimmar,54.65,67.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Barkeeper Morag|r
	.vendor >>|cRXP_BUY_Buy 2 stacks of food|r (NOT TRANSLATED IN :deDE YET) << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Buy 2 stacks of food and water|r (NOT TRANSLATED IN :deDE YET) << Rogue/Warrior
	.target Barkeep Morag
step
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Verlasst Orgrimmar
    .complete 64217,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .complete 64063,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Western Plaguelands
step
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
step
    #label UCflightpath1
    .isQuestAvailable 5211
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Get the Undercity Flight Path (NOT TRANSLATED IN :deDE YET)
    .target Michael Garrett
step
	#completewith next
	.subzone 152 >> Exit Undercity und travel to the Bulwark
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLauf zum Bollwerk, dann sprich mit |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Akzeptiert die Quest Scharlachrote Ablenkung
	.target High Executor Derrington
step
	.goto Western Plaguelands,26.55,56.18
	>>Klickt den |cRXP_PICK_Kasten mit Anzündern|r beim Feuer
	.collect 12814,1,5096,1 --Flame in a Bottle (1)
step
    .goto Tirisfal Glades,83.19,68.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Garush|r
    .turnin 5405 >>Gebt die Quest Anstecknadel der Argentumdämmerung ab
	.target Argent Officer Garush
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mehlar Klinge der Dämmerung|r
    .accept 9443 >>Accept in The So-Called Mark of the Lightbringer (NOT TRANSLATED IN :deDE YET)
    .target Mehlar Dawnblade
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mickey|r
    .accept 5901 >>Eine Plage komme über Euch annehmen
	.target Mickey Levine
step
    #completewith next
    .use 12846 >>|cRXP_WARN_Equip von Euch|r |T133440:0|t[Anstecknadel der Argentumdämmerung] |cRXP_WARN_trinket|r
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Klickt das |cRXP_PICK_Befehlszelt|r, dann benutzt euer |T132484:0|t[Banner der Geißel]
	>>|cRXP_WARN_Diese Gegner sind relativ schwierig und können sich gegenseitig mitziehen – sei also vorsichtig.|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .turnin 5096 >>Gebt die Quest Scharlachrote Ablenkung ab
    .accept 5098 >>Turm um Turm annehmen
    .accept 5228 >>Die Geißelkessel annehmen
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vandis|r
    .turnin 5228 >>Gebt die Quest Die Geißelkessel ab
    .accept 5229 >>Ziel: Teufelssteinfeld annehmen
	.target Shadow Priestess Vandis
step
    .goto Western Plaguelands,37.12,57.18
    >>Kill |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Loot him for his |cRXP_LOOT_Cauldron Key|r (NOT TRANSLATED IN :deDE YET)
    .complete 5229,1 --Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.2,56.8
	>>Klickt |cRXP_PICK_Geißelkessel|r an, der oben auf dem Podest brodelt
    .turnin 5229 >>Gebt die Quest Ziel: Teufelssteinfeld ab
    .accept 5230 >>Akzeptiert die Quest Rückkehr zum Bollwerk
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the second floor of the house (NOT TRANSLATED IN :deDE YET)
    .accept 5021 >>Besser spät als nie annehmen
	.target Janice Felstone
step
    #label FelstoneField
    .goto Western Plaguelands,38.8,55.3
	>>Klickt |cRXP_PICK_Janice's Parcel|r in der Scheune
	>>|cRXP_WARN_Ihr könnt es durch die Hallenwand anklicken, wenn ihr die Mobs drinnen vermeiden wollt|r
    .turnin 5021 >>Gebt die Quest Besser spät als nie ab
    .accept 5023 >>Besser spät als nie annehmen
step
	#completewith next
	.subzone 152 >> Return to Das Bollwerk
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vandis|r
    .turnin 5230 >>Gebt die Quest Rückkehr zum Bollwerk ab
    .accept 5231 >>Ziel: Dalsons Tränenfeld annehmen
	.target Shadow Priestess Vandis
step
	#sticky
	#completewith wplbf
	+|cRXP_WARN_Make sure you kill & loot mobs between each tower for|r |T133724:0|t[Bone Fragments] (NOT TRANSLATED IN :deDE YET)
    .collect 22526,30,91261 --Bone Fragments
step
    .goto Western Plaguelands,42.28,66.05
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Turmeingang|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,2 --Tower Two marked (1)
step
    #label TowerOne
    .goto Western Plaguelands,40.15,71.50
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Turmeingang|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,1 --Tower One marked (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chromie|r auf der obersten Etage der Taverne
    .accept 4971 >>Eine Frage der Zeit annehmen
	.target Chromie
step
    .goto Western Plaguelands,44.24,63.06
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Turmeingang|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,3 --Tower Three marked (1)
step
    .goto Western Plaguelands,45.8,63.3
	.use 12627 >>Spawn the |cRXP_ENEMY_Temporaler Parasit|r by using your |T134229:0|t[Temporal Displacer] near the glowing silos
	>>|cRXP_WARN_Temporal Parasites spam Slow and can spawn more parasites upon death. Be ready to run to the water if they begin overwhelming you; they cannot swim|r (NOT TRANSLATED IN :deDE YET)
    .complete 4971,1 --Temporal Parasite (10)
	.mob Temporal Parasite
step
    .goto Western Plaguelands,46.73,71.14
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Turmeingang|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,4 --Tower Four marked (1)
step
    .goto Western Plaguelands,46.04,52.33
    >>Kill |cRXP_ENEMY_Cauldron Lord Malvinious|r. Loot him for his |cRXP_LOOT_Cauldron Key|r (NOT TRANSLATED IN :deDE YET)
    .complete 5231,1 --Dalson's Tears Cauldron Key (1)
	.unitscan Cauldron Lord Malvinious
step
    .goto Western Plaguelands,46.2,52.0
	>>Klickt |cRXP_PICK_Geißelkessel|r an, der oben auf dem Podest brodelt
    .turnin 5231 >>Gebt die Quest Ziel: Dalsons Tränenfeld ab
    .accept 5232 >>Akzeptiert die Quest Rückkehr zum Bollwerk
step
    .goto Western Plaguelands,47.8,50.6
	>>Klicke die |cRXP_PICK_Frau Dalsons Tagebuch|r
    .turnin 5058 >>Gebt die Quest Frau Dalsons Tagebuch ab
step
    .goto Western Plaguelands,47.49,51.00
	>>Tötet die |cRXP_ENEMY_Wandering Skelett|r. Plündert sie für |cRXP_LOOT_Outhouse Schlüssel|r
	>>|cRXP_WARN_Schleifen|r |T133724:0|t[Knochenfragmente] |cRXP_WARN_wenn |cRXP_ENEMY_Wandering Skelett|r noch nicht erschienen ist|r
	.collect 12738,1 -- Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
	#completewith next
    .goto Western Plaguelands,48.2,49.7
    >>Klick auf das |cRXP_PICK_Outhouse|r
    .turnin 5059 >>Gebt die Quest Weggeschlossen ab
step
    .goto Western Plaguelands,48.2,49.7
	>>Kill |cRXP_ENEMY_Farmer Dalson|r. Loote ihn für seine |cRXP_LOOT_Cabinet Key|r
    .collect 12739,1,5060 --Collect Dalson Cabinet Key (x1)
	.unitscan Farmer Dalson
step
    .goto Western Plaguelands,47.4,49.7
	>>Klickt |cRXP_PICK_Verschlossenen Schrank|r auf der obersten Etage des Hauses
    .turnin 5060 >>Gebt die Quest Weggeschlossen ab
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kirsta|r
    .accept 6004 >>Offene Rechnungen annehmen
	.target Kirsta Deepshadow
step
	#completewith next
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12,70,0
    >>Kill |cRXP_ENEMY_Scharlachroter Magier|r und |cRXP_ENEMY_Scharlachroter Ritter|r
	>>|cRXP_WARN_The|r |cRXP_ENEMY_Mages|r |cRXP_WARN_and|r |cRXP_ENEMY_Leutnant|r |cRXP_WARN_share respawns. If necessary, kill extra mobs to reset the area|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.77,44.13,70,0
    .goto Western Plaguelands,40.83,52.30,70,0
    .goto Western Plaguelands,47.35,51.54,0
    .goto Western Plaguelands,51.77,44.13
	>>Kill |cRXP_ENEMY_Scharlachroter Sanitäter|r und |cRXP_ENEMY_Scharlachroter Jäger|r
	>>|cRXP_ENEMY_Medics|r |cRXP_WARN_und|r |cRXP_ENEMY_Hunters|r |cRXP_WARN_können in den Lagern gefunden werden. Falls nötig, tötet zusätzliche Mobs, um das Gebiet zurückzusetzen|r
    .complete 6004,1 --Scarlet Medic (2)
	.mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
	.mob +Scarlet Hunter
step
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12
    >>Beenden killing |cRXP_ENEMY_Scarlet Mages|r und |cRXP_ENEMY_Scarlet Knights|r
	>>|cRXP_WARN_The|r |cRXP_ENEMY_Mages|r |cRXP_WARN_and|r |cRXP_ENEMY_Leutnant|r |cRXP_WARN_share respawns. If necessary, kill extra mobs to reset the area|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kirsta|r
    .turnin 6004 >>Gebt die Quest Offene Rechnungen ab
    .accept 6023 >>Offene Rechnungen annehmen
	.target Kirsta Deepshadow
step
    .goto Western Plaguelands,57.83,36.10
	>>Töte |cRXP_ENEMY_Jägerin Radley|r
	>>|cRXP_WARN_Die Mobs um sie herum können leicht mitgezogen werden. Die Spellbinders wirken Brunnenbehüter Solanian|r
    .complete 6023,1 --Huntsman Radley (1)
	.unitscan Huntsman Radley
step
    .goto Western Plaguelands,54.64,23.71
	>>Töte |cRXP_ENEMY_Dragoner Durgen|r
	>>|cRXP_WARN_Dieser Kampf ist viel sicherer, wenn ihr wartet, bis er aus dem Turm herauskommt, bevor ihr zusammenzieht. Er hat einen Stun, der sofort wirkt|r
    .complete 6023,2 --Cavalier Durgen (1)
	.unitscan Cavalier Durgen
step
	#label crusader
    .goto Western Plaguelands,55.1,23.5
    >>Plündert |cRXP_PICK_Heilige Kiste|r auf der Spitze des Turmes für |cRXP_LOOT_Mark of the Lightbringer|r
	>>|cRXP_WARN_The |cRXP_ENEMY_Scharlachroter Hochkleriker|r (63  elite) may be up. Skip this quest if needed|r
    .complete 9443,1 --Mark of the Lightbringer (1)
    .unitscan Scarlet High Clerist
step
	#label Businessman
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kirsta|r
    .turnin 6023 >>Gebt die Quest Offene Rechnungen ab
    .accept 6025 >>Offene Rechnungen annehmen
	.target Kirsta Deepshadow
step
    #label HearthglenOverlook
    .goto Western Plaguelands,47.94,21.43,60,0
    .goto Western Plaguelands,43.31,17.34,50,0
    .goto Western Plaguelands,45.6,18.6
    >>Run into Hearthglen and follow the arrow to reset the mobs once you're inside (NOT TRANSLATED IN :deDE YET)
    >>Run up to the top of the tower. Be careful as the Paladins outside can heal. You can try running past them/Crowd controlling them and going to the top (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Bedenkt, dass Mobs keine Reichweite auf der Z-Achse haben. Sie können euch vom Fuß des Turms aus treffen, wenn sie sich direkt unter euch befinden|r
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    #completewith next
    .subzone 192 >>Verlassen Herdweiler
step
    .goto Western Plaguelands,51.92,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kirsta|r
    .turnin 6025 >>Gebt die Quest Offene Rechnungen ab
	.target Kirsta Deepshadow
step
	#completewith next
	.subzone 152 >> Return to Das Bollwerk
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vandis|r
    .turnin 5232 >>Gebt die Quest Rückkehr zum Bollwerk ab
    .accept 5233 >>Ziel: Das Trostlose Feld annehmen
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .turnin 5098 >>Gebt Turm um Turm ab
    .accept 838 >>Scholomance annehmen
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dithers|r
    .turnin 838 >>Gebt die Quest Scholomance ab
    .accept 964 >>Akzeptiert die Quest Skelettfragmente
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mehlar Klinge der Dämmerung|r
    .turnin 9443 >>Gebt die Quest Das sogenannte Mal des Lichtbringers ab
    .accept 9444 >>Akzeptiert die Quest Entweiht Uthers Grabmal
    .target Mehlar Dawnblade
	.isQuestComplete 9443
step
    #optional
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mehlar Klinge der Dämmerung|r
    .accept 9444 >>Akzeptiert die Quest Entweiht Uthers Grabmal
    .target Mehlar Dawnblade
	.isQuestTurnedIn 9443
step
	.goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chromie|r auf der obersten Etage der Taverne
    .turnin 4971 >>Gebt die Quest Eine Frage der Zeit ab
    .accept 4972 >>Tempus fugit annehmen
	.target Chromie
step
	#completewith next
	>>Plündert |cRXP_PICK_Kleine Lockboxen|r in den ruinierten Gebäuden für |cRXP_LOOT_Andorhal Watches|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    #loop
	.goto Western Plaguelands,46.40,70.00,0
	.goto Western Plaguelands,46.40,70.00,50,0
	.goto Western Plaguelands,45.60,72.20,50,0
	.goto Western Plaguelands,42.60,71.40,50,0
	.goto Western Plaguelands,41.60,73.20,50,0
	.goto Western Plaguelands,38.80,71.00,50,0
	.goto Western Plaguelands,38.80,68.20,50,0
	.goto Western Plaguelands,40.40,66.40,50,0
	.goto Western Plaguelands,42.60,70.00,50,0
	.goto Western Plaguelands,43.40,64.40,50,0
	.goto Western Plaguelands,45.80,65.80,50,0
	>>Kill all |cRXP_ENEMY_Skeletons|r in Andorhal. Loot them for their |cRXP_LOOT_Fragments|r (NOT TRANSLATED IN :deDE YET)
	>>|cRXP_ENEMY_Skeletal Executioners|r |cRXP_WARN_can|r |T135358:0|t[Hinrichten] |cRXP_WARN_if von Euch health drops <20%|r
    .complete 964,1 --Skeletal Fragments (15)
	.mob Skeletal Executioner
	.mob Skeletal Acolyte
	.mob Skeletal Warlord
	.mob Skeletal Sorcerer
	.mob Skeletal Flayer
	.mob Skeletal Terror
step
    #loop
	.goto Western Plaguelands,40.40,66.50,0
	.goto Western Plaguelands,40.40,66.50,30,0
	.goto Western Plaguelands,38.90,68.10,30,0
	.goto Western Plaguelands,41.30,69.80,30,0
	.goto Western Plaguelands,42.80,73.90,30,0
	.goto Western Plaguelands,43.60,73.40,30,0
	.goto Western Plaguelands,45.10,73.70,30,0
	.goto Western Plaguelands,46.50,73.00,30,0
	.goto Western Plaguelands,44.80,70.50,30,0
	.goto Western Plaguelands,42.90,68.50,30,0
	.goto Western Plaguelands,40.90,67.20,30,0
	>>Plündert |cRXP_PICK_Kleine Lockboxen|r in den ruinierten Gebäuden für |cRXP_LOOT_Andorhal Watches|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Marlene|r
    .accept 5142 >>Akzeptiert die Quest Klein-Pamela
	.target Marlene Redpath
step
    .goto Western Plaguelands,52.1,83.3
    .use 23691 >>|cRXP_WARN_Anlegen|r |T135160:0|t[Verderbtes Mal des Lichtbringers] |cRXP_WARN_in der Nebenhand von Euch|r
    >>|cRXP_WARN_Use the|r |T135160:0|t[Corrupted Mark of the Lightbringer] |cRXP_WARN_at Uther's Tomb|r (NOT TRANSLATED IN :deDE YET)
    .complete 9444,1 --Uther's Tomb Defiled (1)
    .isQuestTurnedIn 9443
step
    .goto Western Plaguelands,53.07,65.97
    >>Kill |cRXP_ENEMY_Cauldron Lord Razarch|r. Loot him for his |cRXP_LOOT_Cauldron Key|r (NOT TRANSLATED IN :deDE YET)
	>>|cRXP_ENEMY_Eiskalt Ghule|r |cRXP_WARN_haben einen 5-Sekunden-Wirkungsbereich-Stun, der sofort wirkt|r
    .complete 5233,1 --Writhing Haunt Cauldron Key (1)
	.unitscan Cauldron Lord Razarch
step
    .goto Western Plaguelands,53.0,65.7
	>>Klickt |cRXP_PICK_Geißelkessel|r an, der oben auf dem Podest brodelt
	>>|cRXP_ENEMY_Eiskalt Ghule|r |cRXP_WARN_haben einen 5-Sekunden-Wirkungsbereich-Stun, der sofort wirkt|r
    .turnin 5233 >>Gebt die Quest Ziel: Das Trostlose Feld ab
    .accept 5234 >>Akzeptiert die Quest Rückkehr zum Bollwerk
step
    #label WildlifePU
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Mulgris|r
	>>|cRXP_ENEMY_Eiskalt Ghule|r |cRXP_WARN_haben einen 5-Sekunden-Wirkungsbereich-Stun, der sofort wirkt|r
    .accept 4984 >>Die Tierwelt leidet auch annehmen
	.target Mulgris Deepriver
step
    #loop
	.goto Western Plaguelands,46.80,39.60,0
	.goto Western Plaguelands,46.80,39.60,70,0
	.goto Western Plaguelands,45.80,46.40,70,0
	.goto Western Plaguelands,43.40,54.80,70,0
	.goto Western Plaguelands,46.00,59.20,70,0
	.goto Western Plaguelands,51.60,61.60,70,0
	.goto Western Plaguelands,51.00,53.20,70,0
	.goto Western Plaguelands,50.00,46.60,70,0
	.goto Western Plaguelands,47.80,43.40,70,0
	>>Kill |cRXP_ENEMY_Diseased Wolves|r
	>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Aaslauerer|r|cRXP_WARN_. If necessary, kill them to reset the area|r
    .complete 4984,1 --Diseased Wolf (8)
	.unitscan Diseased Wolf
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mulgris|r
    .turnin 4984 >>Gebt die Quest Die Tierwelt leidet auch ab
    .accept 4985 >>Die Tierwelt leidet auch annehmen
	.target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,56.08,63.26,0
    .goto Western Plaguelands,56.08,63.26,90,0
    .goto Western Plaguelands,60.15,59.93,90,0
    .goto Western Plaguelands,59.43,52.40,90,0
    .goto Western Plaguelands,68.18,46.23,90,0
	>>Töte |cRXP_ENEMY_Kranker Grizzly|r
	>>|cRXP_ENEMY_Kranker Grizzly|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Plague Lurkers|r|cRXP_WARN_. If necessary, kill them to reset the area|r
    .complete 4985,1 --Diseased Grizzly (8)
	.unitscan Diseased Grizzly
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nathanos|r
    .accept 6022 >>Akzeptiert die Quest Töten zu einem bestimmten Zweck
	.target Nathanos Blightcaller
step
	.goto Eastern Plaguelands,27.28,85.22
	>>Klick auf das big |cRXP_PICK_Torn Scroll|ron the ground inside the crypt
    .accept 6024 >>Hameyas Bitte annehmen
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pamela|r
    .turnin 5142 >>Gebt die Quest Klein-Pamela ab
    .accept 5149 >>Akzeptiert die Quest Pamelas Puppe
	.target Pamela Redpath
step
    .goto Eastern Plaguelands,38.10,92.24
	>>Loote die 3 |cRXP_PICK_Doll Parts|ron the floor in ruined buildings
	>>|cRXP_WARN_Das Anklicken der Puppenstücke kann mehrere|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_beschwören, die eine Eis-rüstung und einen Frost-Stoß haben|r
	.collect 12886,1,5149,1 -- Pamela's Doll's Head
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.64,92.51
	>>Loote die 3 |cRXP_PICK_Doll Parts|ron the floor in ruined buildings
	>>|cRXP_WARN_Das Anklicken der Puppenstücke kann mehrere|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_beschwören, die eine Eis-rüstung und einen Frost-Stoß haben|r
	.collect 12887,1,5149,1 -- Pamela's Doll's Left Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.67,90.24
	>>Loote die 3 |cRXP_PICK_Doll Parts|ron the floor in ruined buildings
	>>|cRXP_WARN_Das Anklicken der Puppenstücke kann mehrere|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_beschwören, die eine Eis-rüstung und einen Frost-Stoß haben|r
	.collect 12888,1,5149,1 -- Pamela's Doll's Right Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	.use 12886 >>|cRXP_WARN_Klickt|r |T134164:0|t[Pamelas Puppe's Kopf] |cRXP_WARN_um die drei Teile zu kombinieren|r
    .complete 5149,1 --Pamela's Doll (1)
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pamela|r
    .turnin 5149 >>Gebt die Quest Pamelas Puppe ab
    .accept 5152 >>Tante Marlene annehmen
    .accept 5241 >>Onkel Carlin annehmen
	.target Pamela Redpath
    .isQuestComplete 5149
step
    #optional
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pamela|r
    .accept 5152 >>Tante Marlene annehmen
    .accept 5241 >>Onkel Carlin annehmen
	.target Pamela Redpath
    .isQuestTurnedIn 5149
step
	#completewith RottingUndead
	.subzone 2264 >> Reist nach Corin's Crossing
step
	#completewith next
	>>Tötet |cRXP_ENEMY_Untote|r. Plündert sie für |cRXP_LOOT_Lebendige Fäulnis|r.
	>>|cRXP_WARN_Gruppen von Elites patroullieren auf der nördlichen und östlichen Straße. Unsichtbare Mobs patroullieren im Innern von Corins Kreuzung, also versucht, Mobs herauszuziehen|r
	.collect 15447,7 --Living Rot (7)
	.mob Hate Shrieker
	.mob Scourge Warder
	.mob Stitched Horror
	.mob Gibbering Ghoul
	.mob Unseen Servant
	.mob Dark Caster
step
	#label RottingUndead
    #loop
	.goto Eastern Plaguelands,58.20,70.20,0
	.goto Eastern Plaguelands,58.20,70.20,25,0
	.goto Eastern Plaguelands,60.40,71.60,25,0
	.goto Eastern Plaguelands,61.00,69.40,25,0
	.goto Eastern Plaguelands,61.40,66.40,25,0
	.goto Eastern Plaguelands,59.40,66.40,25,0
	.goto Eastern Plaguelands,58.00,67.60,25,0
	.use 15454 >>|cRXP_WARN_Benutzt die|r |T133748:0|t[Mörser und Stößel] |cRXP_WARN_bevor die |cRXP_LOOT_Lebendige Fäulnis|r abläuft|r
    .complete 6022,1 --Coagulated Rot (1)
step
	#completewith LHFP
	.subzone 2268 >> Reist zur Kapelle des Hoffnungsvollen Lichts
step
    .goto Eastern Plaguelands,79.60,63.87
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Alen|r
    .accept 6021 >>Zaeldarr der Ausgestoßene annehmen
    .accept 5281 >>Akzeptiert die Quest Die ruhelosen Seelen
	.target Caretaker Alen
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Carlin|r
    .turnin 5241 >>Gebt die Quest Onkel Carlin ab
    .accept 5211 >>Verteidiger von Darroheim annehmen
	.target Carlin Redpath
step
    .goto Eastern Plaguelands,81.627,58.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jessica Chambers|r
    .home >> Setzt euren Ruhestein in der Kapelle des Hoffnungsvollen Lichts
    .target Jessica Chambers
    .bindlocation 2268
    .subzoneskip 2268,1
step
    #completewith next
    .subzone 2273 >> Reist nach Zul'Mashar
step
	.goto Eastern Plaguelands,64.25,22.09,50,0
	.goto Eastern Plaguelands,68.57,20.95,50,0
	.goto Eastern Plaguelands,69.23,18.48
	>>Kill |cRXP_ENEMY_Spitzel Hameya|r. Loote sie für den |cRXP_LOOT_Key|r
	>>|cRXP_WARN_Ihr solltet allen Gegnern auf dem Weg den Berg hinauf ausweichen können. Lauft an ihnen allen vorbei und dann die Berge im Osten hinauf. Geht nicht in die Nähe der Gräber|r
    .complete 6024,1 --Hameya's Key (1)
	.unitscan Infiltrator Hameya
step
	#completewith Termites
	.subzone 2277 >> Lauf zum Teufelswald
step
    #completewith Egan1
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
	.goto Eastern Plaguelands,26.48,37.58,0
	>>Kill |cRXP_ENEMY_Diseased Flayers|r und |cRXP_ENEMY_Jammernder Ghul|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit dem |cRXP_FRIENDLY_Geist von Darroheim|r, der auf den Leichen auftaucht
	>>|cRXP_WARN_Diese Mobs teilen Spawn-Punkte mit ein paar Mob-Typen, also tötet alles, nachdem alle Ghulen gestorben sind|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #label Termites
    #loop
    .goto Eastern Plaguelands,42.80,34.24,0
    .goto Eastern Plaguelands,39.97,21.11,50,0
    .goto Eastern Plaguelands,34.90,24.67,50,0
    .goto Eastern Plaguelands,30.69,24.99,50,0
    .goto Eastern Plaguelands,26.59,23.84,50,0
    .goto Eastern Plaguelands,24.19,23.62,50,0
    .goto Eastern Plaguelands,21.15,24.05,50,0
    .goto Eastern Plaguelands,20.90,29.89,50,0
    .goto Eastern Plaguelands,23.75,32.44,50,0
    .goto Eastern Plaguelands,26.48,37.58,50,0
    .goto Eastern Plaguelands,29.55,34.13,50,0
    .goto Eastern Plaguelands,34.89,35.29,50,0
    .goto Eastern Plaguelands,42.80,34.24,50,0
	>>Loote die tan |cRXP_PICK_Termite Mounds|rfor its |cRXP_LOOT_Termites|r
    .complete 5901,1 --Plagueland Termites (100)
step
    #label Egan1
    .goto Eastern Plaguelands,14.45,33.74
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Egan|r und |cRXP_FRIENDLY_Augustus|r im Haus
    .turnin 5281 >>Gebt die Quest Die ruhelosen Seelen ab
	.target Egan
    .isOnQuest 5281
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	>>Kill |cRXP_ENEMY_Diseased Flayers|r und |cRXP_ENEMY_Jammernder Ghul|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit dem |cRXP_FRIENDLY_Geist von Darroheim|r, der auf den Leichen auftaucht
	>>|cRXP_WARN_Diese Mobs teilen Spawn-Punkte mit ein paar Mob-Typen, also tötet alles, nachdem alle Ghulen gestorben sind|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
    >>Kill more |cRXP_ENEMY_Untot|rin the zone for |T133447:0|t[|cRXP_LOOT_Minion's Scourgestone|r]
    .collect 12840,20 --Minion's Scourgestones (x20)
step
    #completewith next
    .hs >>Ruhestein nach Kapelle des hoffnungsvollen Lichts
    .bindlocation 2268,1
    .subzoneskip 2268
    .cooldown item,6948,>2,1
step
    .goto Eastern Plaguelands,81.44,59.81
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nicholas|r und |cRXP_FRIENDLY_Carlin|r
	.turnin 5510 >>Gebt die Quest Geißelsteine des Dieners ab
	.target Duke Nicholas Zverenhoff
step
    .goto Eastern Plaguelands,81.05,57.55
    >>Sprich mit |cRXP_FRIENDLY_Metz|r
    .accept 9141 >> Akzeptiert die Quest Sie nennen mich "den Schleifer"
    .turnin 9141 >> Gebt die Quest Sie nennen mich "den Schleifer" ab
    .target Dispatch Commander Metz
    .itemcount 12844,1 --Argent Dawn Valor Token (1)
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Carlin|r
    .turnin 5211 >>Gebt die Quest Verteidiger von Darroheim ab
	.target Carlin Redpath
step
    #completewith UCvisit2
	.goto Eastern Plaguelands,80.22,57.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Georgia|r
    .fly Undercity >>Fliege nach Unterstadt
	.target Georgia
	.zoneskip Undercity
step
    .goto Undercity,69.79,43.16
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bauhaus|r
    .turnin 5023 >>Gebt die Quest Besser spät als nie ab
    .accept 5049 >>Der Jammer des Jeremiah annehmen
	.target Royal Overseer Bauhaus
step
    .goto Undercity,67.61,44.14
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jeremiah|r
    .turnin 5049 >>Gebt die Quest Der Jammer des Jeremiah ab
    .accept 5050 >>Glücksbringer annehmen
	.target Jeremiah Payson
step
    .goto Undercity,51.88,64.49,30,0
    .goto Undercity,58.07,91.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sylvanas|r
    .accept 5961 >>Der Champion der Bansheekönigin annehmen
	.target Lady Sylvanas Windrunner
step
    #label UCvisit2
	#completewith next
    .goto Tirisfal Glades,61.85,66.59,60 >>Verlasst Unterstadt
	.zoneskip Tirisfal Glades
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vandis|r
    .turnin 5234 >>Gebt die Quest Rückkehr zum Bollwerk ab
    .accept 5235 >>Akzeptiert die Quest Ziel: Gahrrons Trauerfeld
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dithers|r
    .turnin 964 >>Gebt die Quest Skelettfragmente ab
	.target Apothecary Dithers
    .isQuestComplete 964
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mickey|r
    .turnin 5901 >>Gebt die Quest Eine Plage komme über Euch ab
    .accept 5902 >>Eine Plage komme über Euch annehmen
	.target Mickey Levine
step
	#optional
    .isQuestTurnedIn 5901
    .destroy 15043 >>Lösche alle übriggebliebenen |T134321:0|t[Pestland-Termiten]
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClimb to the top floor of the building, then talk to |cRXP_FRIENDLY_Janice|r (NOT TRANSLATED IN :deDE YET)
    .turnin 5050 >>Gebt die Quest Glücksbringer ab
    .accept 5051 >>Zwei Hälften vereint annehmen
	.target Janice Felstone
step
    #loop
	.line Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
	.goto Western Plaguelands,36.80,58.60,0
	.goto Western Plaguelands,36.80,58.60,50,0
	.goto Western Plaguelands,36.40,56.40,50,0
	.goto Western Plaguelands,37.40,55.60,50,0
	.goto Western Plaguelands,38.60,56.20,50,0
	.goto Western Plaguelands,37.80,57.60,50,0
	>>Töte die |cRXP_ENEMY_Plappernder Ghul|r. Loote ihn für den |cRXP_LOOT_Good Luck Other-Half-Charm|r
    .use 12722 >> Use it to create the |cRXP_LOOT_Good Luck Charm|r (NOT TRANSLATED IN :deDE YET)
    .complete 5051,1 --Good Luck Charm (1)
	.unitscan Jabbering Ghoul
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the top floor of the building (NOT TRANSLATED IN :deDE YET)
    .turnin 5051 >>Gebt die Quest Zwei Hälften vereint ab
	.target Janice Felstone
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Marlene|r
    .turnin 5152 >>Gebt die Quest Tante Marlene ab
    .accept 5153 >>Ein seltsamer Historiker annehmen
	.target Marlene Redpath
step
    .goto Western Plaguelands,49.69,76.75
	>>Loote |cRXP_PICK_Joseph Redpath's Monument|r for |cRXP_LOOT_Joseph's Wedding Ring|r
    .complete 5153,1 --Joseph's Wedding Ring (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chromie|r auf der obersten Etage der Taverne
    .turnin 5153 >>Gebt die Quest Ein seltsamer Historiker ab
    .accept 5154 >>Die Annalen von Darroheim annehmen
    .turnin 4972 >>Gebt die Quest Tempus fugit ab
	.target Chromie
step
    .goto Western Plaguelands,43.4,69.6
	>>Beute |cRXP_PICK_Muffige Folianten|r im Rathaus, bis ihr die |cRXP_LOOT_Annals of Darroheim|r erbeutet
	>>|cRXP_WARN_Viele Bücher sind Fälschungen und lassen beim Öffnen Gegner erscheinen. Die echten Bücher haben vollständig weiße Seiten, ohne graue/dunkle Färbung. Möglicherweise müsst ihr auf falsche Bücher klicken, um ein echtes erscheinen zu lassen|r
    .complete 5154,1 --Annals of Darrowshire (1)
	.link https://i.imgur.com/B2HDb6K.png >> Klickt HIER für ein visuelles Beispiel
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chromie|r auf der obersten Etage der Taverne
    .turnin 5154 >>Gebt die Quest Die Annalen von Darroheim ab
    .accept 5210 >>Bruder Carlin annehmen
	.target Chromie
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mulgris|r
    .turnin 4985 >>Gebt die Quest Die Tierwelt leidet auch ab
    .accept 4987 >>Accept Glyphed Oaken Branch (NOT TRANSLATED IN :deDE YET)
	.target Mulgris Deepriver
step
    .goto Western Plaguelands,62.80,58.76
    >>Tötet |cRXP_ENEMY_Cauldron Lord Soulwrath|r. Plündert sie für |cRXP_LOOT_Cauldron Schlüssel|r
	>>|cRXP_WARN_Dieser Mob hat eine 10-sekündige verstummende Krankheit|r << !Priest
	>>|cRXP_WARN_This mob has a 10-second silencing disease; pre-wirkt Krankheit aufheben und keep it up|r << Priest
    .complete 5235,1 --Gahrron's Withering Cauldron Key (1)
	.unitscan Cauldron Lord Soulwrath
step
    .goto Western Plaguelands,62.5,58.6
	>>Klickt |cRXP_PICK_Geißelkessel|r an, der oben auf dem Podest brodelt
    .turnin 5235 >>Gebt die Quest Ziel: Gahrrons Trauerfeld ab
    .accept 5236 >>Akzeptiert die Quest Rückkehr zum Bollwerk
step
	.goto Eastern Plaguelands,28.03,86.16
	>>Klickt auf |cRXP_PICK_mound of dirt|r hinter der Gruft
    .turnin 6024 >>Gebt die Quest Hameyas Bitte ab
	.isQuestComplete 6024
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nathanos|r
    .turnin 6022 >>Gebt die Quest Töten zu einem bestimmten Zweck ab
	.turnin 5961 >>Gebt die Quest Der Feldherr der Bansheekönigin ab
	.target Nathanos Blightcaller
step
	#completewith next
	.subzone 192 >>Reist zum Sägewerk des Nordkamms
step
	.goto Western Plaguelands,48.35,32.00
	>>Betretet die Mühle. Klickt bei der Rampe |cRXP_PICK_Northridge Sägewerk Kiste|r an und klickt dann |cRXP_PICK_Termite Fass|r an
    .turnin 5902 >>Gebt die Quest Eine Plage komme über Euch ab
    .accept 6390 >>Eine Plage komme über Euch annehmen
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Chromie|r auf der obersten Etage der Taverne
    .turnin 5154 >>Gebt die Quest Die Annalen von Darroheim ab
	.target Chromie
step
	#completewith next
	.subzone 152 >>Reist zurück zum Bollwerk
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vandis|r
    .turnin 5236 >>Gebt die Quest Rückkehr zum Bollwerk ab
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.30,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mickey|r
    .turnin 6390 >>Gebt die Quest Eine Plage komme über Euch ab
	.target Mickey Levine
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Derrington|r
    .turnin 5238 >>Gebt die Quest Mission erfüllt! ab
	.target High Executor Derrington
step << skip
    .goto Tirisfal Glades,61.87,59.11
    >>|cRXP_WARN_Go up the Zeppelin Tower|r (NOT TRANSLATED IN :deDE YET)
    .zone Stranglethorn Vale >>Take the Zeppelin to Stranglethorn (NOT TRANSLATED IN :deDE YET)
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thysta|r
    .complete 64217,2 << Druid--Speak to Thysta at Grom'gol Base Camp (1)
    .complete 64063,2 << !Druid--Speak to Thysta at Grom'gol Base Camp (1)
	.target Thysta
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thysta|r
	.fly Stonard >> Fliege nach Steinard
	.target Thysta
    .subzoneskip 75
step << skip
	#completewith next
	.goto Swamp of Sorrows,33.4,71.9,60,0
	.goto Swamp of Sorrows,33.2,68.4,60,0
	.zone Blasted Lands >> Reist nach Verwüstete Lande

step << skip
    .goto Blasted Lands,58.1,56.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Dar'toon|r (NOT TRANSLATED IN :deDE YET)
    --.turnin 64063 >>Turn in The Dark Portal << !Druid
    --.turnin 64217 >>Turn in The Dark Portal << Druid
    --.accept 9407 >>Accept Through the Dark Portal
    .target Warlord Dar'toon

]])
