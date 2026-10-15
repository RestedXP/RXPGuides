if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Alliance
#name 1-6 Das Eisklammtal
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Dwarf/Gnome
#next 6-10 Dun Morogh
step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Ihr habt einen Leitfaden für Gnome und Zwerge ausgewählt. Ihr solltet die gleiche Startzone wählen, in der ihr startet
step << !Warlock
    #completewith next
    .destroy 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .goto Dun Morogh,29.927,71.201
    .accept 179 >> Akzeptiert die Quest Zwergenausstatter
    .target Sten Stoutarm
step << Warrior
    .goto Dun Morogh,29.68,74.20,40,0
    >>Tötet |cRXP_ENEMY_Ragged Young Wolves|r bis ihr Müll im Wert von 10+ Kupfer habt
    >>|cRXP_WARN_Ihr werdet|r |T132333:0|t[Schlachtruf] lernen|cRXP_WARN_was die Levelgeschwindigkeit am Anfrang erhöht|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grundel Harkin|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target +Grundel Harkin
    .goto Dun Morogh,28.793,67.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target +Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step << Warlock
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Betretet Ambossar
    >>|cRXP_WARN_Legt von Euch Körperrüstung, Hemd, Hosen und Stiefel unterwegs ab. Ihr werdet sie an einen Händler verkaufen|r
step << Warlock
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .vendor >> |cRXP_WARN_Verkauft eure Rüstung, euer Hemd, eure Hosen und eure Stiefel zusammen mit dem Essen und Wasser in euren Taschen. Ihr braucht insgesamt 10 Kupfer|r
    .target Durnan Furcutter
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r
    .train 348 >> Erlernt |T135817:0|t[Feuerbrand]
    .accept 1599 >> Akzeptiert die Quest Anfänge
    .target Alamar Grimm
step
    .goto Dun Morogh,30.79,74.48,50,0
    .goto Dun Morogh,29.02,76.38,50,0
    .goto Dun Morogh,26.68,75.57
    >>Tötet |cRXP_ENEMY_Ragged Young Wolves|r und |cRXP_ENEMY_Ragged Timber Wolves|r. Plündert sie für |cRXP_LOOT_Tough Wolf Fleisch|r
    >>|cRXP_WARN_Legt beliebige Stoffrüstung an, die ihr bei|r Young Wolves|cRXP_ENEMY_ plündert|r << Warlock
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .xp 2 >> Farmt bis Stufe 2
step << Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Gebt die Quest Zwergenausstatter ab
    .accept 3115 >> Akzeptiert die Quest Besudeltes Memorandum << Gnome Warlock
    .accept 233 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .target Sten Stoutarm
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Akzeptiert die Quest Eine neue Bedrohung
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser]|cRXP_BUY_. Farmt extra |cRXP_ENEMY_Ragged Young Wolves|r wenn ihr nicht genug Geld habt|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Warlock
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Betretet die Höhle der Frostmähnen
step << Warlock
    >>Tötet |cRXP_ENEMY_Frostmane Novices|r in der Höhle. Plündert sie für |cRXP_LOOT_Feather Charms|r
    >>|cRXP_BUY_Legt beliebige Stoffrüstung an, die ihr bei|r Frostmanes|cRXP_ENEMY_ plündert|r
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #hardcore
    #completewith next
    .hs >> Benutzt euren Ruhestein in Das Eisklammtal
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r
    .goto Dun Morogh,28.650,66.145
    .turnin 1599 >> Gebt die Quest Anfänge ab
    .turnin 3115 >> Gebt die Quest Besudeltes Memorandum ab << Gnome Warlock
    .target Alamar Grimm
step << Priest/Mage
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser]|cRXP_BUY_. Farmt extra |cRXP_ENEMY_Ragged Young Wolves|r, wenn ihr nicht genug Geld habt|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Adlin Pridedrift
step << !Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Gebt die Quest Zwergenausstatter ab
    .accept 233 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .accept 3106 >> Akzeptiert die Quest Einfache Rune << Dwarf Warrior
    .accept 3107 >> Akzeptiert die Quest Geweihte Rune << Paladin
    .accept 3109 >> Akzeptiert die Quest Verschlüsselte Rune << Dwarf Rogue
    .accept 3110 >> Akzeptiert die Quest Geheiligte Rune << Priest
    .accept 3112 >> Akzeptiert die Quest Einfaches Memorandum << Gnome Warrior
    .accept 3113 >> Akzeptiert die Quest Verschlüsseltes Memorandum << Gnome Rogue
    .accept 3114 >> Akzeptiert die Quest Glyphen-Memorandum << Mage
    .accept 3108 >>Akzeptiert die Quest Geätzte Rune << Dwarf Hunter
    .target Sten Stoutarm
step << !Warlock
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Akzeptiert die Quest Eine neue Bedrohung
    .target Balir Frosthammer
step
    #era
    #completewith Rockjaw
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >> Gebt die Quest Postbeförderung im Eisklammtal ab
    .accept 183 >> Akzeptiert die Quest Der Eberjäger
    .accept 234 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.79,71.60
    >>Tötet |cRXP_ENEMY_Kleiner Klippeneber|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >> Gebt die Quest Der Eberjäger ab
step << Paladin/Mage/Warlock/Hunter
    #era
    .xp 3+1130 >> Farmt bis 1130+/1400 EP
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5,50,0
    .goto Dun Morogh,27.7,76.3,50,0
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 234 >> Gebt die Quest Postbeförderung im Eisklammtal ab
    .accept 182 >> Akzeptiert die Quest Die Trollhöhle
step << Paladin/Mage/Warlock/Hunter
    .xp 4
step << Paladin/Mage/Warlock/Hunter
    #era
    .goto Dun Morogh,31.37,75.63
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
step << Paladin/Mage/Warlock/Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Reist nach Ambossar
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Gebt die Quest Geätzte Rune ab
    .train 1978 >> Schlangengift erlernen
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bromos Grummner|r
    .target Bromos Grummner
    .goto Dun Morogh,28.833,68.332
    .turnin 3107 >> Gebt die Quest Geweihte Rune ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Gnome Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r
    .target Marryk Nurribit
    .goto Dun Morogh,28.709,66.366
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alamar Grimm|r
    .target Alamar Grimm
    .goto Dun Morogh,28.650,66.145
    .trainer >> Erlernen von Euch Verderbnis
step << Paladin/Mage/Warlock/Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Gebt die Quest Eine neue Bedrohung ab
step << Hunter
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_WARN_Kauft 2 Stapel|r |T132384:0|t[Licht Shots]
    .collect 2516,400 -- Light Shot (400)
    .target Adlin Pridedrift
step << Mage/Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser]|cRXP_BUY_. Farmt extra |cRXP_ENEMY_Ragged Young Wolves|r wenn ihr nicht genug Geld habt|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Mage !Warlock !Hunter
    #era
    #completewith next
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage
    #label TrollTroggs
    .goto Dun Morogh,28.7,77.5
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << !Paladin !Mage !Warlock !Hunter
    .xp 4 >> Farmt bis Stufe 4
