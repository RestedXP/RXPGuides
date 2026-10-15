if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 1-5 Das Eisklammtal
#next 5-11 Dun Morogh
#defaultfor Dwarf/Gnome

step << !Gnome !Dwarf
    #completewith next
    +Ihr habt einen Leitfaden für Gnome und Zwerge ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet
step << !Warlock !Warrior !Shaman
    #softcore << Warlock
    #optional
    #completewith WolfMeat
	.destroy 6948 >> Entfernt den |T134414:0|t[Ruhestein] aus den Taschen von Euch, da er nicht mehr benötigt wird
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Akzeptiert die Quest Zwergenausstatter
    .target Sten Stoutarm
step << Warrior/Warlock/Shaman
    #season 0,1
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_Tötet und plündert|cRXP_ENEMY_ Struppiger junger Wolf|r, bis ihr 10 Kupfermünzen oder mehr Händler-Schrott habt|r
    >>|cRXP_WARN_Legt|r |T132665:0|t[Akolythenrobe]|cRXP_WARN_,|r |T135005:0|t[Akolythenhemd]|cRXP_WARN_,|r |T134581:0|t[Akolythenhose]|cRXP_WARN_ und|r |T132535:0|t[Akolythenschuhe] |cRXP_WARN_ab, damit ihr sie beim Händler für 4 Kupfer verkaufen könnt|r << Warlock
    >>|cRXP_WARN_Legt|r |T135009:0|t[Rekrutenhemd]|cRXP_WARN_,|r |T134582:0|t[Rekrutenhose]|cRXP_WARN_ und|r |T132540:0|t[Rekrutenstiefel] |cRXP_WARN_ab, damit ihr sie beim Händler für 3 Kupfer verkaufen könnt|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock/Shaman
    #season 0,1
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Betretet Ambossar
step << Warrior/Warlock/Shaman
    #season 0,1
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grundel Harkin|r innerhalb
    .vendor >> Verkauft Müll
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
    .train 8017,1 << Shaman
step << Warrior
    #season 0,1
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r innerhalb
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target Thran Khorman
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r innerhalb
    .train 348 >> Erlernt |T135817:0|t[Feuerbrand]
    .accept 1599 >> Akzeptiert die Quest Anfänge
    .target Alamar Grimm
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teo Hammerstorm|r innerhalb
    .train 8017 >> Erlernen |T136086:0|t[Waffe des Felsbeißers]
    .target Teo Hammerstorm
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >> Benutzt euren Ruhestein in Das Eisklammtal
    .subzoneskip 77,1
step << Warrior/Warlock
    #season 0,1
    #softcore << Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Entfernt den |T134414:0|t[Ruhestein] aus den Taschen von Euch, da er nicht mehr benötigt wird

step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Tötet |cRXP_ENEMY_Struppiger junger Wolf|r. Plündert sie für |cRXP_LOOT_Zähes Wolfsfleisch|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >> Farmt bis Stufe 2
    .mob Ragged Young Wolf
step << Priest/Mage/Warlock/Shaman
    #season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r << !Shaman
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r << Shaman
    >>Farmt|cRXP_WARN_ extra |cRXP_ENEMY_Struppiger junger Wolf|r wenn ihr nicht genug Geld habt|r
    .collect 159,15 << !Shaman --Collect Refreshing Spring Water (x15)
    .collect 159,10 << Shaman --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << !Priest !Mage !Warlock !Shaman
    #completewith next << !Hunter
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>|cRXP_BUY_Kauft 600|r |T132384:0|t[Leichtes Geschoss] |cRXP_BUY_von ihm|r << Hunter
    .vendor >> |cRXP_WARN_verkauft Schrott|r << !Hunter
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
    .xp >6,1
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Gebt die Quest Zwergenausstatter ab
    .accept 233 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .accept 3106 >> Akzeptiert die Quest Einfache Rune << Dwarf Warrior
    .accept 3107 >> Akzeptiert die Quest Geweihte Rune << Dwarf Paladin
    .accept 3108 >> Akzeptiert die Quest Geätzte Rune << Dwarf Hunter
    .accept 3109 >> Akzeptiert die Quest Verschlüsselte Rune << Dwarf Rogue
    .accept 3110 >> Akzeptiert die Quest Geheiligte Rune << Dwarf Priest
    .accept 3112 >> Akzeptiert die Quest Einfaches Memorandum << Gnome Warrior
    .accept 3113 >> Akzeptiert die Quest Verschlüsseltes Memorandum << Gnome Rogue
    .accept 3114 >> Akzeptiert die Quest Glyphen-Memorandum << Gnome Mage
    .accept 3115 >> Akzeptiert die Quest Besudeltes Memorandum << Gnome Warlock
    .accept 98574 >>Akzeptiert die Quest Geheiligtes Memorandum << Gnome Priest
    .accept 98581 >>Akzeptiert die Quest Archaische Rune << Dwarf Shaman
    .target Sten Stoutarm

step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC1
    #label FrostmaneC
    #completewith Feathers
    .goto 1426/0,479.72,-6498.17,20 >> Betretet die Höhle der Frostmähnen
step << Warlock
    #season 0,1
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >> Reist zu den |cRXP_ENEMY_Novize der Frostmane|r im Inneren
step << Warlock
    #season 0,1
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Tötet |cRXP_ENEMY_Novize der Frostmane|r innerhalb. Plündert sie für ihren |cRXP_LOOT_Federglücksbringer|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #season 0,1
    #hardcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .hs >> Benutzt euren Ruhestein in Das Eisklammtal
    .subzoneskip 77,1
--XX Era hardcore warlocks
step << Warlock
    #season 0,1
    #hardcore
    #optional
    #requires BeginningsHS
    #completewith BeginningsEnd
	.destroy 6948 >> Entfernt den |T134414:0|t[Ruhestein] aus den Taschen von Euch, da er nicht mehr benötigt wird
--XX HC Warlocks drop HS (No hearthstone items remain)
step << Warlock
    #season 0,1
    #softcore
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step << Warlock
    #season 0,1
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Betretet Ambossar << Warlock
step << Warlock
    #season 0,1
    #label BeginningsEnd
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r oben
    .turnin 1599 >> Gebt die Quest Anfänge ab
    .turnin -3115 >> Gebt die Quest Besudeltes Memorandum ab
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal

step
#season 0,1
    #label Talin
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Gebt die Quest Postbeförderung im Eisklammtal ab
    .accept 183 >> Akzeptiert die Quest Der Eberjäger
    .accept 234 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .target Talin Keeneye
step
#season 0,1
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Tötet |cRXP_ENEMY_Kleiner Klippeneber|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
#season 0,1
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Gebt die Quest Der Eberjäger ab
    .target Talin Keeneye

step << Paladin/Warlock/Shaman
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >> Farmt bis 1130+/1400 EP
step
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Gebt die Quest Postbeförderung im Eisklammtal ab
    .accept 182 >> Akzeptiert die Quest Die Trollhöhle
    .target Grelin Whitebeard
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Farmt bis Stufe 4
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_Dies startet einen 5-Minuten-Timer für die Quest. Geht in den nächsten 5 Minuten NICHT AFK und meldet euch nicht ab|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter/Shaman
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Ihr habt 5 Minuten Zeit, um nach Ambossar zurückzukehren, bevor|r |T132791:0|t[Durnans kochend heißes Morgengebräu] |cRXP_WARN_verfällt|r
    .goto 1426,28.939,68.387,12 >> Betretet Ambossar
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r innerhalb
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto 1426/0,365.21,-6091.86
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Gebt die Quest Geätzte Rune ab << Dwarf
    .train 1978 >>Erlernt |T132204:0|t[Schlangengift]
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r oben
    .turnin 3115 >> Gebt die Quest Besudeltes Memorandum ab
    .train 172 >>Erlernt |T136118:0|t[Verderbnis]
    .target Alamar Grimm
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 98581 >>Gebt die Quest Archaische Rune ab
    .accept 94373 >>Akzeptiert die Quest Ruf der Erde
    .train 8042 >> Erlernt |T136026:0|t[Erdschock]
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Akzeptiert die Quest Grund and Gozwin
step << Paladin
    #season 0,1
    .goto 1426/0,382.06,-6120.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bromos Grummner|r innerhalb
    .turnin 3107 >> Gebt die Quest Geweihte Rune ab << Dwarf
    .train 19740 >> Erlernt |T135906:0|t[Segen der Macht]
    .train 20271 >> Erlernt |T135959:0|t[Richturteil]
    .target Bromos Grummner
step << Warlock
#season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Paladin/Warlock/Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Reist zu den Hügeln im Norden des Eisklammtals
step << Paladin/Warlock/Hunter
    >>Tötet die |cRXP_ENEMY_Schneeleopardenpirscher|r
    >>Plündert |cRXP_PICK_Gozwins Mechanikerlogbuch|r auf dem Boden
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
    .target Nori Pridedrift
step
    #loop
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r << !Shaman
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r. Plündert sie für |cRXP_LOOT_Eiskrallenbärenanhänger|r << Shaman
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .complete 94373,1 << Shaman--Iceclaw Bear Pendant (2)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,567.09,-6362.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Gebt die Quest Die Trollhöhle ab
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_Dies startet einen 5-Minuten-Timer für die Quest. Geht in den nächsten 5 Minuten NICHT AFK und meldet euch nicht ab|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    +|cRXP_WARN_Ihr habt 5 Minuten, um |cRXP_LOOT_Grelin Whitebeards Tagebuch|r zu erhalten und zu Ambossar zurückzukehren, bevor|r |T132791:0|t[Durnans kochend heißes Morgengebräu] |cRXP_WARN_verfällt|r
    >>|cRXP_WARN_Falls ihr die Quest nicht schafft, macht euch keine Sorgen, da ihr sie später erneut bekommen könnt|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Betretet die Höhle der Frostmähnen
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Reist zu |cRXP_ENEMY_Grik'nir der Kalte|r drinnen
step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Tötet |cRXP_ENEMY_Grik'nir der Kalte|r drinnen. Plündert ihn für |cRXP_LOOT_Grelin Whitebeards Tagebuch|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #optional
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Verlasst die Höhle der Frostmähnen
    .subzoneskip 132
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    >>|cRXP_WARN_Falls ihr die Quest nicht geschafft habt, überspringt diesen Schritt|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter !Shaman
    #optional
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Brecht die Quest Lieferung des kochend heißen Morgengebräus ab. Ihr werdet sie bald erneut annehmen
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r und |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .goto 1426/0,567.14,-6363.06
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
    .isQuestAvailable 317

step << Mage
    #season 0,1
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r innerhalb
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab << Gnome
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Marryk Nurribit
step << Rogue
    #season 0,1
    .goto 1426/0,404.91,-6093.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Gebt die Quest Verschlüsseltes Memorandum ab << Gnome
    .turnin 3109 >> Gebt die Quest Verschlüsselte Rune ab << Dwarf
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .target Solm Hargrin
step << Priest
    #season 0,1
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 3110 >> Gebt die Quest Geheiligte Rune ab << Dwarf
    .turnin 98574 >> Gebt die Quest Geheiligtes Memorandum ab << Gnome
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Branstock Khalder
step << Warrior
    #season 0,1
    .goto 1426/0,382.11,-6084.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Gebt die Quest Einfache Rune ab << Dwarf
    .turnin 3112 >> Gebt die Quest Einfaches Memorandum ab << Gnome
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Thran Khorman
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >> Kehrt zu |cRXP_FRIENDLY_Teo Hammerstorm|r in Ambossar zurück
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94373 >>Gebt die Quest Ruf der Erde ab
    .accept 94374 >>Akzeptiert die Quest Ruf der Erde
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Akzeptiert die Quest Grund and Gozwin
step << !Paladin !Warlock !Hunter
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Verlasst Ambossar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Reist zu den Hügeln im Norden des Eisklammtals
step << !Paladin !Warlock !Hunter
    >>Tötet die |cRXP_ENEMY_Schneeleopardenpirscher|r
    >>Plündert |cRXP_PICK_Gozwins Mechanikerlogbuch|r auf dem Boden
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Shaman
    .isOnQuest 94374
    .goto 1426/0,582.100,-5907.800
    .cast 8202 >> |cRXP_WARN_Benutzt die|r |T134743:0|t[Erdsapta] |cRXP_WARN_beim |cRXP_PICK_Geisterstein|r, um die|r |cRXP_FRIENDLY_Schwache Erdmanifestation|r zu beschwören
    .use 6635
step << Shaman
    .goto 1426/0,576.500,-5908.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schwache Erdmanifestation::5891|r
    .target Minor Manifestation of Earth::5891
    .turnin 94374 >>Gebt die Quest Ruf der Erde ab
    .accept 94375 >>Akzeptiert die Quest Ruf der Erde
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >> Kehrt zu |cRXP_FRIENDLY_Teo Hammerstorm|r in Ambossar zurück
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94375 >>Gebt die Quest Ruf der Erde ab
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
    .target Nori Pridedrift
step << Dwarf Priest/Gnome Priest
    #optional
    .xp 4+1690 >> Farmt bis 1690+/2100 XP
step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .turnin 97277 >>Gebt die Quest Grund and Gozwin ab
step << Dwarf Priest/Gnome Priest
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >> Akzeptiert die Quest Dem Licht geneigt
    .target Branstock Khalder
step
    .goto 1426/0,152.900,-6235.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Thalos::1965|r
    .target Mountaineer Thalos::1965
    .turnin 282 >>Gebt Senirs Beobachtungen ab
    .accept 420 >>Akzeptiert die Quest Senirs Beobachtungen
    .accept 96628 >>Akzeptiert die Quest Der Abenteurer
