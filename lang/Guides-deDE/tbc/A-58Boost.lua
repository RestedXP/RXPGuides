if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Dungeonführer (A)
<< Alliance
#name Boosted Character 58-60
#subgroup RestedXP Alliance Boosted 58-60
#subweight -1
#title Boosted Character 58-60 (NOT TRANSLATED IN :deDE YET)
#next 59-61 Höllenfeuerhalbinsel

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
step
    .isOnQuest 64038
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .complete 64038,1 --Speak to Dungar Longdrink, the Gryphon Master (1)
    .fly Morgan's Vigil >> Fliege nach Morgans Wacht
    .target Dungar Longdrink
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Helendis Riverhorn|r
    .accept 4182 >> Drachkin-Bedrohung annehmen
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,81.8,27.8,0
    .goto Burning Steppes,91.4,32.6,0
    .goto Burning Steppes,89.8,54.6,0
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>Töte |cRXP_ENEMY_Schwarzer Brutling|r, |cRXP_ENEMY_Schwarze Großdrachenbrut|r, |cRXP_ENEMY_Schwarzwyrmkin|r und einen |cRXP_ENEMY_Schwarzen Drachen|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Wyrmkin
    .complete 4182,3 -- Black Drake slain
    .mob +Black Drake
    .isOnQuest 4182
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Helendis Riverhorn|r
    .turnin 4182 >> Gebt die Quest Drachkin-Bedrohung ab
    .accept 4183 >> Die wahren Meister annehmen
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Borgus Starkarm|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .turnin 4183 >> Gebt die Quest Die wahren Meister ab
    .accept 4184 >> Die wahren Meister annehmen
    .target Magistrate Solomon
step << Mage
    .isOnQuest 4184
    .cast 3561 >>|cRXP_WARN_Cast|r |T135763:0|t[Teleportieren: Sturmwind]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,47.87,31.31,8,0
    .goto Stormwind City,47.87,31.31,6 >>Lauf zum |cRXP_FRIENDLY_Königlicher Disponent Bathrilor|r eine Etage drüber
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hochlord Bolvar Fordragon|r
    .turnin 4184 >> Gebt die Quest Die wahren Meister ab
    .accept 4185 >> Die wahren Meister annehmen
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hochlord Bolvar Fordragon|r
    .turnin 4185 >> Gebt die Quest Die wahren Meister ab
    .accept 4186 >> Die wahren Meister annehmen
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
    .turnin 4186 >> Gebt die Quest Die wahren Meister ab
    .accept 4223 >> Die wahren Meister annehmen
    .target Magistrate Solomon
step
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Burning Steppes>> Flieg in die Brennenden Steppe
    .target Ariena Stormfeather
    .zoneskip Burning Steppes
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Maxwell|r
    .turnin 4223 >> Gebt die Quest Die wahren Meister ab
    .target Marshal Maxwell
step
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Borgus Starkarm|r
    .fly Southshore >>Fliege nach Süderstade
    .target Borgus Stoutarm
step
    .goto Hillsbrad Foothills,51.170,58.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Anderson|r
    .home >> Setzt den Ruhestein von Euch nach Süderstade
    .target Innkeeper Anderson
    .bindlocation 271
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Flieg zum Chillwind-Lager
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anchorite Truuen|r
    >>|cRXP_WARN_Überspringt diesen Schritt if he is not here|r
    .accept 9474 >> Das Mal des Lichtbringers annehmen
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .accept 5092 >> Weg frei annehmen
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.967,83.546
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argentumoffizierin Reinherz|r
    .accept 5401 >> Akzeptiert die Quest Anstecknadel der Argentumdämmerung
    .turnin 5401 >> Gebt die Quest Anstecknadel der Argentumdämmerung ab
    .target Argent Officer Pureheart
step
    #completewith ADC
    .cast 17670 >> Zieh die [Anstecknadel der Argentumdämmerung] an um [Geißelsteine] zu sammeln
    .use 12846
step
    .goto Western Plaguelands,43.419,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nathaniel Dumah|r
    .accept 5903 >> Eine Plage komme über Euch annehmen
    .target Nathaniel Dumah