step << !Paladin !Mage !Warlock !Hunter
    #era
    #requires TrollTroggs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Gebt die Quest Die Trollhöhle ab
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
step << !Paladin !Mage !Warlock !Hunter
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Gebt die Quest Die Trollhöhle ab
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Gebt die Quest Die Trollhöhle ab
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
step
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Betretet die Höhle der Frostmähnen
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Tötet |cRXP_ENEMY_Grik'nir the Kalt|r. Plündert ihn nach seinem |cRXP_LOOT_Tagebuch|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
step << !Paladin !Mage !Warlock !Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Reist nach Ambossar
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .target Durnan Furcutter
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solm Hargrin|r
    .target Solm Hargrin
    .goto Dun Morogh,28.4,67.5
    .turnin 3113 >> Gebt die Quest Verschlüsseltes Memorandum ab << Gnome Rogue
    .turnin 3109 >> Gebt die Quest Verschlüsselte Rune ab << Dwarf Rogue
step << Dwarf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Branstock Khalder|r
    .target Branstock Khalder
    .goto Dun Morogh,28.600,66.385
    .turnin 3110 >> Gebt die Quest Geheiligte Rune ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thran Khorman|r
    .target Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .turnin 3106 >> Gebt die Quest Einfache Rune ab << Dwarf Warrior
    .turnin 3112 >> Gebt die Quest Einfaches Memorandum ab << Gnome Warrior
    .trainer >> Trainiere deine Klassenfähigkeiten
step << !Paladin !Mage !Warlock !Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Gebt die Quest Eine neue Bedrohung ab
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Federn Wasser]
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
step << !Paladin !Mage !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mountaineer Thalos|r
    .target Mountaineer Thalos
    .goto Dun Morogh,33.484,71.841
    .turnin 282 >> Gebt Senirs Beobachtungen ab
    .accept 420 >> Akzeptiert die Quest Senirs Beobachtungen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hands Springsprocket|r
    .target Hands Springsprocket
    .goto Dun Morogh,33.847,72.236
    .accept 2160 >> Akzeptiert die Quest Vorräte für Tannok
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Reist durch den Eisklamm Pass
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som--h
#classic
#tbc
<< Alliance
#name 6-10 Dun Morogh
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Dwarf/Gnome
#next 10-11 Elwynn (Zwerge/Gnome)
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Crag Boars|r und |cRXP_ENEMY_Large Crag Boars|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Reist nach Kharanos. Farmt bis 2145/+2800 EP, tötet dabei |cRXP_ENEMY_Crag Boars|r unterwegs << Priest
    .xp 5+2415 >> Reist nach Kharanos. Farmt bis 2415/+2800 EP, tötet dabei |cRXP_ENEMY_Crag Boars|r unterwegs << !Priest
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >> Reist nach Kharanos. Tötet |cRXP_ENEMY_Crag Boars|r unterwegs
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .turnin 420 >> Gebt Senirs Beobachtungen ab
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannie Fizzwizzle|r
    .vendor >> |cRXP_BUY_Kauft das|r |T133738:0|t[Grimoire of Blutpakt (Rang 1)] |cRXP_BUY_wenn ihr es euch leisten könnt. Falls nicht, werdet ihr es später kaufen|r
    .target Dannie Fizzwizzle
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Grinde bis 6
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 3044 >> Erlernen Arkaner Schuss
    .target Grif Wildheart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >> Akzeptiert die Quest Eberrippchen in Biersauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tannok Frosthammer|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >> Gebt die Quest Vorräte für Tannok ab
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kreg Bilmn|r
    .vendor >> |cRXP_BUY_kaufe und rüste|r |T135426:0|t[Kleines Wurfmesser] aus
    .target Kreg Bilmn
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magis Sparkmantle|r innerhalb oben
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azar Stronghammer|r innerhalb oben
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .accept 5625 >> Gewänder des Lichts annehmen
step << Priest
    >>Benutzt Geringes Heilen Rang 2 und then Machtwort: Seelenstärke on |cRXP_FRIENDLY_Mountaineer Dolf|r
    .target Mountaineer Dolf
    .goto Dun Morogh,45.805,54.568
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .turnin 5625 >> Gebt die Quest Gewänder des Lichts ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
    .xp 6 >> Grinde bis 6
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
    .vendor >> |cRXP_BUY_Kaufe so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_wie ihr euch leisten könnt|r
step << !Mage !Priest !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Granis Swiftaxe|r innerhalb
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,45.8,51.8,20 >> Reist zur Schmiede
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet ein|r |T135321:0|t[Gladius] aus
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet eine|r |T132401:0|t[Große Axt] aus
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet ein|r |T135641:0|t[Stilett] aus
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet einen|r |T133053:0|t[Hölzerner Schlaghammer] aus
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tognus Flintfire|r
    .target Tognus Flintfire
    .goto Dun Morogh,45.3,51.9
    .trainer >> Erlerne |T136241:0|t[Schmiedekunst]
    >>|cRXP_WARN_Dies erlaubt euch, |T135248:0|t[Rough Sharpening Stones] herzustellen, die Nahkampfanschläge um +2 Schaden erhöhen. Das ist sehr bedeutend zu Anfang|r << Warrior/Rogue
    >>|cRXP_WARN_Dies erlaubt euch, |T135255:0|t[Rough Weightstones] herzustellen, die Nahkampfanschläge um +2 Schaden erhöhen. Das ist sehr bedeutend zu Anfang|r << Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharek Blackstone|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >> Akzeptiert die Quest Werkzeuge für Steelgrill
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    >>|cRXP_WARN_Tötet keine |cRXP_ENEMY_Junger Schwarzbär|r auf dem weg|r
    .target Pilot Bellowfiz
    .accept 317 >> Akzeptiert die Quest Vorräte für Jetsteam
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .accept 313 >> Akzeptiert die Quest Der altgediente Bau
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beldin Steelgrill|r
    .target Beldin Steelgrill
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
step
    #label BoarMeat44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loslor Rudge|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
step << Warrior/Paladin/Rogue
    #completewith next
    .money <0.0091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Loslor Rudge|r
    .goto Dun Morogh,50.084,49.420
    >>Kauft eine|cRXP_BUY_ |T134708:0|t[Spitzhacke] |rwenn ihr|cRXP_BUY_ |T136241:0|t[Schmiedekunst] trainiert habt|r
    .collect 2901,1
    .target Loslor Rudge
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yarr Hammerstone|r
    .trainer >>Erlerne |T134708:0|t[Bergbau]
    .target Yarr Hammerstone
step << Warrior/Paladin/Rogue
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
step << Paladin/Warrior/Rogue
    #completewith BearFur
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r. Plündert sie für ihr |cRXP_LOOT_Dickes Bärenfell|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .goto Dun Morogh,43.5,52.5
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r. Plündert sie für ihr |cRXP_LOOT_Dickes Bärenfell|r
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für ihr |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step << !Paladin !Warrior !Rogue
    #completewith Ribs
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
    .accept 318 >> Akzeptiert die Quest Immerschimmer