step
    .goto 1426/0,135.100,-6248.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hands Springsprocket::6782|r
    .target Hands Springsprocket::6782
    .accept 2160 >>Akzeptiert die Quest Vorräte für Tannok
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Reist durch den Eisklamm Pass
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 5-11 Dun Morogh
#next 11-12 Elwynn (Zwerge/Gnome);11-12 Leerwandler-Quest;12-14 Loch Modan (Zwerge/Gnome);11-13 Loch Modan (Jäger)
#defaultfor Dwarf/Gnome

step
    #optional
    #label BoarMeatQuest
    #completewith SenirEnd
    >>Tötet |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Behaltet alle|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_die ihr für Vorräte für Jetsteam und dann zum Leveln eurer|r |T133971:0|t[Kochkunst] |cRXP_WARN_erhaltet|r
    >>|cRXP_WARN_Ihr braucht 10|r |T133971:0|t[Kochkunst] |cRXP_WARN_ später für eine Quest in Auberdine|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto 1426/0,-499.17,-5644.37
    .xp 5+1325 >> Reist nach Kharanos. Farmt bis 1325+/2800 XP durch das Töten von |cRXP_ENEMY_Klippeneber|r unterwegs << Priest
    .xp 5+1595 >> Reist nach Kharanos. Farmt bis 1595+/2800 XP durch das Töten von |cRXP_ENEMY_Klippeneber|r unterwegs << !Priest
    .subzoneskip 131
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
--xx 410 the adventurer
--xx 410 the great outdoors
step
    #hardcore
    #completewith next
    .goto 1426/0,-499.17,-5644.37
    .subzone 131 >> Lauf nach Kharanos
    .mob Crag Boar
step
    #softcore
    #completewith next
    >>|cRXP_WARN_Stellt sicher, dass eure zone nicht Eisklamm ist|r
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .target Eric Brighthammer::265813
    .turnin 96628 >>Gebt die Quest Die Abenteurerin ab
    .accept 96608 >>Akzeptiert die Quest Die große weite Welt
step
    .goto 1426/0,-498.400,-5648.400
    >>|cRXP_WARN_Tippt "/sitzen" in den Chat ein und wartet eine Minute lang am Lagerfeuer|r
    .complete 96608,1 -- /sit emote in chat 1/1
    .complete 96608,2 -- Gain boosted rest buff 1/1
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .target Eric Brighthammer::265813
    .turnin 96608 >>Gebt die Quest Die große weite Welt
    .accept 96629 >>Akzeptiert die Quest Grundlagen des Zeltens: Kochkunst
step
    #label SenirEnd
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .turnin 420 >>Gebt Senirs Beobachtungen ab
    .accept 98322 >>Akzeptiert die Quest Sichert den Pass
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Gimrizz Shadowcog
step << Warlock
    .goto 1426/0,-526.11,-5639.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor 6328 >> |cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Blutpakts (Rang 1)] |cRXP_BUY_wenn ihr es euch leisten könnt. Falls nicht, könnt ihr es später kaufen|r
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .accept 384 >> Akzeptiert die Quest Eberrippchen in Biersauce
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Betretet die Donnerbräus Metbrauerei
step
    .goto 1426/0,-523.35,-5590.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160,1 >> Gebt die Quest Vorräte für Tannok ab << Warrior/Rogue
    .turnin 2160,2 >> Gebt die Quest Vorräte für Tannok ab << !Warrior !Rogue
    .target Tannok Frosthammer
step
    .goto 1426/0,-529.600,-5590.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol::1226|r 
    .target Maxan Anvol::1226
    .accept 5625 >> Gewänder des Lichts annehmen << Priest
    .accept 99158 >>Akzeptiert die Quest Dämmerung in den Bergen
step << Priest
    .goto 1426/0,-453.81,-5668.73
    >>|cRXP_WARN_Wirkt|r |T135929:0|t[Geringes Heilen] (Rang 2) |cRXP_WARN_und dann|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_auf |cRXP_FRIENDLY_Gebirgsjäger Dolf|r draußen|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .turnin 5625 >> Gebt die Quest Gewänder des Lichts ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maxan Anvol
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magis Sparkmantle|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Magis Sparkmantle
step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azar Stronghammer|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Azar Stronghammer
step << Shaman
    .goto 1426/0,-541.500,-5582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ingrid Dunwald|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ingrid Dunwald
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr nicht 1 Silber habt oder ihn später machen wollt|r
    .target Gremlock Pilsnor::1699
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .turnin 96629 >>Gebt die Quest Grundlagen des Zeltens: Kochkunst ab
    .money <0.0100
step
    #optional
    .isQuestComplete 96629
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    .target Gremlock Pilsnor::1699
    .turnin 96629 >>Gebt die Quest Grundlagen des Zeltens: Kochkunst ab
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Hogral Bakkan
step << Rogue
    .goto 1426/0,-521.97,-5597.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +Legt |T135641:0|t[Ausbalancierte Wurfdolche] |cRXP_WARN_an|r
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Zerstört die |T135426:0|t [Kleinen Wurfmesser] aus den Taschen von Euch, da sie nicht mehr benötigt werden
step << Warrior
    .goto 1426/0,-530.40,-5605.63--c:Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Granis Swiftaxe|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Granis Swiftaxe
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
    .vendor >> |cRXP_BUY_Kaufe so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_wie ihr euch leisten könnt|r << Priest/Mage/Warlock
    .target Innkeeper Belm
    .bindlocation 2102
step
    .goto 1426/0,-464.45,-5573.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Akzeptiert die Quest Werkzeuge für Steelgrill
    .target Tharek Blackstone
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Betretet das Schmiedegebäude
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft eine|r |T132401:0|t[Große Axt]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft ein|r |T135641:0|t[Stilett]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft einen|r |T133053:0|t[Hölzerner Schlaghammer]
    .target Grawn Thromwyn
    .money <0.0631
    .goto 1426/0,-428.45,-5590.65--c:Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +Legt den |T133053:0|t[Hölzerner Schlaghammer] |cRXP_WARN_an|r
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    #requires DeleteOldDaggers << Rogue
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tognus Flintfire|r
    >>|cRXP_WARN_Das wird es dir ermöglichen|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_herzustellen, welcher den Nahkampfschaden von Euch um 2 erhöht|r << Warrior/Rogue
    >>|cRXP_WARN_Das wird dir ermöglichen|r |T135255:0|t[Rauer Gewichtsstein] |cRXP_WARN_herzustellen, die Nahkampfschäden von Euch um 2 erhöhen|r << Paladin
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Tognus Flintfire
step << Shaman
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft einen|r |T135145:0|t[Wanderstecken]
    .target Grawn Thromwyn
    .money <0.0479
    .collect 2495,1 --Walking Stick (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    #completewith next
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step
    .goto 1426/0,-431.000,-5582.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tognus Flintfire::1241|r 
    .target Tognus Flintfire::1241
    .accept 98321 >>Akzeptiert die Quest Flintfires Lieferung
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r und |cRXP_FRIENDLY_Pilot Stonegear|r
    >>|cRXP_WARN_Tötet keine |cRXP_ENEMY_Junger Schwarzbär|r auf dem weg|r
    .accept 317 >> Akzeptiert die Quest Vorräte für Jetsteam
    .goto 1426/0,-632.15,-5466.540
    .target +Pilot Bellowfiz
    .accept 313 >> Akzeptiert die Quest Der altgediente Bau
    .goto 1426/0,-641.80,-5473.18
    .target +Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beldin Steelgrill|r und |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
    .goto 1426/0,-682.23,-5488.94
    .target +Beldin Steelgrill
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
    .goto 1426/0,-664.55,-5499.710
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke]>>|cRXP_BUY_. Falls ihr es euch nicht leisten könnt, überspringt diesen Schritt|r
    .collect 2901,1 --Mining Pick (1)
    .goto 1426/0,-664.55,-5499.710
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto 1426/0,-660.91,-5528.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yarr Hammerstone|r innerhalb unten
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, überspringt diesen Schritt|r
    .train 2575 >>Erlerne |T134708:0|t[Bergbau]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith RumbleshotAmmo
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
    .usespell 2580
    .train 2575,3 --Mining
step
    #completewith RumbleshotAmmo
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r. Plündert sie für |cRXP_LOOT_Dickes Bärenfell|r
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Large Crag Boar
    .mob +Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Large Crag Boar
    .mob +Crag Boar
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjägerin Gretchen::271546|r 
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>Gebt die Quest Sichert den Pass ab
    .accept 98319 >>Akzeptiert die Quest Sichert den Pass
step
    #label RumbleshotAmmo
    .goto 1426/0,-371.400,-5746.900
    >>Öffnet die |cRXP_PICK_Munitionskiste|r. Plündert sie für |cRXP_LOOT_Munition für Rumbleshot|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    .goto 1426/0,-371.400,-5746.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjägerin Gretchen::271546|r 
    .target Mountaineer Gretchen::271546
    .turnin 98322 >>Gebt die Quest Sichert den Pass ab
    .accept 98319 >>Akzeptiert die Quest Sichert den Pass
step
    #completewith MountaineerCornelius
    >>Tötet alle |cRXP_ENEMY_Wendigos|r. Plündert sie für |cRXP_LOOT_Wendigomähne|r
    >>Sammelt |cRXP_PICK_Flintfires Lieferung|r vom Boden in dem altgedienten Bau
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment
step
    #completewith MountaineerCornelius
    .goto 1426/0,-275.000,-5623.200,20 >> BETRETET Die Bärenhöhle Höhle
step
    #label MountaineerCornelius
    .goto 1426/0,-221.800,-5516.300,20,0
    .goto 1426/0,-312.500,-5506.300
    >>Reist zur Leiche von |cRXP_FRIENDLY_Gebirgsjäger  Cornelius|r in der Bärenhöhle
    >>|cRXP_WARN_Vorsicht vor stärkeren |cRXP_ENEMY_Wendigos|r tiefer in der Höhle|r
    .complete 98319,1 --|Mountaineer Cornelius found
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    >>Tötet alle |cRXP_ENEMY_Wendigos|r. Plündert sie für |cRXP_LOOT_Wendigomähne|r
    >>Sammelt |cRXP_PICK_Flintfires Lieferung|r vom Boden in dem altgedienten Bau
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob +Wendigo
    .mob +Young Wendigo
    .complete 98321,1 --|8/8 Flintfire's Shipment
step
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .subzoneskip 136,1
step
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r oder |cRXP_ENEMY_Eisklauenbär|r. Plündert sie für |cRXP_LOOT_Dickes Bärenfell|r
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .mob +Young Black Bear
    .mob +Ice Claw Bears
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob +Large Crag Boar
    .mob +Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Large Crag Boar
    .mob +Crag Boar
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto 1426/0,-641.900,-5471.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear::1377|r
    .target Pilot Stonegear::1377
    .turnin 313 >>Gebt die Quest Der altgediente Bau
step
    .goto 1426/0,-632.100,-5466.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz::1378|r
    .target Pilot Bellowfiz::1378
    .turnin 317 >>Gebt die Quest Vorräte für Jetsteam ab
    .accept 318 >>Akzeptiert die Quest Immerschimmer
step
    .goto 1426/0,-429.700,-5582.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tognus Flintfire::1241|r
    .target Tognus Flintfire::1241
    .turnin 98321 >>Gebt die Quest Flintfires Lieferung ab
step
    #optional
    .xp 7 >> Farmt bis Stufe 7
step
    .goto 1426/0,-501.500,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard::1252|r 
    .target Senir Whitebeard::1252
    .accept 287 >>Akzeptiert die QuestHöhle der Frostmane
step
    #completewith BrewnallVillage
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjägerin Gretchen::271546|r
    .target Mountaineer Gretchen::271546
    .turnin 98319 >>Gebt die Quest Sichert den Pass ab
    .accept 98323 >>Akzeptiert die Quest Sichert den Pass
step
    #optional
    #completewith AfR
    .goto 1426,40.632,62.794,40,0
    .goto 1426/0,-201.51,-6015.520,15 >>Reist in Richtung |cRXP_FRIENDLY_Hegnar Rumbleshot|r
step << Hunter
    #optional
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    >>|cRXP_BUY_Kauft eine|r |T135611:0|t[Verschnörkelte Donnerbüchse]|cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, überspringt diesen Schritt|r
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #label AfR
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
    .target Hegnar Rumbleshot
step
    #optional
    #completewith next
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto 1426/0,99.17,-5572.99,20 >> Reist in Richtung |cRXP_FRIENDLY_Tundra MacGrann|r
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
    .target Tundra MacGrann
step
    #completewith next
    .goto 1426/0,302.27,-5387.58
    .subzone 137 >> Reist nach Bräuhall
step << !Mage !Priest !Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto 1426/0,302.27,-5387.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label BrewnallVillage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r und |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .turnin 318 >> Gebt die Quest Immerschimmer ab
    .accept 319 >> Akzeptiert die Quest Ein Gefallen für etwas Immerschimmer
    .accept 315 >> Akzeptiert die Quest Das perfekte Starkbier
    .goto 1426/0,315.23,-5378.42--c:Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Akzeptiert die Quest Bittere Rivalen
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step
    #sticky
    #label ForceFavorRibNo
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Tötet |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r und |cRXP_ENEMY_Schneeleopard|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestAvailable 384
step
    #sticky
    #label ForceFavorRibYes
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r, und |cRXP_ENEMY_Schneeleopard|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    #optional
    #requires ForceFavorRibNo
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires ForceFavorRibYes
--XXREQ Placeholder invis step until multiple requires per step
step
    .goto 1426/0,315.28,-5378.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .turnin 319 >> Gebt die Quest Ein Gefallen für etwas Immerschimmer ab
    .accept 320 >> Akzeptiert die Quest Rückkehr zu Bellowfiz
    .target Rejold Barleybrew