step
    #completewith next
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .fly Eastern Plaguelands >> Flieg in die Östlichen Pestländer
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verwalter Alen|r
    .accept 5281 >> Akzeptiert die Quest Die ruhelosen Seelen
    .accept 6021 >> Zaeldarr der Ausgestoßene annehmen
    .target Caretaker Alen
step << Hunter
    #sticky
    .tame 8602 >> |cRXP_WARN_If your pet has no abilities other than|r |T132270:0|t[Growl]|cRXP_WARN_, ditch your pet and tame a level 58 |cRXP_ENEMY_Bat|r on your way to Plaguewood|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Buy some|r |T134526:0|t[Dried King Bolete] |cRXP_WARN_to feed your new pet|r (NOT TRANSLATED IN :deDE YET)
    .collect 8948,20
    .goto Eastern Plaguelands,79.5,64.0
step
    #sticky
    .abandon 5211 >>Abandon Defenders of Darrowshire if you have this quest (NOT TRANSLATED IN :deDE YET)
step
    #loop
    .goto Eastern Plaguelands,41.2,25.2,0
    .goto Eastern Plaguelands,42.1,38.2,0
    .goto Eastern Plaguelands,32.0,35.8,0
    .goto Eastern Plaguelands,33.8,25.8,0
    .goto Eastern Plaguelands,29.9,23.1,0
    .goto Eastern Plaguelands,26.5,37.5,0
    .goto Eastern Plaguelands,20.4,20.8,0
    .goto Eastern Plaguelands,31.4,29.6,0
    .goto Eastern Plaguelands,41.2,25.2,70,0
    .goto Eastern Plaguelands,42.1,38.2,70,0
    .goto Eastern Plaguelands,32.0,35.8,70,0
    .goto Eastern Plaguelands,33.8,25.8,70,0
    .goto Eastern Plaguelands,29.9,23.1,70,0
    .goto Eastern Plaguelands,26.5,37.5,70,0
    .goto Eastern Plaguelands,20.4,20.8,70,0
    .goto Eastern Plaguelands,31.4,29.6,70,0
    >>Öffnet |cRXP_PICK_Große Termitenhügel|r überall in Der Pestwald. Plündert sie für die |cRXP_LOOT_Pestlandtermiten|r
    .complete 5903,1 --Collect Plagueland Termites (x100)
step
    #label Egan
    .goto Eastern Plaguelands,14.448,33.740
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >> Gebt die Quest Die ruhelosen Seelen ab
    .target Egan
step
    .hs >> Ruhestein nach Süderstade
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Flieg zum Chillwind-Lager
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anchorite Truuen|r
    >>|cRXP_WARN_Überspringt diesen Schritt if he is not here|r
    .accept 9474 >> Das Mal des Lichtbringers annehmen
	.target Anchorite Truuen
step
    .goto Western Plaguelands,48.91,80.84,70,0
    .goto Western Plaguelands,50.01,76.90
    >>Töte |cRXP_ENEMY_Skelettschinder|r und |cRXP_ENEMY_Sabbernder Ghul|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marlene Rotpfad|r
    >>|cRXP_FRIENDLY_Marlene Rotpfad|r kann auch oben sein
    .accept 5142 >> Akzeptiert die Quest Klein-Pamela
    .target Marlene Redpath
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .turnin 5092 >> Gebt die Quest Den Weg räumen ab
    .accept 5215 >> Die Geißelkessel annehmen
    .accept 5097 >> Turm um Turm annehmen
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin MacDonnell|r
    .turnin 5215 >> Gebt die Quest Die Geißelkessel ab
    .accept 5216 >> Ziel: Teufelssteinfeld annehmen
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 5903 >> Gebt die Quest Eine Plage komme über Euch ab
    .accept 5904 >> Eine Plage komme über Euch annehmen
    .target Nathaniel Dumah
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Turmeingang|r
    .complete 5097,1 --Tower One marked