step << Warrior
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .vendor >> |cRXP_BUY_Buy as much|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_as ihr könnt afford|r
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .vendor >> |cRXP_BUY_Kaufe so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_wie ihr euch leisten könnt|r
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,42.38,55.28,40 >> Reist zu Der altgediente Bau
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>Tötet |cRXP_ENEMY_Wendigos|r und |cRXP_ENEMY_Junger Wendigo|r. Plündert sie für |cRXP_LOOT_Wendigomähne|r
    >>|cRXP_WARN_Denken Sie daran, die Augen offen zu halten für|r |T134566:0|t[Kupfervorkommen] |cRXP_WARN_welche dir|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r geben |cRXP_WARN_so dass ihr|r |T135248:0|t[Rauer Wetzstein] herstellen könnt << Warrior/Rogue
    >>|cRXP_WARN_Denken Sie daran, die Augen offen zu halten für|r |T134566:0|t[Kupfervorkommen] |cRXP_WARN_welche dir|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r geben |cRXP_WARN_so dass ihr|r |T135255:0|t[Rauer Gewichtsstein] herstellen könnt << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Öffnet die |cRXP_PICK_Munitionskiste|r. Plündert sie für |cRXP_LOOT_Munition für Rumbleshot|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .goto Dun Morogh,40.682,65.130
    >>|cRXP_BUY_Kauft und rüstet|r |T135611:0|t[Verschnörkelte Donnerbüchse]|cRXP_BUY_aus. Überspringt diesen Schritt, wenn ihr es euch nicht leisten könnt|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
step << !Paladin !Warrior !Rogue
    .xp 7 >> Farmt bis Stufe 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r. Plündert sie für ihr |cRXP_LOOT_Dickes Bärenfell|r
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für ihr |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step << Paladin/Warrior/Rogue
    #completewith Ribs
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
    .accept 318 >> Akzeptiert die Quest Immerschimmer
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Gebt die Quest Der altgediente Bau
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> Kauft a Spitzhacke
step << Warrior/Paladin/Rogue
    #era
    .xp 7 >> Farmt bis Stufe 7
step << Warrior/Rogue
    #som
    .xp 8 >> Farmt Gegner in der Nähe bis Stufe 8
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azar Stronghammer|r innerhalb oben
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Granis Swiftaxe|r innerhalb
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet ein|r |T135321:0|t[Gladius] aus
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet eine|r |T132401:0|t[Große Axt] aus
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet ein|r |T135641:0|t[Stilett] aus
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet einen|r |T133053:0|t[Hölzerner Schlaghammer] aus
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .vendor >> |cRXP_BUY_Kauft bis zu 20|r |T133968:0|t[Frisch gebackenes Brot] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Kauft bis zu 10|r |T133968:0|t[Frisch gebackenes Brot] << Paladin
    .target Innkeeper Belm
step << Paladin/Warrior/Rogue
    #completewith next
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,37.9,50.8,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Reist in Richtung |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Tötet |cRXP_ENEMY_Boars|r, |cRXP_ENEMY_Bears|r und |cRXP_ENEMY_Wolves|r en-route
step << Paladin/Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
step << !Paladin !Warrior !Rogue
    #completewith next
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Reist in Richtung |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Tötet |cRXP_ENEMY_Boars|r, |cRXP_ENEMY_Bears|r und |cRXP_ENEMY_Wolves|r en-route
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
step
    #completewith next
    .goto Dun Morogh,30.5,46.0,50 >> Reist nach Bräuhall
step << !Mage !Priest
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_BUY_Kauft bis zu 20|r |T132815:0|t[Eiskalte Milch]
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >> Gebt die Quest Immerschimmer ab
    .accept 319 >> Akzeptiert die Quest Ein Gefallen für etwas Immerschimmer
    .accept 315 >> Akzeptiert die Quest Das perfekte Starkbier
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >> Akzeptiert die Quest Bittere Rivalen
step
    #label Ribs
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r, und |cRXP_ENEMY_Schneeleopard|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    >>Tötet |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    .complete 384,1 --Collect Crag Boar Rib (x6)
    .mob Elder Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Gebt die Quest Ein Gefallen für etwas Immerschimmer ab
    .accept 320 >> Akzeptiert die Quest Rückkehr zu Bellowfiz
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Falls ihr die Quest Eberrippchen in Biersauce bereits abgegeben habt, farmt bis 4360+/4500 XP
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
    .xp 7+3735 >>Farmt bis 3735+/4500xp
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Lauft hierher.
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Lauft den Berg nach Norden hinauf
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Folgt dem Pfad hier hinauf
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Lauft weiter geradeaus nach Norden, springt hinab und sterbt, sobald die allgemeine Chatfunktionen auf das Marschenland (Sumpfland) wechselt, dann erscheint ihr im Hafen von Menethil
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Schwimmt ans Ufer
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Wetlands>> Holt euch den Flugpunkt zum Hafen von Menethil
step
	#completewith next
    .hs >> Ruhestein nach Theramore
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_und ein|r |T132800:0|t[Donnerbier]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jarven Donnerbräu|r unten
    .turnin 308 >> Gebt die Quest Jarvens Ablenkung ab
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Öffnet das |cRXP_PICK_Unbewachtes Fass mit Donnerbier|r
    .turnin 310 >> Gebt die Quest Bittere Rivalen ab
    .accept 311 >> Akzeptiert die Quest Rückkehr zu Marleth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ragnar Donnerbräu|r außerhalb
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
step << !Paladin !Rogue !Warrior
    .xp 8 >> Grinde bis 8
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 5116>> Erlernt Erschütternder Schuss
    .target Grif Wildheart
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .target Gimrizz Shadowcog
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 5782 >> Erlernen |T136183:0|t[Furcht]
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gimrizz Shadowcog|r
    .vendor >> |cRXP_BUY_Kauft das|r |T133738:0|t[Grimoire of Feuerblitz (Rang 2)] |cRXP_BUY_falls ihr es euch leisten könnt. Wenn nicht, werdet ihr es später kaufen|r
    .target Gimrizz Shadowcog
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Azar Stronghammer|r innerhalb oben
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Granis Swiftaxe|r innerhalb
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Mage
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magis Sparkmantle|r innerhalb oben
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 118 >> Erlernt |T136071:0|t[Verwandlung]
step << Priest
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maxan Anvol|r innerhalb
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
    .target Thamner Pol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet ein|r |T135321:0|t[Gladius] aus
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet eine|r |T132401:0|t[Große Axt] aus
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet ein|r |T135641:0|t[Stilett] aus
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Kauft und rüstet einen|r |T133053:0|t[Hölzerner Schlaghammer] aus
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Kauft bis zu 30|r |T133968:0|t[Frisch gebackenes Brot] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Kauft bis zu 15|r |T133968:0|t[Frisch gebackenes Brot] << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Kauft bis zu 30|r |T132815:0|t[Eiskalte Milch]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Akzeptiert die QuestHöhle der Frostmane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Stonegear|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Gebt die Quest Der altgediente Bau
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pilot Bellowfiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    >>|cRXP_WARN_Wählt das|r |T135637:0|t[Campingmesser] |cRXP_WARN_Belohnung. Speichert es für später|r << Rogue
    .turnin 320 >> Gebt die Quest Rückkehr zu Bellowfiz ab