step
    #completewith Headhunters
    >>Tötet die |cRXP_ENEMY_Kopfjäger der Frostmane|r in der Höhle
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Lauft die Seite des Höhleneingangs hinauf. Springt in die Höhle der Frostmähnen
    .isOnQuest 287
step
    #label Headhunters
    .goto 1426/0,628.400,-5579.500,20,0
    .goto 1426/0,696.600,-5674.600,20,0
    .goto 1426/0,746.900,-5614.900,20,0
    .goto 1426/0,695.300,-5528.300,20,0
    .goto 1426/0,657.700,-5544.600
    >>|cRXP_WARN_BETRETET die Höhle der Frostmähnen. Bleibt auf der linken Seite, während ihr tiefer eindringt, um sie zu erforschen|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Tötet die |cRXP_ENEMY_Kopfjäger der Frostmane|r in der Höhle
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter

step
    #hardcore
    #completewith Distracting
    .goto 1426/0,-531.23,-5601.59
    .subzone 131 >> Kehrt nach Kharanos zurück
--XX if they don't somehow meet xp gate by Kharanos then wcyd

step
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .turnin 98323 >>Gebt die Quest Sichert den Pass ab
    .turnin 287 >>Gebt die Quest Höhle der Frostmähnen ab
step
    #optional
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_und ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_bei ihm|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto 1426/0,-551.03,-5598.40,6,0
    .goto 1426/0,-544.38,-5605.92,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jarven Donnerbräu|r unten
    .turnin 308 >> Gebt die Quest Jarvens Ablenkung ab
    .target Jarven Thunderbrew
step
    .goto 1426/0,-547.93,-5607.27
    >>Öffnet das |cRXP_PICK_Unbewachtes Fass mit Donnerbier|r
    .turnin 310 >> Gebt die Quest Bittere Rivalen ab
    .accept 311 >> Akzeptiert die Quest Rückkehr zu Marleth
step << Priest
    .goto 1426/0,-529.51,-5590.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .turnin 5625 >> Gebt die Quest Gewänder des Lichts ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maxan Anvol
step << Mage
    .goto 1426/0,-537.200,-5587.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magis Sparkmantle|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Magis Sparkmantle
step << Paladin
    .goto 1426/0,-542.100,-5586.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azar Stronghammer|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Azar Stronghammer
step << Shaman
    .goto 1426/0,-541.500,-5582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ingrid Dunwald|r innerhalb oben
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ingrid Dunwald
step << Rogue
    .goto 1426/0,-540.39,-5604.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Hogral Bakkan
step << Warrior
    .goto 1426/0,-530.40,-5605.63--c:Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Granis Swiftaxe|r innerhalb
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Granis Swiftaxe
step << Warlock
    .goto 1426/0,-528.87,-5640.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Gimrizz Shadowcog
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    .goto 1426/0,-504.05,-5596.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r außerhalb
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew

--Alternative path now for Hunters to hit 10 fast for pet quest
step << Hunter
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vater Gavin::1253|r
    .target Father Gavin::1253
    .turnin 99158 >>Gebt die Quest Dämmerung in den Bergen ab
step << Hunter
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step << Hunter
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_KLICKT HIER Falls ihr Schwierigkeiten habt|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .mob Vagash
step << Hunter
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step << Hunter
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für seinen |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_Lockt ihn zur Wache südlich der Ranch. Achtet darauf, dass ihr 51%+ Schaden an ihm verursacht|r
    >>|cRXP_WARN_Schaut das Video unten, bevor ihr versucht, |cRXP_ENEMY_Vagash|r zu töten. Es kann von jeder Klasse solo absolviert werden|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Klickt hier für eine Videoreferenz|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << Hunter
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senator Mehr Steingunst|r
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto 1426/0,-1580.000,-5714.700
    .target Senator Mehr Stonehallow
step << Hunter
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r in oder außerhalb der Mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Senator Mehr Steingunst|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target Senator Mehr Stonehallow
    .goto 1426/0,-1580.000,-5714.700
step << Hunter
    .goto 1426/0,-2197.02,-5279.07,45,0
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
step << Hunter
    .goto 1426/0,-2121.76,-5064.70
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step << Hunter
    .goto 1426/0,-2087.19,-5096.51
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .turnin 417 >> Gebt die Quest Pilotenrache ab
    .target Pilot Hammerfoot
step << Hunter
    #completewith ShimmerweedCollect
    .deathskip >> Sterbt bei einem der nahe gelegenen |cRXP_ENEMY_Vernarbter Klippeneber|r und respawnt beim |cRXP_FRIENDLY_Geistheiler|r
    .target Geistheiler
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto 1426/0,-463.66,-5474.00,10,0
    .goto 1426/0,-455.83,-5497.90
    .accept 412 >> Akzeptiert die Quest Operation Rekombobulationsgerät
step
    .isOnQuest 315
    #completewith ShimmerweedCollect
    #optional
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Reist den Berghang hinauf zum Schimmergrat
step
    #label ShimmerweedCollect
    .goto 1426/0,-212.24,-5364.43,60,0
    .goto 1426/0,-241.79,-5308.62,55,0
    .goto 1426/0,-153.14,-5190.42,50,0
    .goto 1426/0,-271.34,-5003.27,50,0
    .goto 1426/0,-153.14,-5190.42,50,0
    .goto 1426/0,-241.79,-5308.62,50,0
    .goto 1426/0,-212.24,-5364.43
    .goto 1426/0,-143.29,-5288.92,0
    .goto 1426/0,-241.79,-5059.08,0
    >>Tötet |cRXP_ENEMY_Seher der Frostmane|r. Plündert sie für |cRXP_LOOT_Schimmerkraut|r
    >>Öffnet die |cRXP_PICK_Schimmerkrautkorb|r auf dem Boden. Plündert sie für ihr |cRXP_LOOT_Schimmerkraut|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << !Mage !Warlock
    .goto 1426/0,-94.88,-5647.69
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    >>|cRXP_WARN_Wartet bis |cRXP_ENEMY_Eisbart der Alte|r aus der Höhle patrouilliert. Sobald er aus der Höhle patrouilliert, könnt ihr hineingehen und|r |cRXP_PICK_MacGranns Fleisch-Spind|r plündern
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto 1426/0,-94.88,-5647.69
    >>|cRXP_WARN_Wirkt|r |T136071:0|t[Verwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Eisbart der Alte|r << Mage
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] |cRXP_WARN_auf|r |cRXP_ENEMY_Eisbart der Alte|r << Warlock
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
    .target Tundra MacGrann
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r und |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .turnin 315 >> Gebt die Quest Das perfekte Starkbier ab
    .accept 413 >> Akzeptiert die Quest Schimmerstarkbier
    .goto 1426/0,315.28,-5378.39
    .target +Rejold Barleybrew
    .turnin 311 >> Gebt die Quest Rückkehr zu Marleth ab
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step << Hunter
    #loop
    .goto 1426/0,462.48,-5288.92,60,0
    .goto 1426/0,580.68,-5167.43,60,0
    .goto 1426/0,541.28,-5302.05,60,0
    .goto 1426/0,605.31,-5321.75,60,0
    .goto 1426/0,551.13,-5367.72,60,0
    .goto 1426/0,570.83,-5305.330,60,0
    >>Tötet |cRXP_ENEMY_Lepragnom|r. Plündert sie für |cRXP_LOOT_Gyromechanische Getriebeteile|r und |cRXP_LOOT_Restabilisationszahnrad|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step << Hunter
    .xp 10-1720 >> Farmt bis ihr noch 1720 XP bis Stufe 10 braucht
    .isQuestAvailable 320
step << Hunter
    #optional
    .xp 10-2040 >> Farmt bis ihr noch 2040 XP bis Stufe 10 braucht
    .isQuestTurnedIn 320
step << !Hunter
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 8+4525 >> Farmt bis 4525+/5400 XP
    .isQuestAvailable 320
step << !Hunter
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 9 >> Farmt bis Stufe 9
step
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .subzoneskip 2102
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .target Senir Whitebeard::1252
    .accept 291 >>Akzeptiert die Quest Die Berichte
step
    .goto 1426/0,-632.15,-5466.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .turnin 320 >> Gebt die Quest Rückkehr zu Bellowfiz ab
    .target Pilot Bellowfiz
step << Hunter
    .goto 1426/0,-463.66,-5474.00,8,0
    .goto 1426/0,-455.83,-5497.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .turnin 412 >> Gebt die Quest Operation Rekombobulationsgerät ab
step << Hunter
    #optional
    .xp 10 >> Farmt bis Stufe 10
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Akzeptiert die Quest Die Zähmung der Bestie
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Hunter
    .goto 1426/0,-576.69,-5745.30--c:Dun Morogh,48.3,56.9
    .use 15911 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Großen Klippeneber|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Gebt die Quest Die Zähmung der Bestie ab
    .target Grif Wildheart
    .accept 6084 >>Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    .goto 1426/0,-630.87,-5827.38--c:Dun Morogh,49.4,59.4
    .use 15913 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Schneeleoparden|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Gebt die Quest Die Zähmung der Bestie ab
    .target Grif Wildheart
    .accept 6085 >>Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    .goto 1426/0,-680.12,-5837.23--c:Dun Morogh,50.4,59.7
    .use 15908 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Eisklauenbär|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto 1426/0,-454.06,-5618.53--c:Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Gebt die Quest Die Zähmung der Bestie ab
    .target Grif Wildheart
    .accept 6086 >>Akzeptiert die Quest Die Ausbildung des Tiers
step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beldin Steelgrill::1376|r 
    .target Beldin Steelgrill::1376
    .accept 96408 >>Akzeptiert die Quest Ein Besucher in Dun Morogh
step << Warrior
    #optional
    #completewith WarriorThrown
    +|cRXP_WARN_Farmt, bis ihr 10s30c Wert an Verkaufswaren habt|r
    .money >0.1030
step << Warrior
    #completewith WarriorThrown
    .goto 1426/0,-541.23,-5242.29,40,0--c:Dun Morogh,47.58,41.58
    .goto 1426/0,-669.77,-5216.35,20,0--c:Dun Morogh,50.19,40.79
    .goto 1455/0,-831.39,-5028.78,40 >> Lauf nach Ironforge--c:Ironforge,14.90,87.10
step << Warrior
    #label WarriorThrown
    .goto 1455/0,-1205.65,-5042.12--c:Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r oder |cRXP_FRIENDLY_Buliwyf Stonehand|r
    .trainer >> Falls ihr in einer Gruppe seid oder jemanden habt, der euch hilft, |cRXP_ENEMY_Vagash|r jetzt zu töten, trainiert Zweihand-Streitkolben von |cRXP_FRIENDLY_Buliwyf Steinhand|r, ansonsonsten trainiert Wurfwaffen von |cRXP_FRIENDLY_Bixi Wobbelbonk|r. Falls ihr nicht sicher seid, trainiert einfach Wurfwaffen
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch] |cRXP_BUY_von ihr|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +Legt |T135641:0|t[Ausbalancierte Wurfdolche] |cRXP_WARN_an|r
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    .goto 1426,53.47,35.02
    >>Verlasst Eisenschmiede. Kehrt zurück nach Dun Morogh
    .zone Dun Morogh >> Reist nach Dun Morogh
    .zoneskip Ironforge,1
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Tötet |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Das wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später zu leveln|r
    >>|cRXP_WARN_Ihr braucht 10|r |T133971:0|t[Kochkunst] |cRXP_WARN_ später für eine Quest in Auberdine|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Tötet |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Das wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später zu leveln|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_WARN_Macht euch jetzt nicht unnötig die Mühe, dies zu farmen. Tötet und plündert einfach alle Wildschweine, an denen du vorbei kommst|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << !Hunter
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vater Gavin::1253|r
    .target Father Gavin::1253
    .turnin 99158 >>Gebt die Quest Dämmerung in den Bergen ab
step << !Hunter
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step << !Hunter
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_KLICKT HIER Falls ihr Schwierigkeiten habt|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .mob Vagash
step << !Hunter
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step << !Hunter
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für seinen |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_Lockt ihn zur Wache südlich der Ranch. Achtet darauf, dass ihr 51%+ Schaden an ihm verursacht|r
    >>|cRXP_WARN_Schaut das Video unten, bevor ihr versucht, |cRXP_ENEMY_Vagash|r zu töten. Es kann von jeder Klasse solo absolviert werden|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Klickt hier für eine Videoreferenz|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step << !Hunter
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Macht euch jetzt nicht unnötig die Mühe, dies zu farmen. Tötet und plündert einfach alle Wildschweine, an denen du vorbei kommst|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    .turnin 96408 >> Gebt die Quest Ein Besucher in Dun Morogh ab
    .accept 96392 >> Akzeptiert die Quest Farsens Wacht
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Sprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r, um seine Fernsicht anzusehen
    >>|cRXP_WARN_Ihr könnt die Fernsicht abbrechen, sobald das Ziel abgeschlossen ist|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Drückt ESC, um die Fernsicht abzubrechen|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    >>|cRXP_WARN_Ihr könnt die Fernsicht abbrechen, sobald das Ziel abgeschlossen ist|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    >>|cRXP_WARN_Drückt ESC, um die Fernsicht abzubrechen|r
    .turnin 96392 >> Gebt die Quest Farsens Wacht ab
    .accept 96390 >> Akzeptiert die Quest Erstickt sie im Keim
    .target Earthseer Farsen