step
    .goto Western Plaguelands,37.015,57.145
    >>Kill |cRXP_ENEMY_Kessellord Gallenschlund|r. Loote ihn für den |cRXP_LOOT_Felstone Field Cauldron Key|r
    >>|cRXP_ENEMY_Kessellord Gallenschlund|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Scourge Cauldron|r
    .complete 5216,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.194,56.860
    >>Click on the |cRXP_PICK_Scourge Cauldron|r (NOT TRANSLATED IN :deDE YET)
    .turnin 5216 >> Gebt die Quest Ziel: Teufelssteinfeld ab
    .accept 5217 >> Rückkehr zum Zugwindlager annehmen
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Turmeingang|r
    .complete 5097,2 --Tower Two marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Turmeingang|r
    .complete 5097,3 --Tower Three marked
step
    #label ADC
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >> |cRXP_WARN_Benutzt die|r |T135432:0|t[Signalfackel] |cRXP_WARN_neben dem Turmeingang|r
    .complete 5097,4 --Tower Four marked
step
    #completewith next
    .subzone 3197 >> Lauf zum Chillwind-Lager
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .turnin 5097 >> Gebt Turm um Turm ab
    .accept 5533 >> Scholomance annehmen
    .target Commander Ashlam Valorfist
step
    #sticky
    #optional
    .isQuestTurnedIn 5097
    .destroy 12815 >> Zerstört |T135432:0|t[Signalfackel]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Alchemist Arbington|r
    >>|cRXP_WARN_Nimm die Nachfolgequest noch nicht an|r
    .turnin 5533 >> Gebt die Quest Scholomance ab
    .accept 5537 >>Akzeptiert die Quest Skelettfragmente
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin MacDonnell|r
    .turnin 5217 >> Gebt die Quest Rückkehr zum Zugwindlager ab
    .accept 5219 >> Ziel: Dalsons Tränenfeld annehmen
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mulgris Tiefenfurt|r
    >>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid aggroing multiple at the same time|r (NOT TRANSLATED IN :deDE YET)
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .accept 4984 >> Die Tierwelt leidet auch annehmen
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,49.2,58.4,0
    .goto Western Plaguelands,51.6,47.6,0
    .goto Western Plaguelands,43.0,48.2,0
    .goto Western Plaguelands,43.4,57.8,0
    .goto Western Plaguelands,49.2,58.4,70,0
    .goto Western Plaguelands,51.6,47.6,70,0
    .goto Western Plaguelands,43.0,48.2,70,0
    .goto Western Plaguelands,43.4,57.8,70,0
    .goto Western Plaguelands,46.6,40.4,70,0
    >>Kill |cRXP_ENEMY_Diseased Wolves|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with |cRXP_ENEMY_Carrion Lurkers|r. You may need to kill them to force |cRXP_ENEMY_Diseased Wolves|r to spawn|r (NOT TRANSLATED IN :deDE YET)
    .complete 4984,1 --Kill Diseased Wolf (x8)
    .unitscan Diseased Wolf
step
    .goto Western Plaguelands,47.796,50.671
    >>|cRXP_WARN_ENTER die Dalson's Tränen-Scheune|r
    >>Zwicken |cRXP_PICK_Mrs. Dalson's Diary|r auf dem Boden
    .accept 5058 >> Mrs. Dalsons Tagebuch annehmen
    .turnin 5058 >> Gebt die Quest Mrs. Dalsons Tagebuch ab
step
    .goto Western Plaguelands,47.86,49.88,25,0
    .goto Western Plaguelands,48.48,51.56,25,0
    .goto Western Plaguelands,47.39,51.77,25,0
    .goto Western Plaguelands,46.64,49.21,25,0
    .goto Western Plaguelands,47.86,49.88
    >>Kill the |cRXP_LOOT_Wandering Skeleton|r. Loot it for the |cRXP_LOOT_Dalson Outhouse Key|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_The |cRXP_LOOT_Wandering Skeleton|r patrols around the Dalson's Tear Barn and House|r (NOT TRANSLATED IN :deDE YET)
    .collect 12738,1,5060,1 --Collect Dalson Outhouse Key (x1)
    .unitscan Wandering Skeleton
step
    #completewith next
    .goto Western Plaguelands,48.109,49.654
    >>Klickt |cRXP_PICK_Plumpsklo|r, um |cRXP_ENEMY_Bauer Dalson|r zu beschwören
    .turnin 5059 >> Gebt die Quest Weggeschlossen ab