step
    #era << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Akzeptiert die Quest Operation Rekombobulationsgerät
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Reist nach Schimmergrat. Folgt dem Pfeil und lauft den Berg hinauf
step
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Tötet |cRXP_ENEMY_Seher der Frostmane|r. Plündert sie für |cRXP_LOOT_Schimmerkraut|r
    >>|cRXP_LOOT_Schimmerkraut|r kann auch aus |cRXP_PICK_Schimmerkrautkorb|r am Boden geplündert werden
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    >>|cRXP_WARN_Wartet bis |cRXP_ENEMY_Eisbart der Alte|r aus der Höhle patrouilliert. Sobald er aus der Höhle patrouilliert, könnt ihr hineingehen und|r |cRXP_PICK_MacGranns Fleisch-Spind|r plündern
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Wirkt|r |T136071:0|t[Verwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Eisbart der Alte|r << Mage
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] |cRXP_WARN_auf|r |cRXP_ENEMY_Eisbart der Alte|r << Warlock
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_BUY_Kauft bis zu 10 mehr|r |T132815:0|t[Eiskalte Milch]
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rejold Gerstenbräu|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Gebt die Quest Das perfekte Starkbier ab
    .accept 413 >> Akzeptiert die Quest Schimmerstarkbier
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marleth Gerstenbräu|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Gebt die Quest Rückkehr zu Marleth ab
step
    #era << Warlock
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Tötet |cRXP_ENEMY_Lepragnom|r. Plündert sie für |cRXP_LOOT_Gyromechanische Getriebeteile|r und |cRXP_LOOT_Restabilisationszahnrad|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #era
    .xp 9 >> Grinde bis 9
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Betretet die Höhle der Frostmane
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Kopfjäger der Frostmane|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #hardcore
    >>|cRXP_WARN_Fallt herunter zu diesem Ort, um die Höhle der Frostmane zu erkunden. Falls Mobs darunter sind, cleared den Bereich Normal und fallt NICHT herunter|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step << Hunter
    #completewith next
    .xp 10-2325
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Tötet |cRXP_ENEMY_Kopfjäger der Frostmane|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step << Hunter
    .xp 10-1400
step
    #hardcore
	#completewith next
	.hs >> Ruhestein nach Theramore
	.cooldown item,6948,>0,1
step
    #hardcore
    #completewith next
   .goto Dun Morogh,46.726,53.826,150 >> Lauf nach Kharanos
step << Hunter
   .goto Dun Morogh,46.005,48.637,8,0
   .goto Dun Morogh,45.846,49.365
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
   .target Razzle Sprysprocket
   .turnin 412 >> Gebt die Quest Operation Rekombobulationsgerät ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senir Whitebeard|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Gebt die Quest Höhle der Frostmähnen ab
    .accept 291 >> Akzeptiert die Quest Die Berichte
step << Rogue
    #level 10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hogral Bakkan|r im Hinterzimmer
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .accept 2218 >> Akzeptiert die Quest Straße der Rettung
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
    .target Thamner Pol
step << !Hunter
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Razzle Sprysprocket|r
    .target Razzle Sprysprocket
    .turnin 412 >> Gebt die Quest Operation Rekombobulationsgerät ab
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .accept 6064 >>Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Großen Klippeneber|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6064 >>Gebt die Quest Die Zähmung der Bestie ab
    .target Grif Wildheart
    .accept 6084 >>Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    .goto Dun Morogh,49.4,59.4
    >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Schneeleoparden|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6084 >>Gebt die Quest Die Zähmung der Bestie ab
    .target Grif Wildheart
    .accept 6085 >>Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    .goto Dun Morogh,50.4,59.7
    >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Eisklauenbär|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grif Wildheart|r
    .turnin 6085 >>Gebt die Quest Die Zähmung der Bestie ab
    .target Grif Wildheart
    .accept 6086 >>Akzeptiert die Quest Die Ausbildung des Tiers
step << Warrior
    #sticky
    #completewith next
    .money >0.1030
    +|cRXP_WARN_Schleift bis ihr 10s30c habt, dann lauft nach Eisenschmiede|r
step << Warrior/Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Lauf nach Ironforge
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belia Donnerstein|r
    .turnin 6086 >> Gebt die Quest Die Ausbildung des Tiers ab
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .trainer >>Erlernt Wurfwaffen
    .target Bixi Wobblebonk
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Buy a|r |T135641:0|t[Ausbalancierter Wurfdolch] und equip it|r
    .target Brenwyn Wintersteel
step << Warrior/Hunter
    #completewith next
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.90,35.62
    .zone Dun Morogh >> Verlasst Eisenschmiede
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .target Rudra Amberstill
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Lauft diesen Teil des Berges hinauf
step
    .goto Dun Morogh,62.6,46.1
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für seinen |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_Diese Quest ist schwierig. Findet eine Gruppe für ihn, falls nötig. Überspringt diesen Schritt, wenn ihr keine Gruppe findet oder ihn solo nicht besiegen könnt|r
    >>|cRXP_WARN_Schaut das Video unten, bevor ihr versucht, |cRXP_ENEMY_Vagash|r zu töten. Es kann von jeder Klasse solo absolviert werden|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    >>|cRXP_WARN_Wählt die|r |T133052:0|t[|cRXP_FRIENDLY_Eisklammhammer|r] |cRXP_WARN_als eure Belohnung. Macht euch keine Sorgen, wenn ihr es noch nicht anlegen könnt, ihr werdet Zweihandkeulen sehr bald trainieren!|r << Warrior
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >> Lauf zum Gol'Bolar Steinbruch
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cook Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_falls nötig|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Kauft|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_falls nötig|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r und |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Tötet |cRXP_ENEMY_Rockjaw Skullthumpers|r und |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r und |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step
    #era
    .goto Dun Morogh,67.1,59.7
    .xp 10 >> Farmt bis Stufe 10
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
step
    >>Klickt |cRXP_PICK_Eine Zwergenleiche|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Gebt die Quest Pilotenrache ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mountaineer Barleybrew|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >> Gebt die Quest Schimmerstarkbier ab
    .accept 414 >> Akzeptiert die Quest Starkbier für Kadrell
step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,200 >> Reist nach Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r im Bunker
    .target Captain Rugelfuss
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
step
    #completewith HonorStudents
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .turnin 414 >> Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor >> |cRXP_BUY_Buy a|r |T133634:0|t[Klein Brown Pouch] |cRXP_BUY_if needed|r
    .target Yanni Stoutheart