step
    #optional
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step
    #optional
    #completewith next
    .goto 1426/0,-1565.58,-5666.24,60 >> Lauf zum Gol'Bolar Steinbruch
    .subzoneskip 134
step
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step << !Hunter
    #optional
    #completewith next
    .goto 1426/0,-1576.47,-5673.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Kauft bis zu 10|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_bei ihm, falls benötigt|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Kauft bis zu 5|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_bei ihm, falls benötigt|r << !Warrior !Rogue !Shaman
    .vendor 1237 >> |cRXP_BUY_Kauft bis zu 10|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm falls benötigt|r << Shaman
    .target Kazan Mogosh
--XX Mud slappers instead
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r und |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.96,-5714.73
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r in oder außerhalb der Mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Betretet die Steinbruch Gol'Bolar Mine
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Tötet |cRXP_ENEMY_Knochenknacker der Felsenkiefer|r in der Mine
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r und |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .goto 1426/0,-1579.96,-5714.73
    .target +Foreman Stonebrow  
step
    #optional
    #label BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Vernarbter Klippeneber|r und |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh3
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Vernarbter Klippeneber|r und |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Macht euch jetzt nicht unnötig die Mühe, dies zu farmen. Tötet und plündert einfach alle Wildschweine, an denen du vorbei kommst|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith OII
    >>Tötet |cRXP_ENEMY_Wegelagerer der Felsenkiefer|r. Plündert sie für |T132621:0|t[|cRXP_LOOT_Leeres Pulverfass|r]
    .use 268548 >> |cRXP_WARN_Benutzt das|r |T132621:0|t[|cRXP_LOOT_Leeres Pulverfass|r] |cRXP_WARN_um die Quest zu starten|r
    >>|cRXP_WARN_HINWEIS: Dieser Gegenstand hat eine niedrige Droprate. Überspringt diesen Schritt, wenn ihr ihn nicht findet, bis ihr mit den|r Spione der Dunkeleisenzwerge|cRXP_ENEMY_ fertig seid|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >> Akzeptiert die Quest Gestohlenes Sprengpulver
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Tötet |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |T237385:0|t[|cRXP_LOOT_Dunkeleisenkarte |r]
    .use 274268 >>|cRXP_WARN_Benutzt|r |T237385:0|t[|cRXP_LOOT_Dunkeleisenkarte|r] |cRXP_WARN_um die Quest zu starten|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Akzeptiert die Quest Karte des Untergrunds
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    .turnin 96390 >> Gebt die Quest Erstickt sie im Keim ab
    .turnin 96391 >> Gebt die Quest Karte des Untergrunds ab
    .accept 96393 >> Akzeptiert die Quest Eindringlinge in der Altstadt von Ironforge
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Steinbruchmeister Thesten|r
    .turnin 95213 >> Gebt die Quest Gestohlenes Sprengpulver ab
    .accept 95214 >> Akzeptiert die Quest Gestohlenes Sprengpulver
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Steinbruchmeister Thesten|r
    .accept 95214 >> Akzeptiert die Quest Gestohlenes Sprengpulver
    .target Quarrymaster Thesten
step
    .isOnQuest 95214
    #loop
    .goto 1426/0,-1881.82,-5735.45,50,0
    .goto 1426/0,-1832.57,-5571.28,50,0
    .goto 1426/0,-1724.22,-5636.95,50,0
    .goto 1426/0,-1881.82,-5735.45,0
    .goto 1426/0,-1832.57,-5571.28,0
    .goto 1426/0,-1724.22,-5636.95,0
    >>Tötet |cRXP_ENEMY_Wegelagerer der Felsenkiefer|r. Plündert sie für |cRXP_LOOT_Gestohlenes Sprengpulver|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Steinbruchmeister Thesten|r
    .turnin 95214 >> Gebt die Quest Gestohlenes Sprengpulver ab
    .target Quarrymaster Thesten
step
    #completewith next
    .goto 1426/0,-2165.600,-5609.000,70,0
    .goto 1426/0,-2262.200,-5622.700,20,0
    .goto 1426/0,-2350.700,-5558.700,20 >> Reist zu |cRXP_FRIENDLY_Gebirgsjäger Gerstenbräu|r am Südtorpass
step
    .goto 1426/0,-2447.11,-5479.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .turnin 413 >> Gebt die Quest Schimmerstarkbier ab
    .accept 414 >> Akzeptiert die Quest Starkbier für Kadrell
    .target Mountaineer Barleybrew
step
    #optional
    #label LochEnter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >> Reist durch den Südtorpass nach Loch Modan
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Bunker
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss
step
    #optional
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >> Reist nach Thelsamar
    .isOnQuest 414
step
    #completewith HonorStudents << Dwarf/Gnome
    #completewith ThelsaHS << !Dwarf !Gnome
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .turnin 414 >> Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    #optional
    #completewith ThelsaHS
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> BETRETET den Gasthof zum Starkbierlager
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r innerhalb
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
    .target Vidra Hearthstove
    .xp >14,1
--XX Skip if 14+
step << !Hunter
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihr|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, wenn nötig|r << !Rogue
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #label ThelsaHS
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Hearthstove|r innerhalb
    .home >> Setzt euren Ruhestein nach Thelsamar
    .target Innkeeper Hearthstove
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10 >> Verlasst den Gasthof zum Starkbierlager
step << Hunter
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grenhild Darktalon|r
    .accept 86667 >> Akzeptiert die Quest Eingeschneit
    .target Grenhild Darktalon
step << Dwarf/Gnome
    #label HonorStudents
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Akzeptiert die Quest Ehrenstudenten
    .target Brock Stoneseeker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .turnin 414 >> Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    #optional
    #label BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Das wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später zu leveln|r
    >>|cRXP_WARN_Ihr braucht 10|r |T133971:0|t[Kochkunst] |cRXP_WARN_ später für eine Quest in Auberdine|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch1
    #completewith Algaz
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Das wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später zu leveln|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_WARN_Macht euch jetzt nicht unnötig die Mühe, dies zu farmen. Tötet und plündert einfach alle Wildschweine, an denen du vorbei kommst|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith Algaz
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Behaltet alle|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zum späteren Leveln von |T133971:0|t[Kochkunst] |cRXP_WARN_|r
    >>|cRXP_WARN_Macht euch nicht extra auf den Weg, um das jetzt abzuschließen. Ihr kommt bald nach Loch Modan zurück|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Reist nach Station Algaz
step
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    #label Stormpike1
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r im Bunker
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    .target Mountaineer Stormpike
step << !Hunter
    #completewith next
    .goto 1432/0,-2503.500,-4815.300,15,0
    .goto 1426/0,-2353.100,-4897.100,15 >> Reist zu |cRXP_FRIENDLY_Pilot Hammerfoot|r durch den Nordtorpass
step << !Hunter
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
step << !Hunter
    .goto 1426/0,-2121.76,-5064.70
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step << !Hunter
    .goto 1426/0,-2087.19,-5096.51
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << !Hunter
    #xprate <1.49 << Rogue
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    >>|cRXP_WARN_Wählt den|r |T135641:0|t[Handwerkerdolch] |cRXP_WARN_. Sichert ihn für später|r << Rogue
    .turnin 417 >> Gebt die Quest Pilotenrache ab << !Rogue
    .turnin 417,1 >> Gebt die Quest Pilotenrache ab << Rogue
    .target Pilot Hammerfoot
step << !Hunter
    #completewith flyIF
    .hs >> Benutzt euren Ruhestein nach Thelsamar
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Hunter
    #completewith flyIF
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 2101 -- stoutlager inn
    .subzoneskip 144 -- thelsamar
    .target Geistheiler
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r innerhalb
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
    .isQuestComplete 418
step << Dwarf/Gnome
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Gebt die Quest Ehrenstudenten ab
    .accept 6391 >> Akzeptiert die Quest Flug nach Eisenschmiede
    .target Thorgrum Borrelson
step
    #label flyIF
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,56.714,41.945,20,0
    .goto 1455,55.748,38.127,20,0
    .goto 1455,51.569,29.956,15,0
    .goto 1455,49.645,28.195,12,0
    .goto 1455/0,-1120.93,-4708.06,10 >>Reist zu |cRXP_FRIENDLY_Golnir Bouldertoe|r im Gebäude
step << Dwarf/Gnome
    .goto 1455/0,-1120.93,-4708.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Golnir Bouldertoe|r innerhalb
    .turnin 6391 >> Gebt die Quest Fahrt nach Eisenschmiede ab
    .accept 6388 >> Akzeptiert die Quest Gryth Thurden
    .target Golnir Bouldertoe
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eldrun Stormbreaker|r 
    .target Eldrun Stormbreaker::258098
    .accept 94449 >>Akzeptiert die Quest Ruf des Feuers
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto 1455/0,-1026.28,-4872.56,12 >>Reisenzu |cRXP_FRIENDLY_Senator Barin Redstone|r--c:Ironforge,39.550,57.490
step
    .goto 1455/0,-1026.28,-4872.56--c:Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Gebt die Quest Die Berichte ab
    .target Senator Barin Redstone
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Fliegt nicht irgendwohin|r
    .turnin 6388 >> Gebt die Quest Gryth Thurden ab
    .accept 6392 >> Akzeptiert die Quest Rückkehr zu Brock
    .target Gryth Thurden
step << Shaman
    .goto 1455/0,-1208.100,-5037.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kelomir Ironhand|r
    >>|cRXP_BUY_Kauft einen|r |T135154:0|t[Hirtenstab]
    .collect 854,1 --Collect Quarter Staff (1)
    .money <0.2871
    .target Kelomir Ironhand
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith DRT
    .equip 16,854 >> Rüstet |T135154:0|tden|cRXP_WARN_ [Hirtenstab]|r aus
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto 1455/0,-1197.200,-5041.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Buliwyf Stonehand|r und |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .trainer >> Erlernt beliebige Waffenfähigkeiten mit eurem übrigen Geld
    .target Buliwyf Stonehand
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r und |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Trainiert Wurfwaffen und 2H-Streitkolben wenn ihr das nicht schon vorher getan habt
    .train 2567 >> Erlernt Wurfwaffen
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >> Erlernen 2h Streitkolben
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft|r |T135641:0|t[Ausbalancierter Wurfdolch] |cRXP_BUY_von ihr|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith DRT
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith DRT
    +Legt |T135641:0|t[Ausbalancierte Wurfdolche] |cRXP_WARN_an|r
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto 1455/0,-1273.83,-5022.08,15 >>Reisen zu |cRXP_FRIENDLY_Belia Thundergranite|r
step << Hunter
    .goto 1455/0,-1273.83,-5022.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belia Donnerstein|r
    .turnin 6086 >> Gebt die Quest Die Ausbildung des Tiers ab
    .trainer >> Erlernt eure Begleiterfähigkeiten
    .target Belia Thundergranite
step << Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belia Donnerstein|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Regnus Thundergranite
step << Dawrf Priest
    .goto 1455/0,-897.200,-4607.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriester Rohan|r  
    .turnin 5639 >> Gebt die Quest Verzweifeltes Gebet ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target High Priest Rohan
step << Priest/Mage/Warlock
    #ah
    #label OilWandFood
    #completewith AHCheck
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|cRXP_WARN_Kauft Folgendes, wenn ihr es euch leisten könnt:|r
    >>|T134711:0|t[Schwaches Zauberöl] |cRXP_WARN_und|r |T133906:0|t[Geräucherter Weisenfisch]
    >>|cRXP_WARN_Sucht auch nach hohem DPS|r |T132317:0|t[Zauberstab] |cRXP_WARN_-Verbesserungen, die ihr jetzt/bald nutzen könnt|r
    >>|cRXP_WARN_Diese bieten einen hohen DPS-Anstieg in frühen Leveln. Falls ihr das nicht tun möchtet oder nicht könnt, überspringt diesen Schritt|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
    #ah
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für einen schnelleren Abschluss in Loch Modan in Kürze und um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_zu leveln:|r
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    >>|T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #label AHCheck
    #ah
    #optional
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für einen schnelleren Abschluss in Loch Modan in Kürze:|r
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #requires OilWandFood
step << Dwarf Paladin
    .goto 1455/0,-856.69,-4841.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Feuerbräu|r
    .home >> Setzt euren Ruhestein in Eisenschmiede
    .target Innkeeper Firebrew
    .bindlocation 1537
step << Hunter
    .hs >> Benutzt euren Ruhestein nach Thelsamar
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step << Hunter
    #optional
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Fliegt nach Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
step << !Hunter
    #label DRT
    #completewith TramEnd
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Betretet die Tiefenbahn
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform in der Tiefenbahn
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
step << !Hunter
    >>Benutzt |T133942:0|t[Rattenfänger-Flöte] auf |cRXP_FRIENDLY_Tiefenbahn-Ratten|r in der Tiefenbahn
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform in der Tiefenbahn
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .timer 11,Tiefenbahn-Ratteten-Razzia RP
    .accept 6662 >> Akzeptiert die Quest Mein Bruder Nipsy...
    .target Monty