step
    .goto Western Plaguelands,48.115,49.814
    >>Tötet |cRXP_ENEMY_Farmer Dalson|r. Plündert sie für |cRXP_LOOT_Dalson Cabinet Schlüssel|r
    .collect 12739,1,5060,1 --Collect Dalson Cabinet Key (x1)
    .mob Farmer Dalson
step
    .goto Western Plaguelands,47.353,49.626
    >>Klickt |cRXP_PICK_Verschlossenen Schrank|r oben im Haus an
    .turnin 5060 >> Gebt die Quest Weggeschlossen ab
step
    .goto Western Plaguelands,46.156,52.427
    >>Kill |cRXP_ENEMY_Kessellord Malvinius|r. Loote ihn für den |cRXP_LOOT_Dalson's Tears Cauldron Key|r
    >>|cRXP_ENEMY_Kessellord Malvinius|r |cRXP_WARN_may spawn as you approach the|r |cRXP_PICK_Kessel|r
    .complete 5219,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Malvinious
step
    #label DalsonCauldron
    .goto Western Plaguelands,46.176,52.009
    >>Click on the |cRXP_PICK_Scourge Cauldron|r (NOT TRANSLATED IN :deDE YET)
    .turnin 5219 >> Gebt die Quest Ziel: Dalsons Tränenfeld ab
    .accept 5220 >> Rückkehr zum Zugwindlager annehmen
step
    .goto Western Plaguelands,48.348,31.996
    >>Klickt auf |cRXP_PICK_Northridge Sägewerk Kiste|r, um das |cRXP_PICK_Termite Fass|r zu platzieren, und klickt danach auf |cRXP_PICK_Termite Fass|r
    .skipgossip
    .turnin 5904 >> Gebt die Quest Eine Plage komme über Euch ab
    .accept 6389 >> Eine Plage komme über Euch annehmen
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kirsta Grubenschatten|r
    .accept 6004 >> Offene Rechnungen annehmen
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,50.85,40.68,60,0
    .goto Western Plaguelands,51.97,44.47,60,0
    .goto Western Plaguelands,41.23,51.54,60,0
    .goto Western Plaguelands,50.85,40.68
    >>Kill |cRXP_ENEMY_Scharlachroter Sanitäter|r, |cRXP_ENEMY_Scharlachroter Jäger|r, |cRXP_ENEMY_Scharlachroter Magier|r und |cRXP_ENEMY_Scharlachroter Ritter|r
    >>|cRXP_ENEMY_Scharlachroter Sanitäter|r |cRXP_WARN_and |cRXP_ENEMY_Scharlachroter Jäger|r share spawns|r
    >>|cRXP_ENEMY_Scharlachroter Magier|r |cRXP_WARN_and |cRXP_ENEMY_Scharlachroter Ritter|r share spawns|r
    .complete 6004,1 --Scarlet Medic (2)
    .mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
    .mob +Scarlet Hunter
    .complete 6004,3 --Scarlet Mage (2)
    .mob +Scarlet Mage
    .complete 6004,4 --Scarlet Knight (2)
    .mob +Scarlet Knight
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kirsta Grubenschatten|r
    .turnin 6004 >> Gebt die Quest Offene Rechnungen ab
    .accept 6023 >> Offene Rechnungen annehmen
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,56.38,34.11,50,0
    .goto Western Plaguelands,57.83,36.10
    >>Töte |cRXP_ENEMY_Jägerin Radley|r
    .complete 6023,1 --Kill Huntsman Radley (x1)
    .mob Huntsman Radley
step
    #completewith next
    >>Töte |cRXP_ENEMY_Dragoner Durgen|r
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    *|cRXP_WARN_There is a level 63 elite mob that can spawn at the tower, if that's the case just be patient and wait for |cRXP_ENEMY_Dragoner Durgen|r to come down|r
    .unitscan Cavalier Durgen
step
    .isOnQuest 9474
    .goto Western Plaguelands,55.192,23.511
    >>Öffnet |cRXP_PICK_Heilige Schatulle|r oben auf dem Turm. Holt als Beute das |cRXP_LOOT_Mal des Lightbringer|r daraus
    .complete 9474,1 --Collect Mark of the Lightbringer (x1)