step << !Paladin
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Ofenglut|r
    .home >> Setzt euren Ruhestein nach Thelsamar
    .target Innkeeper Hearthstove
step
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Akzeptiert die Quest Ehrenstudenten
    .target Brock Stoneseeker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .turnin 414 >> Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step << skip
    #sticky
    #completewith next
    +Farmt Mobs, bis ihr mindestens 33 Silber und verkäufliche Gegenstände habt
--N rogue money gate for cutlass+1h swords
step
    #completewith Thelsamar1
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
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Reist nach Norden zur Station Algaz
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    .target Mountaineer Stormpike
step
.solo
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
    .target Mountaineer Stormpike
step
    #softcore
    #completewith next
    .deathskip >> Sterbt und erscheint bei Thelsamar wieder
step
    .isQuestComplete 418
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
step
    #label Thelsamar1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >> Gebt die Quest Ehrenstudenten ab
    .accept 6391 >> Akzeptiert die Quest Flug nach Eisenschmiede
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Gebt die Quest Fahrt nach Eisenschmiede ab
    .accept 6388 >> Akzeptiert die Quest Gryth Thurden
step << Hunter
    >>|cRXP_WARN_Fliegt nicht irgendwohin|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Gebt die Quest Gryth Thurden ab
    .accept 6392 >> Akzeptiert die Quest Rückkehr zu Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Gebt die Quest Die Berichte ab
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>|cRXP_WARN_Legt|r |T133052:0|t[|cRXP_FRIENDLY_Eisklammhammer|r] |cRXP_WARN_jetzt an, wenn ihr das nicht früher getan habt|r
    .target Buliwyf Stonehand
    .goto Ironforge,61.181,89.514
    .trainer >>Erlernen 2h Streitkolben
step << !Hunter
    >>|cRXP_WARN_Fliegt nicht irgendwohin|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Gebt die Quest Gryth Thurden ab
    .accept 6392 >> Akzeptiert die Quest Rückkehr zu Brock
step << !Hunter skip
    #completewith next
    +Führt einen Logout-Skip durch, indem ihr auf einen der Greif-Köpfe springt, euch abmeldet und dann wieder anmeldet
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Click here for video reference|r
    .zoneskip Ironforge,1
step
    .goto Ironforge,78.00,52.00,5,0
    >>|cRXP_WARN_Betretet die Tiefenbahn|r
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
    #completewith next
    .zone Stormwind City >> Nehmt die Tiefenbahn nach Sturmwind
    >>|cRXP_WARN_Level eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_falls benötigt, während ihr auf die Tram wartet|r
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nipsy|r, wenn ihr die Tram verlasst
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_ist auf der mittleren Plattform|r
    .turnin 6662 >> Gebt die Quest Mein Bruder Nipsy... ab
    .target Nipsy
step
    .zone Stormwind City >> Betretet Sturmwind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> Trainiere deine Klassenfähigkeiten
    .turnin 5634 >> Gebt die Quest Verzweifeltes Gebet ab
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .train 13908 >> Erlernt Verzweifeltes Gebet
    .target High Priestess Laurena
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1638 >> Akzeptiert die Quest Die Ausbildung eines Kriegers
    .target Ilsa Corbin
step << Warrior
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Betretet die Taverne
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >> Gebt die Quest Die Ausbildung eines Kriegers ab
    .accept 1639 >> Akzeptiert die Quest Bartleby der Trunkenbold
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >> Gebt die Quest Bartleby der Trunkenbold ab
    .accept 1640 >> Akzeptiert die Quest Besiegt Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Greift |cRXP_ENEMY_Bartleby|r an. Er wird sich bei 1% ergeben
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Gebt die Quest Besiegt Bartleby ab
    .accept 1665 >> Akzeptiert die Quest Bartlebys Becher
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> Gebt die Quest Bartlebys Becher ab
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1688 >> Akzeptiert die Quest Surena Caledon
    .target Gakin the Darkbinder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Erlernt 1h Schwerter << Rogue/Mage
    .trainer >>Erlernt Stäbe << Priest
    .trainer >>Erlerne 1h Schwerter und Stäbe << Warlock
    .trainer >>Erlernt 2h Schwerter << Warrior/Paladin
step << Dwarf Paladin
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Allison|r
    .home >> Setzt euren Ruhestein in Sturmwind
    .target Innkeeper Allison
step << Rogue
    .money <0.2000
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    .target Gunther Weller
    .vendor >> |cRXP_WARN_Kauft|r |T135346:0|t[Entersäbel] |cRXP_WARN_und legt ihn in von Euch Haupthand an. Legt|r |T135641:0|t[|cRXP_FRIENDLY_Handwerkerdolch|r] |cRXP_WARN_von früher in von Euch Nebenhand an|r
step << Rogue
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thurman Mullby|r
    .vendor >> |cRXP_BUY_Kauft|r |T135425:0|t[Wuchtiges Wurfmesser]|cRXP_BUY_. Legt es an, wenn ihr Stufe 11 seid|r
    .target Thurman Mullby
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som--h
#classic
#tbc
<< Alliance
#name 10-11 Elwynn (Zwerge/Gnome)
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Gnome/Dwarf
#next 11-13 Loch Modan (Zwerg/Gnom)

step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fp Stormwind >> Holt euch den Flugpunkt in Sturmwind
    .target Dungar Longdrink
step
    #completewith next
    .goto Elwynn Forest,42.107,65.930,100 >> Lauf nach Goldhain
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .accept 62 >> Die Fargodeep Mine annehmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Koboldkerzen annehmen
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >> Gefahr aus dem Wasser annehmen
    .accept 47 >> Tauschhandel mit Goldstaub annehmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mutter Stonefield|r und |cRXP_FRIENDLY_"Tantchen" Bernice Stonefield|r
    .accept 88 >> Prinzessin muss sterben! annehmen
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >> Verlorene Halskette annehmen
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
    .accept 86 >> Kuchen für Billy annehmen
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Junge liebende annehmen
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Gebt die Quest Junge Liebende ab
    .accept 111 >> Gespräch mit Oma annehmen
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,34.486,84.252
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    >>|cRXP_WARN_Überspringt die Questabgabe vorerst, falls ihr nicht genug [Brocken Eberfleisch] habt|r
    .turnin 86 >> Gebt die Quest Pastete für Billy ab
    .isQuestComplete 86
    .target "Auntie" Bernice Stonefield