step << !Hunter skip
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_Auf der Tiefenbahn, wenn sie ankommt:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_Auf der Tiefenbahn, wenn sie ankommt:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_Auf der Tiefenbahn, wenn sie ankommt:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter skip
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_die folgenden Gegenstände:|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter skip
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter skip
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #label TramEnd
    >>|cRXP_WARN_Nehmt die Tiefenbahn in Richtung Sturmwind|r
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf, während ihr auf die Tiefenbahn nach Sturmwind wartet, falls nötig|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nipsy|r auf der mittleren Plattform auf der Sturmwind Seite der Tiefenbahn
    .turnin 6662 >> Gebt die Quest Mein Bruder Nipsy... ab
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step << !Hunter
    #optional
    #completewith Order
    .abandon 6662 >> Brecht die Quest Mein Bruder Nipsy... ab
step << !Hunter
    #optional
    #completewith Order
    .zone Stormwind City >> Betretet Sturmwind
    .isOnQuest 1338
step << !Hunter
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
    .target Grimand Elmore
step << !Hunter
    #label Order
    .goto 1453/0,600.07,-8427.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
    .target Furen Longbeard
step << Warrior
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,325.68,-8688.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ilsa Corbin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1638 >> Akzeptiert die Quest Die Ausbildung eines Kriegers
    .target Ilsa Corbin
step << Warrior
    #optional
    #completewith next
    .goto 1453/0,401.29,-8741.21,17,0
    .goto 1453/0,417.13,-8636.5,12 >> Betretet die Taverne
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .turnin 1638 >> Gebt die Quest Die Ausbildung eines Kriegers ab
    .accept 1639 >> Akzeptiert die Quest Bartleby der Trunkenbold
    .target Harry Burlguard
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Gebt die Quest Bartleby der Trunkenbold ab
    .accept 1640 >> Akzeptiert die Quest Besiegt Bartleby
    .target Bartleby
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>Besiegt |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >> Gebt die Quest Besiegt Bartleby ab
    .accept 1665 >> Akzeptiert die Quest Bartlebys Becher
    .target Bartleby
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .turnin 1665 >> Gebt die Quest Bartlebys Becher ab
    .target Harry Burlguard
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1688 >> Akzeptiert die Quest Surena Caledon
    .target Gakin the Darkbinder
step << !Hunter
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Erlernt 1h Schwerter << Rogue/Mage
    .trainer >>Erlernt Stäbe << Priest/Hunter
    .trainer >>Erlerne 1h Schwerter und Stäbe << Warlock
    .trainer >>Erlernt 2h Schwerter << Warrior/Paladin
    .target Woo Ping
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Sorgt dafür, dass ihr 10s für späteres Training spart|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.1922
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    >>|cRXP_WARN_Sorgt dafür, dass ihr 10s für späteres Training spart|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .money <0.1922
step << Rogue
    #optional
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
]])

RXPGuides.RegisterGuide([[
#xprate <1.5
#forever
#season 0,1
<< Alliance !Hunter
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 11-12 Elwynn (Zwerge/Gnome)
#version 1
#defaultfor Gnome/Dwarf
#next 12-14 Loch Modan (Zwerge/Gnome)
--#era << !Warlock

step << Warlock
    #softcore
    #optional
    #completewith next
    +|cRXP_WARN_Wirkt|r |T136126:0|t[Aderlass] |cRXP_WARN_wiederholt bis ihr 10 Prozent Gesundheit habt, während ihr auf dem Weg zu|r |cRXP_FRIENDLY_Dungar Longdrink|r
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind
    .target Dungar Longdrink
step << Warlock
    #softcore
    #optional
    #completewith next
    >>|cRXP_WARN_Wirkt|r |T136126:0|t[Aderlass] |cRXP_WARN_wiederholt, bis ihr unter 10% Gesundheit habt, dann springt neben dem Flugmeister von der Klippe (NICHT ins Wasser) und sterbt absichtlich|r
    .deathskip >> Respawnt beim Geistheiler
    .target Geistheiler
step
    #optional
    #completewith next
    .subzone 87 >> Lauf nach Goldhain
step << skip
    .goto 1429/0,73.95,-9465.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .accept 62 >> Die Fargodeep Mine annehmen
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto 1429/0,31.92,-9460.38
    .accept 60 >> Koboldkerzen annehmen
step << Mage/Rogue
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Geht im Gasthaus nach oben
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Priorisiert das lernen von|r |T132147:0|t[Beidhändigkeit]
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .target Remy "Two Times"
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    .accept 40 >> Gefahr aus dem Wasser annehmen
    --.accept 47 >> Accept Gold Dust Exchange
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
step << Warlock
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 176 >> Akzeptiert die Quest Gesucht: "Hogger"
    .goto 1429/0,683.40,-9667.93
    .target Deputy Rainer
step << Warlock
    #completewith next
    >>|cRXP_WARN_Der |T134939:0|t[|cRXP_LOOT_Goldabholplan|r] ist ein sehr seltener Drop. Ignoriert diesen Schritt, wenn ihr ihn nicht bekommt|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_ein seltener Spawn, hat aber eine 100% Dropchance|r
    .use 1307 >>|cRXP_WARN_Benutzt den |T134939:0|t[|cRXP_LOOT_Goldabholplan|r] um die Quest zu starten|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Akzeptiert die Quest Der Sammler
    .unitscan Gruff Swiftbite
step << Warlock
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>Tötet |cRXP_ENEMY_Hogger|r. Plündert ihn für |cRXP_LOOT_Gewaltige Gnollklaue|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_kann an mehreren Orten erscheinen|r
    >>|cRXP_WARN_Wirkt |T136183:0|t[Furcht] |cRXP_WARN_auf |cRXP_ENEMY_Hogger|r kontinuierlich und benutzt von Euch reguläre DoTs, um ihn zu töten|r
    >>|cRXP_WARN_Diese Quest ist schwierig. Findet eine Gruppe für ihn, falls nötig. Überspringt diesen Schritt, wenn ihr keine Gruppe findet oder ihn solo nicht besiegen könnt|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .accept 88 >> Prinzessin muss sterben! annehmen
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483

--
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mutter Stonefield|r und |cRXP_FRIENDLY_"Tantchen" Bernice Stonefield|r
    .accept 85 >> Verlorene Halskette annehmen
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.67
    .accept 88 >> Prinzessin muss sterben! annehmen
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto 1429/0,38.41,-9923.69
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
    .accept 86 >> Kuchen für Billy annehmen
step << skip
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Die Mobs der Stufe 5 können während dieser Quest grau werden. Beendet sie trotzdem, da ihr diese Quest abschließen müsst, um die Fortsetzung freizuschalten|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    .goto 1429/0,193.00,-9832.40,50,0
    .goto 1429/0,129.73,-9844.49
    >>|cRXP_WARN_Betretet und erforscht die Tiefenschachtmine|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step << skip
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Die Mobs der Stufe 5 können während dieser Quest grau werden. Beendet sie trotzdem, da ihr diese Quest abschließen müsst, um die Fortsetzung freizuschalten|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #softcore
    #completewith GoldshireTurnins
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step << skip
    #hardcore
    #completewith GoldshireTurnins
    .subzone 87 >> Lauf nach Goldhain
step << skip
    #hardcore
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    >>|cRXP_WARN_Verkauft|r |T133581:0|t[Tasche of Marbles] NICHT an einen Händler|cRXP_WARN_Dies ist ein unglaublich wervoller Gegenstand bis Level 60|r
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
    .target Remy "Two Times"
step << skip --Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >> Die Fargodeep Mine abgeben
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .turnin 176,3 >> Gebt die Quest Gesucht: "Hogger" ab
    .isQuestComplete 176
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto 1429/0,73.92,-9465.54
    .turnin 62 >> Die Fargodeep Mine abgeben
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
step << skip
    #label GoldshireTurnins
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto 1429/0,74.02,-9465.52
    .turnin 123 >> Gebt die Quest Der Sammler ab
    .isOnQuest 123
step << skip --Warlock
    .isQuestTurnedIn 123
    .goto 1429/0,74.02,-9465.52
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .accept 147 >> Akzeptiert die Quest Menschenjagd
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto 1429/0,31.92,-9460.38
    .turnin 60 >> Koboldkerzen abgeben
    .accept 61 >> Lieferung nach Sturmwind annehmen
step << skip
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    >>|cRXP_WARN_Verkauft|r |T133581:0|t[Tasche of Marbles] NICHT an einen Händler|cRXP_WARN_Dies ist ein unglaublich wervoller Gegenstand bis Level 60|r
    .target Remy "Two Times"
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
--

step
    #completewith next
    .goto 1429/0,-1032.06,-9610.23,30 >> Reist nach Osten zu |cRXP_FRIENDLY_Wache Thomas|r
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 35 >> Gebt die Quest Weitere Sorgen ab
    .accept 37 >> Akzeptiert die Quest Suche nach den vermissten Wachen
    .accept 52 >> Akzeptiert die Quest Grenzschutz
step
    #completewith BundleOT
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Klickt |cRXP_PICK_Ein halb aufgefressener Körper|r auf dem Boden
    .goto 1429/0,-986.35,-9336.06
    .turnin 37 >> Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >> Akzeptiert die Quest Rolfs Schicksal
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .target Supervisor Raelen
    .goto 1429/0,-1289.22,-9469.80
    .accept 5545 >> Ein Bündel Probleme annehmen
step
    #era
    #completewith next
    >>Plündert die |cRXP_LOOT_Kleinholzbündel|r vom Boden |cRXP_WARN_am Stamm der Bäume|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>Klickt auf |cRXP_PICK_Rolfs Leichnam|r auf dem Boden
    >>|cRXP_WARN_Passt auf, da in der Nähe |cRXP_ENEMY_Murlocs|r angreifen könnten, wenn ihr|r |cRXP_PICK_Rolfs Leichnam|r anklickt
    >>|cRXP_ENEMY_Murlocfutterwühler|r |cRXP_WARN_werden|r |T135915:0|t[Schwachen Trank trinken] |cRXP_WARN_wirken, was sie selbst für 61-68 heilt|r
    .turnin 45 >> Gebt die Quest Rolfs Schicksal ab
    .accept 71 >> Meldung bei Thomas annehmen
step
    #loop
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1230.14,-9150.34,40,0
    .goto 1429/0,-1271.10,-9147.10,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1232.92,-9251.950,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1249.58,-9362.13,40,0
    .goto 1429/0,-1285.33,-9365.14,40,0
    .goto 1429/0,-1296.09,-9389.44,40,0
    .goto 1429/0,-1338.09,-9331.11,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    .goto 1429/0,-1302.68,-9309.12,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>Plündert die |cRXP_LOOT_Kleinholzbündel|r vom Boden am Stamm der Bäume
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .target Supervisor Raelen
    .goto 1429/0,-1289.22,-9469.80
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
step
    #completewith WaterloggedToolbox
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ormin Pelford|r
    .accept 91733 >> Akzeptiert die Quest Flussabwärts
    .target Ormin Pelford
step
    >>Plündert die |cRXP_PICK_Durchnässte Säge|r auf dem Boden
    .complete 91733,2 -- Waterlogged Saw 1/1
    .goto 1429,74.3,76.4
step
    >>Plündert die |cRXP_PICK_Durchnässte Axt|r auf dem Boden
    .complete 91733,1 -- Waterlogged Axe 1/1
    .goto 1429,76.7,82.5
step
    #label WaterloggedToolbox
    >>Plündert den |cRXP_PICK_Durchnässter Werkzeugkasten|r auf dem Boden
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
step
    .goto 1429/0,-1119.800,-9931.300
    >>Tötet |cRXP_ENEMY_Croaky|r. Plündert ihn für |T134169:0|t[|cRXP_LOOT_Quakis Kopf|r]
    .use 247826 >> |cRXP_WARN_Benutzt|r |T134169:0|t[|cRXP_LOOT_Quakis Kopf|r] |cRXP_WARN_um die Quest zu starten|r
    >>|cRXP_WARN_Er ist ein Level-11-Elite. Überspringt diesen Schritt, wenn ihr ihn nicht töten könnt|r
    .collect 247826,1,91740,1 -- Croaky's Head (1)
    .accept 91740 >>Akzeptiert die Quest Quakis Kopf
    .mob Croaky
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step << Warlock
    .isOnQuest 147
    .goto 1429/0,-932.35,-9806.53
    >>Tötet |cRXP_ENEMY_Surena Caledon|r. Plündert sie für |cRXP_LOOT_Surenas Halsschmuck|r
    >>Tötet |cRXP_ENEMY_Morgan der Sammler|r. Plündert ihn für |cRXP_LOOT_Der Ring des Sammlers|r
    >>|cRXP_WARN_Fokussiert euch auf das sehr schnelle Töten von |cRXP_ENEMY_Surena Caledon|r |r
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] kontinuierlich auf|cRXP_WARN_auf |cRXP_ENEMY_Morgan der Sammler|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto 1429/0,-932.35,-9806.53
    >>Tötet |cRXP_ENEMY_Surena Caledon|r. Plündert sie für |cRXP_LOOT_Surenas Halsschmuck|r
    >>|cRXP_WARN_Fokussiert euch auf das sehr schnelle Töten von |cRXP_ENEMY_Surena Caledon|r |r
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] kontinuierlich auf|cRXP_WARN_auf |cRXP_ENEMY_Morgan der Sammler|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    .goto 1429/0,-869.87,-9768.10
    >>Tötet |cRXP_ENEMY_Prinzessin|r. Plündert sie für |cRXP_LOOT_Meesinghalsband|r
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird mit beiden ihrer |r |cRXP_ENEMY_Gefolgsschwein|r angreifen
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird auch eine|r |T132368:0|t[Sturmattacke] machen|cRXP_WARN_was viel Schaden verursacht|r
    >>|cRXP_WARN_Sammelt 100 Wut, bevor ihr gegen |rPrinzessin|cRXP_ENEMY_ kämpft|r << Warrior
    >>|cRXP_WARN_Stellt sicher, dass |T136205:0|t[Entrinnen] |cRXP_WARN_bereit ist. Wenn ihr Schwierigkeiten habt, könnt ihr den Zaun mit Wurfwaffen nutzen, um das pathing auszunutzen und Zeit zu gewinnen|r << Rogue
    >>|cRXP_WARN_Seid bereit, einen|r |T134830:0|t[Geringer Heiltrank] zu benutzen
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Klickt hier für eine Videoanleitung |r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
    .xp <9,1
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >> Gebt die Quest Flussabwärts ab
    .target Ormin Pelford
step
    #completewith next
    .subzone 798 >> Reist zum Spähturm der Sturmwindsoldaten
step
    .isOnQuest 91740
    .goto 1429/0,-1406.200,-9775.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Merell Ross::248277|r
    .target Merell Ross::248277
    .turnin 91740 >>Gebt die Quest Quakis Kopf ab
step
    #completewith next
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
step
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    >>|cRXP_WARN_Achtet unterwegs auf hochstufige mobs|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
step
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
step << skip
    .goto 1453/0,625.48,-8857.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Gebt die Quest Lieferung nach Sturmwind ab
    >>|cRXP_WARN_Wir wählen die|r |T132383:0|t[Explosiv Raketen] |cRXP_WARN_als Belohnung. Sie verursachen ordentlichen Schaden und können für "Split-Pulls" genutzt werden, was unglaublich nützlich ist|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Split-Pulling". Es ist ein kurzes Video und äußerst lehrreich|r
    .target Morgan Pestle
step
    #ah
    .goto 1453/0,660.28,-8814.55--c:Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft folgende Gegenstände für schnellere Abgaben in Westfall:|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T133972:0|t[Sehniges Geierfleisch]
    >>|T133884:0|t[Murlocauge]
    >>|T135997:0|t[Geiferzahnschnauze]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Geiferzahnleber]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .target Auctioneer Jaxon
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .turnin 1688 >> Gebt die Quest Surena Caledon ab
    .accept 1689 >> Die Bindung annehmen
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto 1453/0,1042.22,-9002.21,18,0
    .goto 1453/0,1069.1,-8991.45,18,0
    .goto 1453/0,1027.43,-8991.45,18,0
    .goto 1453/0,1042.83,-8972.68
    >>|cRXP_WARN_Reist zur untersten Ebene des Geschlachteten Lammes|r
    .cast 7728 >> |cRXP_WARN_Benutzt|r |T133292:0|t[Blutsteinhalsreif] |cRXP_WARN_um einen|r |cRXP_ENEMY_Beschworenen Leerwandler|r herbeizurufen
    .use 6928