step
    #completewith next
    .goto Western Plaguelands,54.520,23.818
    >>Töte |cRXP_ENEMY_Dragoner Durgen|r
    >>|cRXP_WARN_Er patrouilliert möglicherweise den Turm hinauf und hinunter|r
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    .unitscan Cavalier Durgen
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kirsta Grubenschatten|r
    .turnin 6023 >> Gebt die Quest Offene Rechnungen ab
    .accept 6025 >> Offene Rechnungen annehmen
    .target Kirsta Deepshadow
step
    #completewith next
    .goto Western Plaguelands,45.7,18.8
    .subzone 190 >> Reise nach Herdweiler
step
    .goto Western Plaguelands,45.7,18.8
    >>Lauf den Herdweiler Turm hoch
    >>|cRXP_WARN_Ihr könnt entweder direkt nach oben laufen und hinunterspringen oder euch den Weg nach oben freikämpfen|r
    >>|cRXP_WARN_Vermeide |cRXP_ENEMY_Hochbeschützer Lorik|r , denn er ist ein starker Elite, der hier rumpatrouilliert|r
    .complete 6025,1 -- Overlook Hearthglen from a high vantage point
    .unitscan High Protector Lorik
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kirsta Grubenschatten|r
    .turnin 6025 >> Gebt die Quest Offene Rechnungen ab
    .isQuestComplete 6025
    .target Kirsta Deepshadow
step
    #completewith next
    .subzone 3197 >> Lauf zum Chillwind-Lager
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin MacDonnell|r
    .target High Priestess MacDonnell
    .turnin 5220 >> Gebt die Quest Rückkehr zum Zugwindlager ab
    .accept 5222 >> Ziel: Das Trostlose Feld annehmen
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anchorite Truuen|r
    .turnin 9474 >> Gebt die Quest Das Mal des Lichtbringers ab
	.target Anchorite Truuen
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 6389 >> Gebt die Quest Eine Plage komme über Euch ab
    .target Nathaniel Dumah
step
    #completewith CountingTime
    >>Tötet |cRXP_ENEMY_Skeletthenker|r und |cRXP_ENEMY_Skelettakolyth|r. Plündert sie für |cRXP_LOOT_Skelettfragmente|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chromie|r eine Etage drüber
    .accept 4971 >> Eine Frage der Zeit annehmen
    .target Chromie
step
    .goto Western Plaguelands,45.172,62.559,25,0
    .goto Western Plaguelands,46.858,62.040,25,0
    .goto Western Plaguelands,48.324,62.610,25,0
    .goto Western Plaguelands,48.10,63.92,20,0
    .goto Western Plaguelands,48.06,66.18
    >>Töte |cRXP_ENEMY_Temporaler Parasit|r
    .use 12627 >>|cRXP_WARN_Use the|r |T134229:0|t[Temporal Displacer] |cRXP_WARN_at the silos to make them spawn. If the silo isn't pulsing blue then it cannot spawn any|r |cRXP_ENEMY_Temporaler Parasit|r
    >>|cRXP_WARN_Multiple |cRXP_ENEMY_Temporaler Parasit|r can spawn at the same time, and once one dies, another one can instantly spawn. They will also keep casting|r |T136091:0|t[Slow] |cRXP_WARN_on you severely reducing your movement and attack speed|r
    >>|cRXP_WARN_Die |cRXP_ENEMY_Parasiten|r können nicht schwimmen! Wenn ihr überwältigt werdet, versucht in|r |T135861:0|t[|cRXP_LOOT_Wasser|r] |cRXP_WARN_zu laufen, um ihnen zu entkommen|r
    .complete 4971,1 -- Temporal Parasite slain (15)
    .mob Temporal Parasite
step
    #label CountingTime
    .isQuestTurnedIn 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chromie|r
    .turnin 4972 >> Gebt die Quest Tempus fugit ab
    .target Chromie