step
    .goto Elwynn Forest,34.943,83.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Oma Stonefield|r
    .turnin 111 >> Gebt die Quest Gespräch mit Oma ab
    .accept 107 >> Nachricht an William annehmen
    .target Gramma Stonefield
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Die Mobs der Stufe 5 können während dieser Quest grau werden. Beendet sie trotzdem, da ihr diese Quest abschließen müsst, um die Fortsetzung freizuschalten|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Betretet und erforscht die Tiefenschachtmine|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Große Kerze|r und |cRXP_LOOT_Goldstaub|r
    >>|cRXP_WARN_Die Mobs der Stufe 5 können während dieser Quest grau werden. Beendet sie trotzdem, da ihr diese Quest abschließen müsst, um die Fortsetzung freizuschalten|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Lauf nach Goldhain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    >>|cRXP_WARN_Verkauft|r |T133581:0|t[Tasche of Marbles] NICHT an einen Händler|cRXP_WARN_Dies ist ein unglaublich wervoller Gegenstand bis Level 60|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Koboldkerzen abgeben
    .accept 61 >> Lieferung nach Sturmwind annehmen
    .turnin 107 >> Gebt die Quest Nachricht an William ab
    .accept 112 >> Akzeptiert die Quest Die Suche nach dem Tang
step
    >>Tötet |cRXP_ENEMY_Murlocs|r und |cRXP_ENEMY_Murloc Streamrunners|r. Plündert sie für |cRXP_LOOT_Kelp Fronds|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> BETRETET die Jaspismine
step
    >>|cRXP_WARN_Folgt dem Weg durch die Mitte, um die Jaspismine zu erkunden|r
    >>|cRXP_WARN_Verlasst die Jaspismine sobald das Ziel abgeschlossen ist|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Gebt die Quest Weitere Sorgen ab
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >> Akzeptiert die Quest Suche nach den vermissten Wachen
    .accept 52 >> Akzeptiert die Quest Grenzschutz
step
    #era
    #completewith Prowlers
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    >>|cRXP_WARN_Priorisiert das Töten jedes |cRXP_ENEMY_Junger Waldbär|r, den ihr seht|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Klickt |cRXP_PICK_Ein halb aufgefressener Körper|r auf dem Boden
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >> Akzeptiert die Quest Rolfs Schicksal
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Ein Bündel Probleme annehmen
step
    #era
    #completewith Bundles
    >>Plündert die |cRXP_LOOT_Kleinholzbündel|r vom Boden |cRXP_WARN_am Stamm der Bäume|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Klickt auf |cRXP_PICK_Rolfs Leichnam|r auf dem Boden
    >>|cRXP_WARN_Passt auf, da in der Nähe |cRXP_ENEMY_Murlocs|r angreifen könnten, wenn ihr|r |cRXP_PICK_Rolfs Leichnam|r anklickt
    >>|cRXP_ENEMY_Murlocfutterwühler|r |cRXP_WARN_werden|r |T135915:0|t[Schwachen Trank trinken] |cRXP_WARN_wirken, was sie selbst für 61-68 heilt|r
    .turnin 45 >> Gebt die Quest Rolfs Schicksal ab
    .accept 71 >> Meldung bei Thomas annehmen
step
    #era
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>Tötet |cRXP_ENEMY_Streuner|r und |cRXP_ENEMY_Junger Waldbär|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Young Forest Bear
step
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Plündert die |cRXP_LOOT_Kleinholzbündel|r vom Boden |cRXP_WARN_am Stamm der Bäume|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
step
    #era
    #label Bears
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Akzeptiert die Quest Rote Leinenwaren
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Tötet |cRXP_ENEMY_Surena Caledon|r. Plündert sie für |cRXP_LOOT_Surenas Halsschmuck|r
    >>|cRXP_WARN_Fokussiert euch auf das sehr schnelle Töten von |cRXP_ENEMY_Surena Caledon|r |r
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] kontinuierlich auf|cRXP_WARN_auf |cRXP_ENEMY_Morgan der Sammler|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #era
    #completewith next
    >>Tötet die |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Leinenkopftuch|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    .goto Elwynn Forest,69.3,79.0
    >>Tötet |cRXP_ENEMY_Prinzessin|r. Plündert sie für |cRXP_LOOT_Meesinghalsband|r
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird mit beiden ihrer |r |cRXP_ENEMY_Gefolgsschwein|r angreifen
    >>|cRXP_ENEMY_Prinzessin|r |cRXP_WARN_wird auch eine|r |T132368:0|t[Sturmattacke] machen|cRXP_WARN_was viel Schaden verursacht|r
    .complete 88,1
    .mob Princess
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |T134939:0|t[|cRXP_LOOT_Westfall-Urkunde|r]
    .use 1972>>Benutzt die |T134939:0|t[|cRXP_WARN_Westfall-Urkunde|cRXP_LOOT_] |rum die Quest zu starten|r
    >>|cRXP_WARN_Die|r |T134939:0|t[|cRXP_LOOT_Westfall-Urkunde|r] |cRXP_WARN_ist ein sehr seltener Drop. Überspringt diesen Schritt, falls ihr sie nicht bekommt|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Furlbrows Urkunde annehmen
step
    #era
    >>Tötet die |cRXP_ENEMY_Bandit der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Leinenkopftuch|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    #era
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Sterbt und respawnt beim Geistheiler, wenn ihr wenig Leben habt, sonst lauft zurück und gebt die Quest ab
step
    #era
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Gebt die Quest Rote Leinenwaren ab
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
step
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    >>|cRXP_WARN_BLEIBT AUF DER HAUPTSTRASSE UND VERMEIDET ALLE NAHEGELEGENEN MOBS AUF DEM WEG|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft die folgenden Gegenstände, um schneller bei Loch Modan abzugeben
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>Es kann nützlich sein, zusätzliche |T134437:0|t[Stück Eber Fleisch] zu kaufen, um |T133971:0|t[Kochkunst] bis Stufe 50 zu leveln
    >>|T134342:0|t[Ebergedärme]
    >>|T134027:0|t[Bärenfleisch]
    >>|T134437:0|t[Spinnensekret]
    >>|T134437:0|t[Stück Eber Fleisch]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,4,86,1 -- Chunk of Boar Meat (4)
    .target Auctioneer Jaxon
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Gebt die Quest Lieferung nach Sturmwind ab
    >>|cRXP_WARN_Wir wählen die|r |T132383:0|t[Explosiv Raketen] |cRXP_WARN_als Belohnung. Sie verursachen ordentlichen Schaden und können für "Split-Pulls" genutzt werden, was unglaublich nützlich ist|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Split-Pulling". Es ist ein kurzes Video und äußerst lehrreich|r
    .target Morgan Pestle
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .turnin 1688 >> Gebt die Quest Surena Caledon ab
    .accept 1689 >> Die Bindung annehmen
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Reist zur untersten Ebene des Geschlachteten Lammes|r
    .cast 7728 >> |cRXP_WARN_Benutzt|r |T133292:0|t[Blutsteinhalsreif] |cRXP_WARN_um einen|r |cRXP_ENEMY_Beschworenen Leerwandler|r herbeizurufen
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Tötet den |cRXP_ENEMY_Beschworenen Leerwandler|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
     #softcore
    >>Benutzt Lebensabzug auf von Euch Weg zurück zu |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.2,78.5
    .turnin 1689 >> Gebt die Quest Die Bindung ab