step << Warlock
    .goto 1453/0,1042.83,-8972.68
    .use 6928 >> Tötet den |cRXP_ENEMY_Beschworenen Leerwandler|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #softcore
    #completewith next
    +|cRXP_WARN_Wirkt|r |T136126:0|t[Aderlass] |cRXP_WARN_auf eurem Weg zurück nach oben zu |cRXP_FRIENDLY_Gakin der Dunkelbinder|r da ihr in Kürze einen Deathskip machen werdet|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .target Gakin the Darkbinder
    .goto 1453/0,1041.54,-8983.29
    .turnin 1689 >> Gebt die Quest Die Bindung ab
step << Warlock
    #softcore
    .deathskip >> |cRXP_WARN_Sterbt und respawnt beim Geistheiler durch die Anwendung von|r |T136126:0|t[Aderlass] |cRXP_WARN_und steht auf dem Lagerfeuer daneben|r
    .target Geistheiler
step
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >> Verlasst Sturmwind. Reist nach Goldhain
step << Warlock
    #era
    .isOnQuest 147
    .goto 1429/0,74.02,-9465.52
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 147 >> Gebt die Quest Menschenjagd ab
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
step
    #era
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
    .target Marshal Dughan
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Josephine Carson|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Josephine Carson
    .xp <12,1
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
    .xp <12,1
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
    .xp <12,1
step << Mage/Priest/Rogue
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Geht im Gasthaus nach oben
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >> Trainiere deine Klassenfähigkeiten
    .xp <12,1
step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
	.target Priestess Josetta
    .trainer >> Trainiere deine Klassenfähigkeiten
    .xp <12,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Trainiere deine Klassenfähigkeiten
    .xp <12,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .target Ma Stonefield
    .turnin 88 >> Gebt die Quest Prinzessin muss sterben! ab
    .goto 1429/0,332.43,-9895.01--c:Elwynn Forest,34.660,84.483
step << Dwarf Paladin
    #loop
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für |T132889:0|t[Leinenstoff]
    >>|cRXP_WARN_Sorgt dafür, dass ihr 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eure bevorstehende Die Bruderschaft der Defias-Klassenquest habt|r
    .collect 2589,10,1648,1 -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    #completewith WestEntry
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >> Lauf nach Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bauer Brauenwirbel|r
    .target Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .accept 9 >> Akzeptiert die Quest Tod auf den Feldern
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .accept 38 >> Akzeptiert die Quest Westfalleintopf
    .accept 22 >> Akzeptiert die Quest Pastete aus Geiferzahnleber
step
    #optional
    .isQuestComplete 38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
step
    #optional
    .isQuestComplete 22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> Stirbt und spawnt beim Geistheiler wieder oder lauft zur Späherkuppe
    .target Geistheiler
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
    .target Thor
step << Dwarf Paladin
    .hs >> Ruhestein nach Eisenschmiede
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 1537,1
step << Dwarf Paladin
    #optional
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thor
    .zoneskip Ironforge
    .zoneskip Loch Modan
step << !Paladin
    .hs >> Benutzt euren Ruhestein nach Thelsamar
    >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r << !Warrior !Rogue
	>>|cRXP_BUY_Kauf Essen, falls du welches brauchst|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan
step << !Paladin
    #optional
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Loch Modan >> Fliegt nach Loch Modan
    .target Thor
    .zoneskip Ironforge
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance !Hunter
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 12-14 Loch Modan (Zwerge/Gnome)
#next 13-15 Westfall;14-16 Dunkelküste
#defaultfor Gnome/Dwarf

step -- dont delete
    #label LochStart
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto 1455/0,-896.47,-4601.65,12 >>Reist zu |cRXP_FRIENDLY_Brandur Ironhammer|r
step << Dwarf Paladin
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 2999 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Brandur Ironhammer
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Reist zu |cRXP_FRIENDLY_Tiza Battleforge|r oben
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tiza Battleforge|r oben
    .turnin 2999 >>Gebt die Quest Foliant der Offenbarung ab
    .accept 1645 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1645 >>Gebt die Quest Der Foliant der Offenbarung ab
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|cRXP_WARN_Benutzt |T133739:0|t[|cRXP_LOOT_Der Foliant der Offenbarung|r] um die Quest zu starten|r
    .accept 1646 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .use 6916
step << Dwarf Paladin
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tiza Battleforge|r oben
    .turnin 1646 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1647 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Tiza Battleforge
step << Dwarf Paladin
    #loop
    .line Ironforge,21.750,51.733,22.015,54.945,23.328,61.865,23.723,63.824,26.021,68.382,27.495,71.320,31.352,77.807,32.405,78.563,37.256,82.159,39.204,83.202,42.944,84.113
    .goto 1455,21.750,51.733,0
    .goto 1455,26.021,68.382,0
    .goto 1455,42.944,84.113,0
    .goto 1455,21.750,51.733,20,0
    .goto 1455,22.015,54.945,20,0
    .goto 1455,23.328,61.865,20,0
    .goto 1455,23.723,63.824,20,0
    .goto 1455,26.021,68.382,20,0
    .goto 1455,27.495,71.320,20,0
    .goto 1455,31.352,77.807,20,0
    .goto 1455,32.405,78.563,20,0
    .goto 1455,37.256,82.159,20,0
    .goto 1455,39.204,83.202,20,0
    .goto 1455,42.944,84.113,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrouilliert entlang des äußeren Rings von Eisenschmiede zwischen kurz hinter der Steinfeuertaverne und kurz hinter dem Besucherzentrum|r
    .turnin 1647 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1648 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1648 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1778 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .unitscan John Turner
step << Dwarf Paladin
    #optional
    #label Tiza1
    #completewith Tiza2
    .goto 1455,27.228,12.724,15,0
    .goto 1455,25.400,2.676,12 >> Geht zu der Treppe darunter zu |cRXP_FRIENDLY_Tiza Battleforge|r
step << Dwarf Paladin
    #optional
    #requires Tiza1
    #completewith Tiza2
    .goto 1455,25.400,2.676,10,0
    .goto 1455,23.621,2.544,10,0
    .goto 1455,22.014,4.533,10,0
    .goto 1455,21.831,7.651,10,0
    .goto 1455,23.766,11.636,10,0
    .goto 1455,27.622,12.177,12 >> Reist zu |cRXP_FRIENDLY_Tiza Battleforge|r oben
step << Dwarf Paladin
    #label Tiza2
    .goto 1455,27.622,12.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tiza Battleforge|r oben
    .turnin 1778 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1779 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.0300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muiredon Battleforge|r oben
    .turnin 1779 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1783 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Muiredon Battleforge
step << Paladin
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Fliegt nach Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Kauft|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von ihr, falls nötig|r
    .target Yanni Stoutheart
step << !Hunter
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Ofenglut|r
    .vendor 6734 >> |cRXP_BUY_Kauft einige|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_wenn nötig|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Kauft etwas|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihr, falls nötig|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grenhild Darktalon|r
    .accept 86667 >> Akzeptiert die Quest Eingeschneit
    .target Grenhild Darktalon
step
    #completewith next
    .goto 1432/0,-2619.200,-5783.300,20,0
    .goto 1432/0,-2534.38,-5648.28,5 >>Reist zum verschneiten Fleck auf dem Boden direkt außerhalb des Südtorpass-Tunnels
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >> Benutzt den |T1387609:0|t[Keramikkrug] |cRXP_WARN_während ihr auf dem verschneiten Fleck steht, um|r |T1387609:0|t[Krug mit Schnee] |cRXP_WARN_zu sammeln|r
    .complete 86667,1 -- Jar of Snow 1/1
step << Shaman
    #completewith shamfire
    #label southgate
    .goto 1432/0,-2521.900,-5631.000,20,0
    .goto 1426/0,-2437.600,-5549.700,20 >> Reist durch den Südtorpass
step << Shaman
    #completewith shamfire
    #requires southgate
    .goto 1426/0,-2473.100,-5418.600,25,0
    .goto 1426/0,-2542.400,-5401.400,25 >> Reist zu |cRXP_FRIENDLY_Bruegs Kindleborn|r in der Höhle oben auf dem Berg
step << Shaman
    #label shamfire
    .goto 1426/0,-2510.100,-5310.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruegs Kindleborn::257597|r
    .target Bruegs Kindleborn::257597
    .turnin 94449 >>Gebt die Quest Ruf des Feuers ab
    .accept 94465 >>Akzeptiert die Quest Ruf des Feuers
step << Shaman
    .isOnQuest 94465
    .goto 1426/0,-2594.100,-5335.900,20,0
    .goto 1432/0,-2641.000,-5375.700,20 >> Springt vorsichtig den Berg hinunter nach Loch Modan
step << Shaman
    #completewith next
    .goto 1432/0,-2915.500,-5576.500,20,0
    .goto 1432/0,-2874.500,-5608.600,20,0
    .goto 1432/0,-2846.100,-5657.600,15 >> Reist den Bergpfad hinauf zu |cRXP_FRIENDLY_Braldir Ashmantle::257808|r
step << Shaman
    .goto 1432/0,-2880.900,-5701.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Braldir Ashmantle::257808|r
    .target Braldir Ashmantle::257808
    .turnin 94465 >>Gebt die Quest Ruf des Feuers ab
    .accept 94466 >>Akzeptiert die Quest Ruf des Feuers
step
    #optional
    #label BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch3
    #completewith SilverMine
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Macht euch jetzt nicht unnötig die Mühe, dies zu farmen. Tötet und plündert einfach alle Wildschweine, an denen du vorbei kommst|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith SilverMine
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_10-Minuten-Timer um die Quest abzugeben!|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Norric Lochthane|r
    >>Stellt sicher, dass ihr dies abgebt, bevor die 10-Minuten-Frist des |T1387609:0|t[Krug mit Schnee] |cRXP_WARN_abläuft|r
    .turnin 86667 >> Gebt die Quest Eingeschneit ab
    .target Norric Lochthane
step << Shaman
    #loop
    .goto 1432/0,-3287.400,-4868.000,45,0
    .goto 1432/0,-3397.500,-4870.800,45,0
    .goto 1432/0,-3337.300,-4998.400,45,0
    >>Tötet |cRXP_ENEMY_Seher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Reagenzienbeutel|r
    .complete 94466,2 --|1/1 Reagent Pouch
    .mob Stonesplinter Seer