step
    #loop
    .goto Western Plaguelands,37.8,70.6,0
    .goto Western Plaguelands,42.6,73.8,0
    .goto Western Plaguelands,49.6,69.4,0
    .goto Western Plaguelands,49.6,63.6,0
    .goto Western Plaguelands,43.0,63.4,0
    .goto Western Plaguelands,39.8,67.4,0
    .goto Western Plaguelands,37.8,70.6,70,0
    .goto Western Plaguelands,42.6,73.8,70,0
    .goto Western Plaguelands,49.6,69.4,70,0
    .goto Western Plaguelands,49.6,63.6,70,0
    .goto Western Plaguelands,43.0,63.4,70,0
    .goto Western Plaguelands,39.8,67.4,70,0
    >>Tötet |cRXP_ENEMY_Skeletthenker|r und |cRXP_ENEMY_Skelettakolyth|r. Plündert sie für |cRXP_LOOT_Skelettfragmente|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,53.020,65.718
    >>Klick auf das |cRXP_PICK_Scourge Cauldron|r
    .turnin 5222 >> Gebt die Quest Ziel: Das Trostlose Feld ab
    .accept 5223 >> Rückkehr zum Zugwindlager annehmen
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mulgris Tiefenfurt|r
    >>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid aggroing multiple at the same time|r (NOT TRANSLATED IN :deDE YET)
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4984 >> Gebt die Quest Die Tierwelt leidet auch ab
    .accept 4985 >> Die Tierwelt leidet auch annehmen
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,58.8,58.6,0
    .goto Western Plaguelands,53.6,48.0,0
    .goto Western Plaguelands,58.8,52.6,0
    .goto Western Plaguelands,67.2,46.6,0
    .goto Western Plaguelands,66.0,55.6,0
    .goto Western Plaguelands,60.8,50.8,0
    .goto Western Plaguelands,58.8,58.6,70,0
    .goto Western Plaguelands,53.6,48.0,70,0
    .goto Western Plaguelands,58.8,52.6,70,0
    .goto Western Plaguelands,67.2,46.6,70,0
    .goto Western Plaguelands,66.0,55.6,70,0
    .goto Western Plaguelands,60.8,50.8,70,0
    >>Kill |cRXP_ENEMY_Diseased Grizzlies|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_ENEMY_Verseucht Grizzlies|r |cRXP_WARN_teilen sich Spawnpunkte mit |cRXP_ENEMY_Seuche Lurkers|r. Ihr müsst sie möglicherweise töten, damit |cRXP_ENEMY_Verseucht Grizzlies|r erscheinen|r
    .complete 4985,1 -- Diseased Grizzly slain (8)
    .unitscan Diseased Grizzly
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mulgris Tiefenfurt|r
    >>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_cast|r |T135848:0|t[Flash Freeze]|cRXP_WARN_. This ability stuns for 5 seconds. Avoid aggroing multiple at the same time|r (NOT TRANSLATED IN :deDE YET)
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4985 >> Gebt die Quest Die Tierwelt leidet auch ab
    .accept 4986 >> Accept Glyphed Oaken Branch (NOT TRANSLATED IN :deDE YET) << Mage
    .target Mulgris Deepriver
step
    #completewith next
    .subzone 3197 >> Lauf zum Chillwind-Lager
    .zoneskip Hillsbrad Foothills
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin MacDonnell|r
    .turnin 5223 >> Gebt die Quest Rückkehr zum Zugwindlager ab
    .accept 5225 >> Akzeptiert die Quest Ziel: Gahrrons Trauerfeld
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,62.573,58.573
    >>Klick auf das |cRXP_PICK_Scourge Cauldron|r
    .turnin 5225 >> Gebt die Quest Ziel: Gahrrons Trauerfeld ab
    .accept 5226 >> Rückkehr zum Zugwindlager annehmen
step
    #completewith next
    .goto Eastern Plaguelands,27.850,86.245,15 >> Betrete die Krypta
step
    .goto Eastern Plaguelands,27.467,84.853
    >>Kill |cRXP_ENEMY_Zaeldarr der Ausgestoßene|r. Loote ihn für seine |cRXP_LOOT_Kopf|r
    .complete 6021,1 -- Zaeldarr's Head (1)
    .mob Zaeldarr the Outcast
step
    .isOnQuest 5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pamela Rotpfad|r
    .turnin 5142 >> Gebt die Quest Klein-Pamela ab
    .accept 5149 >> Akzeptiert die Quest Pamelas Puppe
    .target Pamela Redpath