step << Warlock
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Gebt die Quest Die Bindung ab
step << Warlock
    #softcore
    #completewith next
    .goto StormwindClassic,25.2,78.5
    .deathskip >> Sterbt und respawnt beim Geistheiler, indem ihr Aderlass benutzt und auf dem Freudenfeuer neben euch steht
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Lauf nach Goldhain
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
    .accept 239 >> Akzeptiert die Quest Hilfe für die Weststromgarnison!
    .target Marshal Dughan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> Gebt die Quest Die Suche nach dem Tang ab
    .accept 114 >> Akzeptiert die Quest Die Flucht
    .target William Pestle
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Geht im Gasthaus nach oben
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
    .target Priestess Josetta
    .trainer >> Trainiere deine Klassenfähigkeiten
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Reist zu den Weinbergen der Maclures
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Gebt die Quest Die Flucht ab
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .target Ma Stonefield
    .turnin 88 >> Gebt die Quest Prinzessin muss sterben! ab
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    >>|cRXP_WARN_Überspringt die Questabgabe vorerst, falls ihr nicht genug [Brocken Eberfleisch] habt|r
    .target "Auntie" Bernice Stonefield
    .turnin 86 >> Gebt die Quest Pastete für Billy ab
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >> Brecht die Quest Pastete für Billy ab
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >> Reist zur Weststromgarnison
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .goto Elwynn Forest,24.234,74.450
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 176 >> Akzeptiert die Quest Gesucht: "Hogger"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .goto Elwynn Forest,24.234,74.450
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 176 >> Akzeptiert die Quest Gesucht: "Hogger"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .solo
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .accept 11 >> Akzeptiert die Quest Kopfgeld auf die Flusspfotengnolle
    .target Deputy Rainer
step
    #completewith GnollEnd
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für den|T134939:0|t[|cRXP_LOOT_Goldabholplan|r]
    .use 1307 >>|cRXP_WARN_Benutzt den |T134939:0|t[|cRXP_LOOT_Goldabholplan|r] um die Quest zu starten|r
    >>|cRXP_WARN_Der |T134939:0|t[|cRXP_LOOT_Goldabholplan|r] ist ein sehr seltener Drop. Ignoriert diesen Schritt, wenn ihr ihn nicht bekommt|r
    >>|cRXP_ENEMY_Gruff Swiftbite|r |cRXP_WARN_ein seltener Spawn, hat aber eine 100% Dropchance|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Akzeptiert die Quest Der Sammler
    .unitscan Gruff Swiftbite
step << !Warlock
    .group
    #completewith next
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Bemalte Gnollarmbinde|r
    >>|cRXP_WARN_Sorgt dafür, dass ihr 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eure bevorstehende Die Bruderschaft der Defias-Klassenquest habt|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    #completewith next
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Bemalte Gnollarmbinde|r
    >>|cRXP_WARN_Sorgt dafür, dass ihr 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eure bevorstehende Die Bruderschaft der Defias-Klassenquest habt|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Tötet |cRXP_ENEMY_Hogger|r. Plündert ihn für |cRXP_LOOT_Gewaltige Gnollklaue|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_kann an mehreren Orten erscheinen|r
    >>|cRXP_WARN_Wirkt |T136183:0|t[Furcht] |cRXP_WARN_auf |cRXP_ENEMY_Hogger|r kontinuierlich und benutzt von Euch reguläre DoTs, um ihn zu töten|r
    >>|cRXP_WARN_Diese Quest ist schwierig. Findet eine Gruppe für ihn, falls nötig. Überspringt diesen Schritt, wenn ihr keine Gruppe findet oder ihn solo nicht besiegen könnt|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    .group
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Tötet |cRXP_ENEMY_Hogger|r. Plündert ihn für |cRXP_LOOT_Gewaltige Gnollklaue|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_kann an mehreren Orten erscheinen|r
    >>|cRXP_WARN_Diese Quest ist schwierig. Findet eine Gruppe für ihn, falls nötig. Überspringt diesen Schritt, wenn ihr keine Gruppe findet oder ihn solo nicht besiegen könnt|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #label GnollEnd
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Tötet |cRXP_ENEMY_Wicht der Flusspfoten|r und |cRXP_ENEMY_Kundschafter der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Bemalte Gnollarmbinde|r
    >>|cRXP_WARN_Sorgt dafür, dass ihr 10|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eure bevorstehende Die Bruderschaft der Defias-Klassenquest habt|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >> Gebt die Quest Gesucht: "Hogger" ab
    .isQuestComplete 176
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> Gebt die Quest Der Sammler ab
    .isOnQuest 123
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Rainer|r
    .turnin 11 >> Gebt die Quest Kopfgeld auf die Flusspfotengnolle ab
    .target Deputy Rainer
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Lauf nach Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bauer Brauenwirbel|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> Akzeptiert die Quest Tod auf den Feldern
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .accept 38 >> Akzeptiert die Quest Westfalleintopf
    .accept 22 >> Akzeptiert die Quest Pastete aus Geiferzahnleber
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> Sterbt absichtlich und belebt euch beim Geistheiler wieder, oder lauft zu Späherkuppe
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
    .target Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Holt euch den Flugpunkt der Späherkuppe
    .fly Stormwind >> Fliege nach Sturmwind << Dwarf Paladin
    .target Thor
step << !Paladin
    .hs >> Benutzt euren Ruhestein nach Loch Modan
step << Dwarf Paladin
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Geh zur Tiefeneisenbahn. Nehme sie in Richtung Ironforge
    --.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Do a logout skip inside the Tram. Click here for video reference|r
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som--h
#classic
#tbc
<< Alliance
#name 11-13 Loch Modan (Zwerg/Gnom)
#version 1
#group RestedXP Überlebens-Guide (A)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Gnome/Dwarf
#next 13-15 Westfall

step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >>Akzeptiert die Quest Der Foliant der Offenbarung
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >> Reist zu |cRXP_FRIENDLY_Tiza Battleforge|r oben
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 2999 >>Gebt die Quest Foliant der Offenbarung ab
    .accept 1645 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1645 >>Gebt die Quest Der Foliant der Offenbarung ab
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Benutzt |T133739:0|t[|cRXP_LOOT_Der Foliant der Offenbarung|r] um die Quest zu starten|r
    .accept 1646 >>Akzeptiert die Quest Der Foliant der Offenbarung
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1646 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1647 >>Akzeptiert die Quest Der Foliant der Offenbarung
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrouilliert den äußeren Ring der Eisenschmiede neben dem Auktionshaus|r
    .turnin 1647 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1648 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .turnin 1648 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1778 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tiza Battleforge|r up stairs
    .target Tiza Battleforge
    .turnin 1778 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1779 >>Akzeptiert die Quest Der Foliant der Offenbarung
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Muiredon Battleforge|r
    .target Muiredon Battleforge
    .turnin 1779 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1783 >>Akzeptiert die Quest Der Foliant der Offenbarung
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Fliegt nach Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .isQuestComplete 418
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
step
    #completewith RTB
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    .vendor 1682 >> |cRXP_BUY_Buy|r |T133634:0|t[Klein Brown Pouches] |cRXP_BUY_if needed|r
    .target Yanni Stoutheart