step
    #completewith Gear
    #optional
    #loop
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .waypoint 1432/0,-3033.92,-4797.29,50,0
    .waypoint 1432/0,-2972.41,-4796.92,50,0
    .waypoint 1432/0,-2684.71,-5042.87,50,0
    .waypoint 1432/0,-2712.57,-5286.61,50,0
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    >>Tötet |cRXP_ENEMY_Geomant der Tunnelratten|r. Plündert sie für |cRXP_LOOT_Feuerteer|r << Shaman 
    >>|cRXP_ENEMY_Geomant der Tunnelratten|r |cRXP_WARN_sind nur in der Mine zu finden|r << Shaman
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
    .complete 94466,1 -- Fire Tar (1)
    .mob +Tunnel Rat Geomancer
step
    #optional
    #label SilverMine
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >> Betretet die Silberbachmine
step << Paladin/Warrior/Priest/Mage
    #xprate >1.49 << Mage
    #season 2 << Priest/Mage
    .goto 1432/0,-2984.82,-4902.33
    >>Öffnet die |cRXP_PICK_Kisten der Minenarbeiterliga|r in der Mine. Sammelt sie ein für die |cRXP_LOOT_Minenarbeiterausstattung|r
    .complete 307,1 --Miners' Gear (4)
step << !Paladin !Warrior
    #season 0,1 << Priest/Mage
    #label Gear
    .goto 1432/0,-2984.82,-4902.33
    >>Öffnet die |cRXP_PICK_Kisten der Minenarbeiterliga|r in der Mine. Sammelt sie ein für die |cRXP_LOOT_Minenarbeiterausstattung|r
    .complete 307,1 --Miners' Gear (4)