step
    .isQuestTurnedIn 5601,5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pamela Rotpfad|r
    .accept 5149 >> Akzeptiert die Quest Pamelas Puppe
    .target Pamela Redpath
step
    .goto Eastern Plaguelands,38.038,92.549,15,0
    .goto Eastern Plaguelands,39.643,92.522,15,0
    .goto Eastern Plaguelands,39.622,90.079
    >>Plündert |T134164:0|t[|cRXP_LOOT_Pamelas Puppenkopf|r], |T134230:0|t[|cRXP_LOOT_Linke Seite von Pamelas Puppe|r] und |T134230:0|t[|cRXP_LOOT_Rechte Seite von Pamelas Puppe|r] in den Gebäuden
    >>|cRXP_WARN_Sie erscheinen zufällig in einem der 3 Gebäude in Darroheim|r
    .collect 12886,1,5149,1 -- Pamela's Doll's Head (1)
    .collect 12887,1,5149,1 -- Pamela's Doll's Left Side (1)
    .collect 12888,1,5149,1 -- Pamela's Doll's Right Side (1)
step
    >>|cRXP_WARN_Use|r |T134164:0|t[|cRXP_LOOT_Pamela's Doll's Head|r]|cRXP_WARN_,|r |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Left Side|r] |cRXP_WARN_or|r |T134230:0|t[|cRXP_LOOT_Pamela's Doll's Right Side|r] |cRXP_WARN_to combine them into|r |cRXP_LOOT_Pamela's Doll|r (NOT TRANSLATED IN :deDE YET)
    .complete 5149,1 --Collect Pamela's Doll (x1)
    .use 12886
    .use 12887
    .use 12888
step
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pamela Rotpfad|r
    .turnin 5149 >> Gebt die Quest Pamelas Puppe ab
    .accept 5152 >> Accept Auntie Marlene (NOT TRANSLATED IN :deDE YET)
    .accept 5241 >> Accept Uncle Carlin (NOT TRANSLATED IN :deDE YET)
    .target Pamela Redpath
step
    .hs >> Ruhestein nach Süderstade
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Flieg zum Chillwind-Lager
    .target Darla Harris
    .zoneskip Western Plaguelands
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin MacDonnell|r
    .turnin 5226 >> Gebt die Quest Rückkehr zum Zugwindlager ab
    .target High Priestess MacDonnell
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Anchorite Truuen|r
    .turnin 9474 >> Gebt die Quest Das Mal des Lichtbringers ab
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    .target Commander Ashlam Valorfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kommandant Ashlam Valorfist|r
    .accept 5237 >> Accept Mission Accomplished! (NOT TRANSLATED IN :deDE YET)
    .turnin 5237 >> Gebt die Quest Mission erfüllt! ab
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Alchemist Arbington|r
    .turnin 5537 >> Gebt die Quest Skelettfragmente ab
    .target Alchemist Arbington
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marlene Rotpfad|r
    >>|cRXP_FRIENDLY_Marlene Rotpfad|r kann auch oben sein
    .turnin 5152 >> Gebt die Quest Tante Marlene ab
    .accept 5153 >> Accept A Strange Historian (NOT TRANSLATED IN :deDE YET)
    .target Marlene Redpath
step
    .goto Western Plaguelands,49.696,76.754
    >>Zwicken |cRXP_PICK_Joseph Redpath's Monument|r. Plündert sie für |cRXP_LOOT_Joseph's Wedding Läuten|r
    .complete 5153,1 -- Collect Joseph's Wedding Ring (x1)
step
    .isQuestComplete 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chromie|r eine Etage drüber
    .turnin 4971 >>Gebt die Quest Eine Frage der Zeit ab
    .accept 4972 >>Tempus fugit annehmen
    .turnin 5153 >>Gebt die Quest Ein seltsamer Historiker ab
    .accept 5154 >>Accept The Annals of Darrowshire (NOT TRANSLATED IN :deDE YET)
    .target Chromie