step
    #completewith RTB
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Ofenglut|r
    .vendor 6734 >> |cRXP_BUY_Kauft einige|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_wenn nötig|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Kauft einige|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_falls nötig|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
step << Hunter
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vrok Blunderblast|r
    >>|cRXP_BUY_Kauft ein|r |T135613:0|t[Jägerschießeisen] |cRXP_BUY_wenn ihr euch es leisten könnt|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
step
    .group
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
    .solo
    #completewith StormpikeStop
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
    .group
    #completewith MinerGear
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .group
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Betretet die Silberbachmine
step
    .group
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Öffnet |cRXP_PICK_Kisten der Minenarbeiterliga|r. Plündert sie für die |cRXP_LOOT_Minenarbeiterausstattung|r
    >>|cRXP_WARN_|cRXP_PICK_Kisten der Minenarbeiterliga|r sind überall in der Mine zu finden|r
    >>|cRXP_WARN_Ihr könnt diese Quest später machen, falls ihr sie jetzt überspringen möchtet|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group
    #completewith StormpikeStop
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nillen Andemar|r
    .vendor >>|cRXP_FRIENDLY_Nillen Andemar|r |cRXP_WARN_verkauft|r |T133476:0|t[|cRXP_FRIENDLY_Schwerer Stachelkolben|r] |cRXP_WARN_welcher ein Gegenstand mit limitiertem Angebot ist|r
    >>|cRXP_WARN_Überprüft, ob es verfügbar ist, und kauft es, wenn ihr könnt. Wenn ihr es euch nicht leisten könnt, farmt dann Geld von den |cRXP_ENEMY_Tunnel Ratten|r in der Nähe, bis ihr genug habt|r
    >>|cRXP_WARN_Tut dies schnell, da ein anderer Spieler es vor euch kaufen könnte|r
    .target Nillen Andemar
step
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
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
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Verkaufe und repariere falls nötig|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 353 >> Gebt die Quest Stormpikes Lieferung ab
    .target Mountaineer Stormpike
step
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .mob +Forest Lurker
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Gebt die Quest Rattenfang ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r
    >>|cRXP_BUY_Kauft einen|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_zusammen mit 2|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_. Kauft einen beliebigen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_falls nötig|r
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,40,0
    .goto Loch Modan,31.54,74.96,40,0
    .goto Loch Modan,33.88,76.58
    >>Tötet |cRXP_ENEMY_Splittersteintroggs|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    #era
    .goto Loch Modan,27.4,48.4
    .xp 13+9600 >> Grinded bis 9600+/11400xp
step
    #som--xpgate
    .goto Loch Modan,27.4,48.4
    .xp 14-2300 >> Farmt bis Stufe 14 (noch 2300 XP, 9100/11400)
step
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Lauft den Schmutzpfad hinauf und springt dann in den Bunker hinunter
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r
    .target Captain Rugelfuss
    .goto Loch Modan,23.233,73.675
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,86.09,51.15
    .zone Dun Morogh >> Reist nach Dun Morogh
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>|cRXP_WARN_Benutzt das|r |T133439:0|t[Symbol des Lebens] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Narm Faulk|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm Faulk|r
    .use 6866
    .turnin 1783 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1784 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Tötet |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |cRXP_LOOT_Dunkeleisenmanuskript|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
	#completewith next
    .hs >> Ruhestein nach Sturmwind
step << Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Hunter
    .goto Ironforge,69.872,82.890
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Regnus Thundergranite|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Regnus Thundergranite
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dink
step << Mage/Priest/Warlock
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Ironforge Auktionator|r
    >>|cRXP_BUY_Kauft einen|r |T135144:0|t[Großer Magiezauberstab] |cRXP_BUY_wenn er weniger al 33s 40c kostet|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Mage/Priest/Warlock
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich unten mit |cRXP_FRIENDLY_Harick Felstrommel|r
    >>|cRXP_WARN_Falls ihr einen|r |T135144:0|t[Großer Magiezauberstab] |cRXP_WARN_nicht bekommen könnt, kauft einen|r |T135468:0|t[Glimmender Zauberstab] |cRXP_WARN_und rüstet ihn aus, wenn ihr Stufe 15 erreicht|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
step << Warlock
    #softcore
    #requires Wand2
    .goto Ironforge,51.1,8.7,15,0 >> Betretet das Gebäude
    .goto Ironforge,50.4,6.3
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Warlock
    #hardcore
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jubaal Leichenfund|r
    .vendor >> |cRXP_BUY_Kauft|r |T133738:0|t[Zauberfoliant des Schattenverzehrens (Rang 1)] |cRXP_BUY_und|r |T133738:0|t[Zauberfoliant der Opferung (Rang 1)] |cRXP_BUY_falls ihr es euch leisten könnt|r
    .target Jubahl Corpseseeker
step << Rogue
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hulfdan Blackbeard|r unten
    .turnin -2218 >> Gebt die Quest Straße der Rettung ab
    .target Hulfdan Blackbeard
step << Rogue
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Fenthwick
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Toldren Deepiron
step << !Paladin !Warrior !Hunter !Warlock skip
    #completewith next
    +Führt einen Logout-Skip durch, indem ihr auf einen der Greif-Köpfe springt, euch abmeldet und dann wieder anmeldet
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Click here for video reference|r
    .zoneskip Ironforge,1
step << !Paladin
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Betretet die Tiefenbahn. Nehmt sie nach Sturmwind
    >>|cRXP_WARN_Level von Euch|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_und|r |T133971:0|t[Kochkunst] |cRXP_WARN_if needed while waiting for the tram|r
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
step
    #completewith Fly2WF
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Zahnrad|r
    .vendor 5519 >> |cRXP_BUY_Kauft eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_beim Händler (falls sie verfügbar ist)|r
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Billibub Zahnrad|r keine hat|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft 1 oder 2|r |T135343:0|t[Scimitars] |cRXP_BUY_falls ihr sie euch leisten könnt oder etwas Besseres vom Auktionshaus|r
    .collect 2027,2 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy 1 oder 2|r |T135343:0|t[Scimitars] |cRXP_BUY_if ihr könnt afford it|r
    .collect 2027,2 --Scimitar
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
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft die folgenden Gegenstände für schnellere Abgaben später in Westfall
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T133972:0|t[Sehniges Geierfleisch]
    >>|T133884:0|t[Murlocauge]
    >>|T135997:0|t[Geiferzahnschnauze]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Geiferzahnleber]
    >>|T132794:0|t[Fläschchen Öl]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    #label Fly2WF
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
]])