--XX Gear label location changes depending on Paladin/Warrior vendor, Priest SoD rune, Mage SoD 1.5x+ Runes
step << Paladin/Warrior
    #ssf
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Kauft den|r |T133476:0|t[Schwerer Stachelkolben] |cRXP_BUY_ODER den|r |T133053:0|t[Eisenholzschlägel] |cRXP_BUY_von ihm (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, farmt Geld von den nahegelegenen |cRXP_ENEMY_Tunnel-Ratten|r bis ihr genug habt|r
    >>|cRXP_WARN_Tut dies schnell, da ein anderer Spieler es vor euch kaufen könnte|r
    >>|cRXP_WARN_Falls ihr es nicht möchtet, überspringt diesen Schritt|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #ah
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Kauft den|r |T133476:0|t[Schwerer Stachelkolben] |cRXP_BUY_ODER den|r |T133053:0|t[Eisenholzschlägel] |cRXP_BUY_von ihm (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, farmt Geld von den nahegelegenen |cRXP_ENEMY_Tunnel-Ratten|r bis ihr genug habt|r
    >>|cRXP_WARN_Tut dies schnell, da ein anderer Spieler es vor euch kaufen könnte|r
    >>|cRXP_WARN_Falls ihr das nicht tun möchtet oder lieber bald eine billigere/bessere Waffe vom Auktionshaus kaufen möchtet, überspringt diesen Schritt|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Legt den|r |T133476:0|t[Schwerer Stachelkolben] an
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Legt den|r |T133053:0|t[Eisenholzschlägel] an
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    >>Tötet |cRXP_ENEMY_Geomant der Tunnelratten|r. Plündert sie für |cRXP_LOOT_Feuerteer|r << Shaman
    >>|cRXP_ENEMY_Geomant der Tunnelratten|r |cRXP_WARN_sind nur in der Mine zu finden|r << Shaman
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
    .complete 94466,1 << Shaman  -- Fire Tar (1)
    .mob +Tunnel Rat Geomancer << Shaman
step
    #optional
    #label BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch4
    #completewith PawsDelivery
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Macht euch jetzt nicht unnötig die Mühe, dies zu farmen. Tötet und plündert einfach alle Wildschweine, an denen du vorbei kommst|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith PawsDelivery
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 925 --Algaz Station
step
    #optional
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,15 >> BETRETET den Bunker
step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>|cRXP_WARN_Verkaufe und repariere falls nötig|r
    .target Gothor Brumn
step
    #label PawsDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .turnin 353 >> Gebt die Quest Stormpikes Lieferung ab
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch5
    #completewith RatAbandon
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|cRXP_WARN_Macht euch jetzt nicht unnötig die Mühe, dies zu farmen. Tötet und plündert einfach alle Wildschweine, an denen du vorbei kommst|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Gebt die Quest Rattenfang ab
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> BETRETET den Gasthof zum Starkbierlager
step
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
step
    #label FlintTinder
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihr|r
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Gebt die Quest Rattenfang ab
step
    .goto 1432/0,-2729.40,-5534.96
    >>Tötet |cRXP_ENEMY_Splittersteintrogg|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    >>|cRXP_WARN_Seid vorsichtig denn die |cRXP_ENEMY_Späher der Splittersteintroggs|r wirkt|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: verursacht 14-20 Schaden)|r
    >>|cRXP_WARN_Dies ist ein Hyperspawn-Gebiet. Ihr solltet nicht von hier weg müssen|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step
    #label RatAbandon
    #optional
    .goto 1432/0,-2729.40,-5534.96
    .xp 13+9600 >> Farmt bis 9600+/11400 Erfahrung
    >>|cRXP_WARN_Falls ihr plant, Die Halle der Thanen in Eisenschmiede später zu besuchen, überspringt diesen Schritt|r
step << Shaman
    #completewith next
    .goto 1432/0,-2915.500,-5576.500,20,0
    .goto 1432/0,-2874.500,-5608.600,20,0
    .goto 1432/0,-2846.100,-5657.600,15 >> Reist erneut den Bergpfad hinauf zu |cRXP_FRIENDLY_Braldir Ashmantle::257808|r
step << Shaman
    .goto 1432/0,-2880.900,-5701.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Braldir Ashmantle::257808|r
    .target Braldir Ashmantle::257808
    .turnin 94466 >>Gebt die Quest Ruf des Feuers ab
    .accept 94467 >>Akzeptiert die Quest Ruf des Feuers
step << Shaman
    #completewith next
    .goto 1432/0,-2873.800,-5672.500
    .cast 8898 >> |cRXP_WARN_Folgt weiter den Pfad hinauf|r
    .use 6636 >>|cRXP_WARN_Benutzt den|r |T134732:0|t[Feuersapta] |cRXP_WARN_neben der Steinstatue, um die|r |cRXP_ENEMY_Schwache Feuermanifestation|r herbeizurufen
step << Shaman
    .goto 1432/0,-2873.800,-5672.500
    >>Tötet die |cRXP_ENEMY_Schwache Feuermanifestation|r. Plündert sie, um |cRXP_LOOT_Leuchtendes Holzscheit|r zu erhalten
    .complete 94467,1 -- Glowing Ember (1)
step << Shaman
    .goto 1432/0,-2870.700,-5674.600
    >>Klickt die |cRXP_PICK_Kohlenpfanne der schlafenden Flamme|r
    .turnin 94467 >>Gebt die Quest Ruf des Feuers ab
    .accept 94468 >>Akzeptiert die Quest Ruf des Feuers
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> Lauft den Schmutzpfad hinauf und springt dann in den Bunker hinunter
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Bunker
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << Shaman
    #completewith shamfire2
    #label southgate
    .goto 1432/0,-2521.900,-5631.000,20,0
    .goto 1426/0,-2437.600,-5549.700,20 >> Reist durch den Südtorpass
step << Shaman
    #completewith shamfire2
    #requires southgate
    .goto 1426/0,-2473.100,-5418.600,25,0
    .goto 1426/0,-2542.400,-5401.400,25 >> Reist zu |cRXP_FRIENDLY_Bruegs Kindleborn|r in der Höhle oben auf dem Berg erneut
step << Shaman
    #label shamfire2
    .goto 1426/0,-2510.100,-5310.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruegs Kindleborn::257597|r
    .target Bruegs Kindleborn::257597
    .turnin 94468 >>Gebt die Quest Ruf des Feuers ab
step << Shaman
    .isQuestTurnedIn 94468
    .goto 1426/0,-2594.100,-5335.900,20,0
    .goto 1432/0,-2641.000,-5375.700,20 >> Springt vorsichtig den Berg hinunter nach Loch Modan
step
    #loop
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>Klickt die |cRXP_PICK_Weggeworfene Kiste mit Angelzubehör|r auf dem Seeboden
    >>|cRXP_WARN_HINWEIS: Dies kann an vielen verschiedenen Orten erscheinen. Schwimmt herum, bis ihr das Ausrufezeichen auf eurer Minikarte seht|r
    >>|cRXP_WARN_Vorsicht vor hochstufigen|r |cRXP_ENEMY_Junger Dreschadons|r
    .accept 86614 >>Akzeptiert die Quest Silberschatz der Wellen
    .xp <13,1
step
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Gebt die Quest Silberschatz der Wellen ab
    .xp <13,1
step << !Dwarf/!Paladin
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1432,21.498,67.840,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,16.342,58.520,20,0
    .goto 1426,84.262,51.367
    .zone Dun Morogh >> Reist nach Dun Morogh
step << Dwarf Paladin
    #completewith next
    .goto 1426/0,-2055.23,-5784.31
    .cast 8593 >>|cRXP_WARN_Benutzt das|r |T133439:0|t[Symbol des Lebens] |cRXP_WARN_auf |cRXP_FRIENDLY_Narm Faulk|r auf dem Boden|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto 1426/0,-2055.23,-5784.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm Faulk|r
    .turnin 1783 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1784 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .use 6866
    .target Narm Faulk
step << Dwarf Paladin
    .goto 1426/0,-2004.94,-5863.50,20,0
    .goto 1426/0,-2031.04,-5905.53
    >>Tötet |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |cRXP_LOOT_Dunkeleisenmanuskript|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
    .isQuestComplete 1784
    .hs >> Ruhestein nach Eisenschmiede
    .bindlocation 1537,1
    .cooldown item,6948,>2,1
    .zoneskip Ironforge
step << Dwarf Paladin
    #optional
    .isQuestComplete 1784
    .goto 1426/0,-541.23,-5242.29,40,0--c:Dun Morogh,47.58,41.58
    .goto 1426/0,-669.77,-5216.35,20,0--c:Dun Morogh,50.19,40.79
    .goto 1455/0,-831.39,-5028.78,40,0--c:Ironforge,14.90,87.10
    .zone Ironforge >> Rückkehr nach Eisenschmiede

----Start of <1.5x IF->Westfall Section----

step << Rogue
    .goto 1455/0,-1197.27,-5041.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Buliwyf Steinhand|r
    .train 196 >> Erlernt 1h Äxte
    .target Buliwyf Stonehand
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto 1455/0,-913.38,-4577.31,6,0
    .goto 1455/0,-906.11,-4632.030,10 >> Reise in Richtung |cRXP_FRIENDLY_Muiredon|r oben
step << Dwarf Paladin
    .goto 1455/0,-899.70,-4613.0300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1785 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto 1455/0,-932.04,-4633.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Gebt die Quest Der Foliant der Offenbarung ab
    .target Tiza Battleforge
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eldrun Stormbreaker|r 
    .target Eldrun Stormbreaker::258098
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Mage/Priest/Warlock
    #ssf
    .goto 1455/0,-894.15,-4659.43,8,0
    .goto 1455/0,-880.66,-4660.39,5,0
    .goto 1455/0,-896.50,-4653.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich unten mit |cRXP_FRIENDLY_Harick Felstrommel|r
    >>|cRXP_WARN_Kauft einen|r |T135468:0|t[Glimmender Zauberstab] |cRXP_WARN_von ihm|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .money <0.3340
    .itemcount 11288,<1
step << Mage
    .goto 1455/0,-928.48,-4614.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dink
step << Priest
    .goto 1455/0,-912.88,-4625.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Toldren Deepiron
step << skip --logout skip << Mage/Priest
    #optional
    #completewith Deeprun
    .goto 1455,27.611,8.074
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Springt auf den Pfeiler über |cRXP_FRIENDLY_Bink|r, dann lauft leicht östlich von ihr zur Pfeilposition. Positioniert Euren Charakter bis es aussieht, als würde er schweben, dann führt einen Logout Skip durch, indem ihr euch ausloggt und wieder einloggt|r
step << Dwarf Rogue/Gnome Rogue
    #season 0,1
    #optional
    #sticky
    #label Salvation
    .goto 1455/0,-1124.38,-4647.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hulfdan Blackbeard|r unten
    .turnin 2218 >> Gebt die Quest Straße der Rettung ab
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    .goto 1455/0,-1120.72,-4650.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Fenthwick
step << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0
    .goto 1455/0,-1111.62,-4599.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn
step << Warlock
    #optional
    #label Jubahl
    #completewith Deeprun
    .goto 1455,53.164,7.037,10 >> Betretet |cRXP_FRIENDLY_Jubahl Corpseseeker|r's Haus
step << Warlock
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jubaal Leichenfund|r
    .vendor 6382 >> |cRXP_BUY_Kauft|r |T133738:0|t[Zauberfoliant des Schattenverzehrens (Rang 1)] |cRXP_BUY_und|r |T133738:0|t[Zauberfoliant der Opferung (Rang 1)] |cRXP_BUY_falls ihr es euch leisten könnt|r
    .target Jubahl Corpseseeker
step << skip --logout skip << Warlock/Rogue
    #optional
    #requires Jubahl
    #completewith Deeprun
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Geht auf die Spitze des Bettes, dann springt auf die Spitze des Bücherregals. Führt einen Logout-Skip durch, indem ihr euch abmeldet und wieder anmeldet|r
step << Warrior
    #optional
    #completewith Deeprun
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >> Reist in Richtung |cRXP_FRIENDLY_Bilban Tosslespanner|r
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner

step -- dont delete
    #label LochEnd

step << skip --logout skip << Warrior
    #optional
    #completewith Deeprun
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Springt auf die Spitze des Waffenständers. Führt einen Ausloggen-Überspringen skip durch, indem ihr euch abmeldet und wieder anmeldet|r
-- step << skip --logout skip << Hunter
--   #optional
--   #completewith Deeprun
--   .goto 1455,56.207,46.844
--   .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Jump on top of the Gryphon's Head. Perform a Logout Skip by logging out and back in|r
--  .zoneskip Ironforge,1
step
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith Fly2WF
    .goto 1455,67.842,42.456
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ritzelschnitt Zahnrad|r
    .vendor 5175 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_von ihm falls verfügbar|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
    .subzoneskip 2257
step
    #optional
    #requires Salvation << Dwarf Rogue/Gnome Rogue
    #completewith WestfallTramEnd
    #label Deeprun
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Stormwind City
step << skip
    #optional
    #label WestfallTramCook1
    #completewith WestfallTramEnd
    >>|cRXP_WARN_Auf der Tiefenbahn, wenn sie ankommt:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook1
    #label WestfallTramCook2
    #completewith WestfallTramEnd
    >>|cRXP_WARN_Auf der Tiefenbahn, wenn sie ankommt:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook2
    #label WestfallTramCook3
    #completewith WestfallTramEnd
    >>|cRXP_WARN_Auf der Tiefenbahn, wenn sie ankommt:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires WestfallTramCook3
    #label WestfallTramCook4
    #completewith WestfallTramEnd
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_die folgenden Gegenstände:|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires WestfallTramCook4
    #label WestfallTramCook5
    #completewith WestfallTramEnd
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires WestfallTramCook5
    #label WestfallTramCook6
    #completewith WestfallTramEnd
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    .usespell 2550
    .zoneskip Stormwind City
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #label WestfallTramEnd
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf, während ihr auf die Tiefenbahn nach Sturmwind wartet, falls nötig|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
    .zone Stormwind City >> Nehmt die Tiefenbahn nach Sturmwind
step
    #completewith Fly2WF
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Zahnrad|r
    .vendor 5519 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_von ihm falls verfügbar|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Akzeptiert die Quest Ein bescheidener Anfang
    .target Baros Alexston
    .xp <15,1
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft bis zu 2|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr, wenn ihr es euch leisten könnt oder etwas Besseres aus dem Auktionshaus|r
    .collect 2027,1 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft bis zu 2|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr, falls ihr es euch leisten könnt|r
    .collect 2027,1 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Legt den|r |T135343:0|t[Krummsäbel] an
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step << Mage/Priest/Warlock
    #ah
    #sticky
    #label Wand1
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft einen|r |T135144:0|t[Großer Magiezauberstab] |cRXP_BUY_wenn ihr es euch leisten könnt|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Jaxon
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Mage/Priest/Warlock
    #ah
    #requires Wand1
    #optional
    +|cRXP_WARN_Legt den|r |T135144:0|t[den Großen Magiezauberstab] an
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Legt den|r |T135144:0|t[den Großen Magiezauberstab] an
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.49
step << Mage/Priest/Warlock
    #ah
    #optional
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Kauft einen|r |T135468:0|t[Glimmender Zauberstab] |cRXP_WARN_von ihr|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .money <0.3340
    .itemcount 11288,<1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
--XX If you didn't buy a Greater Magic when you had the chance (1x only)
step << Mage/Priest/Warlock
    #ah
    #optional
    +|cRXP_WARN_Legt den|r |T135468:0|t[Glimmender Zauberstab] an
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
step
    #label Fly2WF
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#era/som--h
#version 1
<< Alliance Hunter
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan (Jäger)
#next 14-16 Dunkelküste
#defaultfor Dwarf

step -- dont delete
    #label NormalRouteStart
step
    #completewith next
    .goto 1426/0,-2443.41,-5560.120,15,0
    .goto 1432/0,-2602.54,-5832.73,20 >> Reist nach Loch Modan
    .zoneskip Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r im Bunker
    .target Captain Rugelfuss
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .turnin -414 >> Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto 1432/0,-2954.42,-5394.10
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
step
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Ofenglut|r
    .home >> Setzt euren Ruhestein nach Thelsamar
    .target Innkeeper Hearthstove
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Akzeptiert die Quest Ehrenstudenten
    .target Brock Stoneseeker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto 1432/0,-2929.87,-5424.84
    .turnin 6387 >> Gebt die Quest Ehrenstudenten ab
    .accept 6391 >> Akzeptiert die Quest Flug nach Eisenschmiede
step
    #completewith RTB
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .goto 1455/0,-1120.93,-4708.06
    .turnin 6391 >> Gebt die Quest Fahrt nach Eisenschmiede ab
    .accept 6388 >> Akzeptiert die Quest Gryth Thurden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto 1455/0,-1058.62,-4836.37,20,0
    .goto 1455/0,-1026.28,-4872.56--c:Ironforge,39.550,57.490
    .turnin 291 >> Gebt die Quest Die Berichte ab
    .isOnQuest 291
step << Hunter
    .goto 1455/0,-1273.83,-5022.08
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belia Donnerstein|r
    .turnin 6086 >> Gebt die Quest Die Ausbildung des Tiers ab
step << Hunter
    #label RTB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto 1455/0,-1152.40,-4821.13
    .turnin 6388 >> Gebt die Quest Gryth Thurden ab
    .accept 6392 >> Akzeptiert die Quest Rückkehr zu Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .goto 1455/0,-1152.40,-4821.13
    .fly Loch Modan >> Fliegt nach Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
step << Hunter
    .goto 1432/0,-2982.01,-5286.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vrok Blunderblast|r
    >>|cRXP_BUY_Kauft ein|r |T135613:0|t[Jägerschießeisen] |cRXP_BUY_wenn ihr euch es leisten könnt|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt das|r |T135613:0|t[Jägerschießeisen] an
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #completewith BraveSoul
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith next
    .goto 1432/0,-2651.61,-4817.15,100 >> Reist nach Norden zur Station Algaz
step
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r im Bunker
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    .target Mountaineer Stormpike
step << Human
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r im Bunker
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    .target Mountaineer Stormpike
step
    #label BraveSoul
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >> Betretet die Silberbachmine
step
    .goto 1432/0,-2984.82,-4902.33
    >>Öffnet |cRXP_PICK_Kisten der Minenarbeiterliga|r. Plündert sie für die |cRXP_LOOT_Minenarbeiterausstattung|r
    >>|cRXP_WARN_|cRXP_PICK_Kisten der Minenarbeiterliga|r sind überall in der Mine zu finden|r
    >>|cRXP_WARN_Ihr könnt diese Quest später machen, falls ihr sie jetzt überspringen möchtet|r
    .complete 307,1 -- Miners' Gear (4)
step
    #completewith RatEar
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .target Mountaineer Stormpike
step
    #label RatEar
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    >>|cRXP_ENEMY_Tunnel Ratten|r |cRXP_WARN_können überall in Loch Modan spawnen. Überprüft eure Weltkarte für ihre Standorte|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step
    #sticky
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Gebt die Quest Rattenfang ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto 1432/0,-2954.42,-5394.10
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
step
    .goto 1432/0,-2738.78,-5384.11,0
    .goto 1432/0,-2757.26,-5532.94,0
    .goto 1432/0,-2913.65,-5804.46,0
    .goto 1432/0,-2863.73,-5866.45,0
    .goto 1432/0,-2738.78,-5384.11,40,0
    .goto 1432/0,-2757.26,-5532.94,40,0
    .goto 1432/0,-2913.65,-5804.46,40,0
    .goto 1432/0,-2863.73,-5866.45,40,0
    .goto 1432/0,-2928.27,-5896.25
    >>Tötet |cRXP_ENEMY_Splittersteintroggs|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r
    .target Captain Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
step
    #completewith next
    .goto 1432/0,-2534.38,-5648.28,5 >>Reist zum verschneiten Fleck auf dem Boden direkt außerhalb des Südtorpass-Tunnels
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >> Benutzt den |T1387609:0|t[Keramikkrug] |cRXP_WARN_während ihr auf dem verschneiten Fleck steht, um|r |T1387609:0|t[Krug mit Schnee] |cRXP_WARN_zu sammeln|r
    .complete 86667,1 -- Jar of Snow 1/1
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_10-Minuten-Timer um die Quest abzugeben!|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Norric Lochthane|r
    >>Stellt sicher, dass ihr dies abgebt, bevor die 10-Minuten-Frist des |T1387609:0|t[Krug mit Schnee] |cRXP_WARN_abläuft|r
    .turnin 86667 >> Gebt die Quest Eingeschneit ab
    .target Norric Lochthane
step
    #optional
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>Klickt die |cRXP_PICK_Weggeworfene Kiste mit Angelzubehör|r auf dem Seeboden
    >>|cRXP_WARN_HINWEIS: Dies kann an vielen verschiedenen Orten erscheinen. Schwimmt herum, bis ihr das Ausrufezeichen auf eurer Minikarte seht|r
    >>|cRXP_WARN_Vorsicht vor hochstufigen|r |cRXP_ENEMY_Junger Dreschadons|r
    .accept 86614 >>Akzeptiert die Quest Silberschatz der Wellen
    .xp <13,1
step
    #optional
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Gebt die Quest Silberschatz der Wellen ab
    .xp <13,1
step
    #completewith next
    .goto 1432/0,-3783.63,-5713.77,80 >> Reist zu Ironbands Ausgrabungsstätte
step
    .goto 1432/0,-3812.43,-5694.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Eisenband|r
    .accept 298 >> Akzeptiert die Quest Bericht über den Fortschritt der Ausgrabungen
    .target Prospector Ironband
step
    #completewith next
    .goto 1432/0,-4280.96,-5579.66,80,0
    .goto 1432/0,-4290.89,-5645.89,25 >> Reist zur Jagdhütte der Weltenwanderer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .accept 257 >> Akzeptiert die Quest Das Prahlen eines Jägers
    .goto 1432/0,-4296.68,-5690.590
    .target Daryl the Youngling
step
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78
    >>Tötet |cRXP_ENEMY_Bergbussards|r
    >>|cRXP_WARN_Ihr müsst diese Quest abschließen und zu |cRXP_FRIENDLY_Daryl der Jüngling|r innerhalb von 15 Minuten zurückkehren. Falls die Quest fehlschlägt, brecht sie ab und nehmt sie erneut an|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .goto 1432/0,-4296.68,-5690.590
    .turnin 257 >> Gebt die Quest Das Prahlen eines Jägers ab
    .target Daryl the Youngling
step
    .goto 1432/0,-4269.26,-5653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xandar Goodbeard|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Xandar Goodbeard
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #hardcore
    .hs >> Benutzt euren Ruhestein nach Thelsamar
step
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3020.95,-5359.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >> Gebt die Quest Bericht über den Fortschritt der Ausgrabungen ab
    .accept 301 >> Akzeptiert die Quest Meldung in Eisenschmiede
    .target Jern Hornhelm
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step
    #optional
    .goto 1455/0,-1188.54,-4761.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl Riknussun|r
    .target Daryl Riknussun
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
step
    .goto 1455/0,-1303.75,-4631.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Sturmlanze|r
    .turnin 301 >> Gebt die Quest Meldung in Eisenschmiede ab
    .target Prospector Stormpike
step
    #completewith EnterSW
    .goto 1455/0,-1330.28,-4840.430
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Stormwind City
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform
    .target Monty
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
step
    .use 17117 >>|cRXP_WARN_Benutzt die|r |T133942:0|t[Rattenfänger-Flöte] |cRXP_WARN_auf die|r |cRXP_ENEMY_Tiefenbahn-Ratten|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .timer 11,Tiefenbahn-Ratteten-Razzia RP
    .accept 6662 >> Akzeptiert die Quest Mein Bruder Nipsy...
step
    >>|cRXP_WARN_Nehmt die Tiefenbahn in Richtung Sturmwind|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nipsy|r auf der mittleren Plattform auf der Sturmwind Seite der Tiefenbahn
    .turnin 6662 >> Gebt die Quest Mein Bruder Nipsy... ab
    .target Nipsy
step
    #label EnterSW
    .zone Stormwind City >> Betretet Sturmwind
step
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto 1453/0,685.22,-8387.23
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto 1453/0,600.07,-8427.22
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto 1453/0,613.0,-8796.03
    .trainer >>Erlernt Stäbe

step --dont delete
    #label NormalRouteEnd

step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände in Kürze für schnellere Abgaben in Dunkelküste:|r
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    >>|T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände in Kürze für schnellere Abgaben in Dunkelküste:|r
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Kauft ein|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_BUY_und drei|r |T134324:0|t[Nachtkriecher] |cRXP_BUY_von ihr. Dies ist für eine 900xp Quest|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilbert Gray::267118|r 
    .target Gilbert Gray::267118
    .accept 95065 >>Akzeptiert die Quest Zeit zu fischen
    .turnin 95065 >>Gebt die Quest Zeit zu fischen ab
--Hunter going Darkshore, rest Westfall
step << Hunter
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt ein|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(in eurem Berufe-Buch)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt ein|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(in eurem Berufe-Buch)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt ein|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(in eurem Berufe-Buch)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_die folgenden Gegenstände:|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf das Boot nach Dunkelküste wartet, falls nötig|r
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
]])