step
    .isQuestTurnedIn 4971
    #loop
    .goto Western Plaguelands,38.71,68.25,0
    .goto Western Plaguelands,38.51,69.74,0
    .goto Western Plaguelands,40.63,68.40,0
    .goto Western Plaguelands,41.08,67.45,0
    .goto Western Plaguelands,40.69,66.16,0
    .goto Western Plaguelands,41.46,69.85,0
    .goto Western Plaguelands,42.17,68.88,0
    .goto Western Plaguelands,42.67,70.31,0
    .goto Western Plaguelands,38.71,68.25,20,0
    .goto Western Plaguelands,38.51,69.74,20,0
    .goto Western Plaguelands,40.63,68.40,20,0
    .goto Western Plaguelands,41.08,67.45,20,0
    .goto Western Plaguelands,40.69,66.16,20,0
    .goto Western Plaguelands,41.46,69.85,15,0
    .goto Western Plaguelands,42.17,68.88,20,0
    .goto Western Plaguelands,42.67,70.31,20,0
    >>Öffne den |cRXP_PICK_Small Lockboxes|r. Loote sie für |cRXP_LOOT_Andorhal Watches|r
    >>|cRXP_WARN_Diese findet ihr in den niedergebrannten Häusern|r
    .complete 4972,1 --Collect Andorhal Watch (x5)
step
    #completewith next
    .goto Western Plaguelands,43.822,69.250,10,0 >> Betrete das Rathaus in den Ruinen von Andorhal
step
    .goto Western Plaguelands,43.50,69.46
    >>Betrete das Rathaus in den Ruinen von Andorhal
    >>Open the |cRXP_PICK_Musty Tomes|r. Loot them for the |cRXP_LOOT_Annals of Darrowshire|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_The correct |cRXP_PICK_Musty Foliant|r will have its pages be a completely dark-shade, oder have a brown stain. If it's only half white und half black, that is a trap|r
    >>|cRXP_WARN_Manchmal sind alle |cRXP_PICK_Muffigen Folianten|r Fallen, und ihr müsst sie öffnen, damit ein richtiger erscheint|r
    .complete 5154,1 --Collect Annals of Darrowshire (x1)
    .link https://youtu.be/GUb1Ny4NwQw >> |cRXP_WARN_Click here for video reference on how to identify the correct|r |cRXP_PICK_Musty Tome|r (NOT TRANSLATED IN :deDE YET)
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chromie|r
    .turnin 4972 >>Gebt die Quest Tempus fugit ab
    .turnin 5154 >>Gebt die Quest Die Annalen von Darroheim ab
    .accept 5210 >>Accept Brother Carlin (NOT TRANSLATED IN :deDE YET)
    .target Chromie
step
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .fly Eastern Plaguelands >> Flieg in die Östlichen Pestländer
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Carlin Rotpfad|r
    .turnin 5241 >>Gebt die Quest Onkel Carlin ab
    .turnin 5210 >>Gebt die Quest Bruder Carlin ab
    .accept 5181 >>Accept Villains of Darrowshire (NOT TRANSLATED IN :deDE YET)
    .target Carlin Redpath
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verwalter Alen|r
    .turnin 6021 >> Gebt die Quest Zaeldarr der Ausgestoßene ab
    .target Caretaker Alen
step
    .goto Eastern Plaguelands,51.41,49.70,0
    .xp 60-8750 >> Grinde, bis dir nur noch 15k EXP bis Level 30 fehlen
step
    .goto Eastern Plaguelands,51.106,49.937
    >>Loot the |cRXP_LOOT_Skull of Horgus|r underwater (NOT TRANSLATED IN :deDE YET)
    .complete 5181,1 --Collect Skull of Horgus (x1)
step
    .goto Eastern Plaguelands,53.913,65.755
    >>Loot the |cRXP_LOOT_Shattered Sword of Marduk|r on the ground (NOT TRANSLATED IN :deDE YET)
    .complete 5181,2 --Collect Shattered Sword of Marduk (x1)
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Carlin Rotpfad|r
    .turnin 5181 >>Gebt die Quest Bösewichte von Darroheim ab
    .target Carlin Redpath
step << Mage
    .cast 3561 >>|cRXP_WARN_Cast|r |T135763:0|t[Teleportieren: Sturmwind]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .goto Eastern Plaguelands,81.637,59.280
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Khaelyn Steelwing|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Khaelyn Steelwing
    .zoneskip Stormwind City
    .zoneskip Hellfire Peninsula
]])
