if GetLocale() ~= "deDE" then return end

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 12-13 Dun Morogh SoD
#displayname 12-13 Dun Morogh
#next 13-16 Loch Modan SoD
#defaultfor !NightElf

step << Warrior
    #season 2
    >>|cRXP_WARN_Sucht nach dem|r |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r. |cRXP_WARN_Er kann überall in dem kleinen Bereich sein, der auf von Euch Karte markiert ist|r
    >>Findet ihn und fordert ihn zu einem Duell heraus. Nach dem Sieg wird er eine kleine Kiste spawnen, die euch die Rune der |T132334:0|t[|cRXP_FRIENDLY_Blutraserei|r] gewährt
    .goto Dun Morogh,52.6,45.0
    .goto Dun Morogh,52.4,47.4,0
    .goto Dun Morogh,52.6,48.8,0
    .goto Dun Morogh,53.6,47.6,0
    .goto Dun Morogh,53.0,46.2,0
    .goto Dun Morogh,55.0,46.6,0
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    #optional
    #completewith next
    .train 403474 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Blutraserei|r] |cRXP_WARN_zum Trainieren|r |T136012:0|t[Blutraserei]
    .use 204441
    .itemcount 204441,1
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_KLICKT HIER Falls ihr Schwierigkeiten habt|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Klickt hier für Videoreferenz|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step << Warrior/Mage
    #season 2
    #sticky
    #optional
    #label rune1
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r << Warrior
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert sie für |T134939:0|t|cRXP_LOOT_[Zaubernotizen: ENEGSG IERIFI]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
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
step << Warrior
    #season 2
    #optional
    #requires rune1
    .train 403476 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r |cRXP_WARN_um|r |T136048:0|t[Wütender Donner] zu erlernen
    .use 204809
    .itemcount 204809,1
step << Mage
    #optional
    #season 2
    #requires rune1
    #completewith GolBolarQuarry
    .collect 211779,1 >>Ihr benötigt ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r um |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: ENEGSG IERIFI|r] zu benutzen
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_LOOT_[Zaubernotizen: ENEGSG IERIFI]|r |cRXP_WARN_um|r |T236227:0|t[Eisige Finger] zu trainieren
    .use 203753
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rudra Bernruh|r
    .turnin 314 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >> Lauf zum Gol'Bolar Steinbruch
    .subzoneskip 134
step << !Hunter
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Kauft bis zu 10|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_bei ihm, falls benötigt|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Kauft bis zu 5|r |T133968:0|t[Frisch gebackenes Brot] |cRXP_BUY_und|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_bei ihm, falls benötigt|r << !Warrior !Rogue
    .target Kazan Mogosh
--XX Mud slappers instead
step << Human Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dank Drizzlecut|r
    .goto Dun Morogh,69.3,55.5
    .train 2581 >>Erlernen Bergbau, wirkt Mineraliensuche
    .target Dank Drizzlecut
    .skill mining,1
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r und |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto Dun Morogh,69.084,56.330
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
    .xp >12,1,QuarryEnd
step << !Human Rogue
    #season 2
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
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Felsenkiefertrogg-Schädelschläger|r und |cRXP_ENEMY_Felsenkiefertrogg-Knochenschnapper|r. Beute sie für |T134327:0|t[|cRXP_LOOT_Top-Links Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |T134331:0|t[Schwarzrattes Notiz] und |T134327:0|t[|cRXP_LOOT_Linkes unteres Kartenteil]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208205,1 --Blackrat's Note (1)
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 400094,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |T134331:0|t[Schwarzrattes Notiz]
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208205,1
    .mob Dark Iron Spy
    .train 400094,1
step <<< !Human Rogue
    #season 2
    #optional
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Linkes unteres Kartenteil]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step <<< !Human Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Benutzt eines der|r |T134327:0|t[|cRXP_LOOT_Kartenteile]|r |cRXP_WARN_um sie zur|r |T134269:0|t[|cRXP_LOOT_Schatzkarte von Dun Morogh|r] zu kombinieren
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << !Human Rogue
    #season 2
    #softcore
    #optional
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
    .train 398196,1
step <<< !Human Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Benutzt die|r |T134269:0|t[|cRXP_LOOT_Schatzkarte von Dun Morogh|r] |cRXP_WARN_unter der kleinen Brücke. Dadurch kommt ein |cRXP_PICK_Vergrabener Schatz|r zum Vorschein|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step <<< !Human Rogue
    #season 2
    >>Öffnet den |cRXP_PICK_Vergrabenen Schatz|r. Plündert ihn für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << !Human Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Benutzt die|r|T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r] |cRXP_WARN_zum Trainieren von|r |T134536:0|t[Pistolenheld]
    .use 203991
    .itemcount 203991,1
step << !Human Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Sprecht mit |cRXP_FRIENDLY_Schwarzratte|r, um die |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] zu erhalten
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << !Human Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
step << Dwarf Paladin
    #sticky
    #label PalaCloth
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r und |cRXP_ENEMY_Knochenknacker der Felsenkiefer|r. Plündert sie für |T132889:0|t[Leinenstoff] << Dwarf Paladin
    >>|cRXP_WARN_behaltet den|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für eine spätere Quest|r << Dwarf Paladin
    .collect 2589,10,1648,1 --Linen Cloth (10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
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
step << Mage
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_Sucht nach anderen Magiern oder Hexenmeistern in der Nähe des |cRXP_ENEMY_Eingefrorener Trogg|r oder im allgemeinen Chatfunktionen (tippt /1 in den Chatfunktionen). Ihr könnt dies auch solo machen, wenn niemand da ist|r
    >>|cRXP_WARN_Wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_auf den |cRXP_ENEMY_Eingefrorener Trogg|r, um einen Stapel|r |T135805:0|t[Erhitzen]|cRXP_WARN_ anzuwenden. Wendet 5 Stapel gleichzeitig an, um den |cRXP_ENEMY_Eingefrorener Trogg|r zu töten. Plündert ihn für den|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notizen: Ausgebrannt]|r
    >>|cRXP_WARN_Falls es niemanden gibt, der euch hilft, geht in Nahkampfbereich des Troggs und benutzt|r |T135820:0|t[Lebende Flamme] |cRXP_WARN_an ihm. Bleibt im Nahkampfbereich, um euch im Kampf zu halten und benutzt|r |T135820:0|t[Lebende Flamme] |cRXP_WARN_ständig. Es wird den Trogg nach 5-6 Zaubersprüchen töten.|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step << Mage
    .train 401759 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_FRIENDLY_[Zauber Notizen: Ausgebrannt]|r |cRXP_WARN_zum Lernen|r |T132686:0|t[Brustteil prägen - Feuerfontäne]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
step << Dwarf Paladin
    #optional
    #label RockjawEnd
    #requires PalaCloth
step
    #label RockjawEnd << !Paladin
    #requires Skullthumpers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großknecht Stonebrow|r und |cRXP_FRIENDLY_Senator Mehr Stonehallow|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .goto Dun Morogh,68.671,55.969
    .target Senator Mehr Stonehallow
    .target Foreman Stonebrow
step
    #optional
    #completewith next
    #label QuarryEnd
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >> Reisen zu |cRXP_FRIENDLY_Pilot Hammerfoot|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step << Warrior/Mage
    #season 2
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r << Warrior
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |T134939:0|t|cRXP_LOOT_[Zaubernotizen: ENEGSG IERIFI]|r << Mage
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 203753,1 << Mage -- Spell Notes: RING SEFF OSTROF (1)
    .train 403476,1 << Warrior
    .train 401765,1 << Mage
step
    .goto Dun Morogh,78.97,37.14
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des wütenden Donners]|r |cRXP_WARN_um|r |T136048:0|t[Wütender Donner] zu erlernen
    .use 204809
    .itemcount 204809,1
step << Mage
    #season 2
    #completewith next
    .collect 211779,1 >>Ihr benötigt ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r um |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: ENEGSG IERIFI|r] zu benutzen
    .disablecheckbox
    .train 401765 >>|cRXP_WARN_Benutzt die|r |T134939:0|t|cRXP_LOOT_[Zaubernotizen: ENEGSG IERIFI]|r |cRXP_WARN_um|r |T236227:0|t[Eisige Finger] zu trainieren
    .use 203753
step
    #xprate <1.49 << Rogue
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    >>|cRXP_WARN_Wählt den|r |T135641:0|t[Handwerkerdolch] |cRXP_WARN_. Sichert ihn für später|r << Rogue
    .turnin 417 >> Gebt die Quest Pilotenrache ab << !Rogue
    .turnin 417,1 >> Gebt die Quest Pilotenrache ab << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    >>|cRXP_WARN_Wählt den|r |T135641:0|t[Handwerkerdolch]
    .turnin 417,1 >> Gebt die Quest Pilotenrache ab
    .target Pilot Hammerfoot
step << Rogue
    #xprate >1.49
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_Legt den|r |T135641:0|t[Handwerkerdolch] |cRXP_WARN_in die Haupthand von Euch an|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #label enterloch
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >>Geht durch den Tunnel nach Loch Modan
    .zoneskip Loch Modan
step
    #optional
    #completewith lochstart1
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>Sammelt jegliches |cRXP_LOOT_Crisp Spinne Fleisch|r auf, das ihr findet, für eine spätere Quest
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Speichert jede|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_um zum Leveln zu nutzen|r |T133971:0|t[Kochkunst] |cRXP_WARN_später|r
step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_Sucht nach |cRXP_FRIENDLY_Greishan Eisenherd|r, der auf der Straße durch Loch Modan patrouliert. Sein Patrouillenweg ist auf eurer Karte markiert|r
    >>|cRXP_BUY_Kauft einen|r |T237359:0|t[Böswilliger Kuchen] |cRXP_BUY_von ihm|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_Benutzt die|r |T237359:0|t[Böswilliger Kuchen] |cRXP_WARN_um sie zu essen. Sobald der|r |T132108:0|t[Höllische Verdauungsstörung] |cRXP_WARN_Debuff abfällt, werdet ihr das|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Kanalisierung|r] erhalten
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Kanalisierens|r] |cRXP_WARN_um |r |T136168:0|t[Meisterkanalisierer] zu trainieren
    .use 208750
    .itemcount 208750,1
step << Dwarf Paladin
    .xp 12
step
    #label lochstart1
    #optional
    .goto 1432,34.405,48.276
    .subzone 144 >> Reist nach Thelsamar
step
    #completewith lochpatrol3
    .abandon 1338 >> Brecht die Quest |cRXP_FRIENDLY_Stormpike's Task|r ab, falls ihr sie noch habt, sonst könnt ihr später eine Quest nicht annehmen
step
    #label lochpatrol1
    #completewith lochpatrol2
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    #optional
    #completewith next
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> BETRETET den Gasthof zum Starkbierlager
    .subzoneskip 2101
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r innerhalb
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
    .target Vidra Hearthstove
step << Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r innerhalb
    .vendor >> |cRXP_BUY_Verkauft Trödel und kauft bis zu vier|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wenn ihr sie noch benötigt|r
    .target Yanni Stoutheart
step << Dwarf/Gnome
    #label ThelsaHS
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Hearthstove|r innerhalb
    .home >> Setzt euren Ruhestein nach Thelsamar
    .target Innkeeper Hearthstove
step << Dwarf/Gnome
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Akzeptiert die Quest Ehrenstudenten
    .target Brock Stoneseeker
step
    #optional
    #label lochpatrol2
step
    #label lochpatrol3
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
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell

step << Dwarf/Gnome
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Gebt die Quest Ehrenstudenten ab
    .accept 6391 >> Akzeptiert die Quest Flug nach Eisenschmiede
    .target Thorgrum Borrelson
step << Hunter
    #sticky
	.goto Loch Modan,33.9,54.0
    .goto Loch Modan,36.6,53.2,0
    .goto Loch Modan,30.0,53.5,0
    .train 172551 >> Zähmen a Waldlauerer
    >>|cRXP_WARN_Es ist das Haustier mit dem höchsten Schaden, das für Zwergenjäger leicht verfügbar ist. Ihr werdet es schließlich durch einen Raptor aus dem Sumpfland ersetzen wollen.|r
    .unitscan Forest Lurker
step << Human
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
step << Dwarf/Gnome
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Priest Dwarf
    #season 2
    #completewith end
    .train 402852 >> |cRXP_WARN_Benutzt das|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r]
    >>|cRXP_WARN_Ihr müsst 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffs erhalten, indem ihr /beten neben einem Altar des Lichts in der Sturmwindkathedrale, in Loch Modan oder im Mystischen Bezirk in Eisenschmiede eingebt|r
    >>|cRXP_WARN_Der |T136057:0|t|cRXP_PICK_Meditation über Elune|r Buff muss von einem anderen Priester-Spieler stammen, indem die /beten-Emote auf euch angewendet wird, während ihr mit /knien kniet. Falls ihr einen anderen Priester mit einem anderen Meditationsbuff seht, fragt ihn/sie danach.|r
    --.use 205947
    .target Altar of Light
    .itemcount 205947,1
step << Rogue !Human
    #optional
    #completewith next
    .goto 1455,22.283,79.620,30,0
    .goto 1455,27.315,82.828,30,0
    .goto 1455,38.913,71.447,30,0
    .goto 1455,46.624,53.683,30,0
    .goto 1455,60.781,25.800,30,0
    .goto 1455,59.236,14.974,30,0
    .goto 1455,52.941,12.466,12,0
    .goto 1455,51.919,14.468,12,0
    .goto 1455,51.438,16.000,10 >>Reisen zu |cRXP_FRIENDLY_Hulfdan Blackbeard|r innerhalb unten
step << Rogue !Human
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hulfdan Blackbeard|r unten
    .turnin 2218 >> Gebt die Quest Straße der Rettung ab
    .target Hulfdan Blackbeard
step << Rogue !Human
    #season 2
    .goto Ironforge,51.913,13.383
    >>Öffnet die |cRXP_PICK_Verstaubte Kiste|r draußen. Plündert sie für die |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r]
    >>|cRXP_WARN_Dies wird zwei Level-10-|cRXP_ENEMY_Halsabschneider|r beschwören, die dich angreifen werden|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
    .zoneskip Ironforge,1
step << Rogue !Human
    #season 2
    .train 400081 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] |cRXP_WARN_zum Trainieren von|r |T135610:0|t[Zwischen die Augen]
    .use 204174
    .itemcount 204174,1
---------pt1
step << Dwarf/Gnome
    #optional
    #completewith next
    .goto 1455,44.029,50.074,20,0
    .goto Ironforge,39.550,57.490,12 >>Reisenzu |cRXP_FRIENDLY_Senator Barin Redstone|r
step << Dwarf/Gnome
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Gebt die Quest Die Berichte ab
    .target Senator Barin Redstone
step << !Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft einen|r |135640:0|t[Jambiya] |cRXP_BUY_von ihr|r
    .collect 2207,1 --Jambiya
    .target Brenwyn Wintersteel
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.0
step << Dwarf/Gnome
    #label Ride
    .goto Ironforge,51.521,26.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Golnir Bouldertoe|r innerhalb
    .turnin 6391 >> Gebt die Quest Fahrt nach Eisenschmiede ab
    .accept 6388 >> Akzeptiert die Quest Gryth Thurden
    .target Golnir Bouldertoe
step << Dwarf/Gnome
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Fliegt nicht irgendwohin|r
    .turnin 6388 >> Gebt die Quest Gryth Thurden ab
    .accept 6392 >> Akzeptiert die Quest Rückkehr zu Brock
    .target Gryth Thurden
step << Dwarf Paladin
    #optional
    #completewith next
    .goto 1455,44.403,49.020,20,0
    .goto 1455,35.239,32.789,20,0
    .goto 1455,27.208,12.552,20,0
    .goto Ironforge,24.2,6.8,12 >>Reisen zu |cRXP_FRIENDLY_Brandur Ironhammer|r
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r
    .accept 2999 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .trainer >> Trainiere deine Klassenfähigkeiten
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
    --.accept 1778 >>Accept The Tome of Divinity
    .unitscan John Turner
step << Gnome Mage
    .goto Ironforge,27.0,8.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bink|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bink
step << Gnome Mage
    #season 2
    .goto Ironforge,19.197,56.094
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barim Jurgenstaad|r
    >>|cRXP_BUY_Kauft mindestens 2|r |T135933:0|t[Verständnisamulett] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Diese werden zum Erlernen von Runen benötigt|r
    .collect 211779,2
    .target Barim Jurgenstaad
step << Dwarf/Gnome
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
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
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r und |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Trainiert Wurfwaffen und 2H-Streitkolben wenn ihr das nicht schon vorher getan habt
    .train 2567 >> Erlernt Wurfwaffen
    .goto Ironforge,62.237,89.628
    .train 199 >> Erlernen 2h Streitkolben
    .goto Ironforge,61.177,89.508
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior !Human
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior !Human
    #optional
    #completewith Dirt
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Reist zu |cRXP_FRIENDLY_Bruuk Barleybeard|r in das Gasthaus
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Sprecht mit |cRXP_FRIENDLY_Bruuk Barleybeard|r innerhalb
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Sprecht mit |cRXP_FRIENDLY_Bruart|r um einen Kampf zu beginnen
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und benutzt|r |T133688:0|t[Bandagen] |cRXP_WARN_falls ihr welche habt/falls nötig|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und benutzt|r |T133688:0|t[Bandagen] |cRXP_WARN_falls ihr welche habt/falls nötig|r
    >>|cRXP_WARN_Nach dem Besiegen von |cRXP_ENEMY_Bruart|r:|r
    >>Sprecht mit |cRXP_FRIENDLY_Bruuk Gerstenbart|r erneut, um die |T134419:0|t[Rune des rasenden Angriffs] zu erhalten
    >>|cRXP_WARN_Falls er dir die|r |T134419:0|t[Rune des rasenden Angriffs]|cRXP_WARN_nicht gibt, müsst ihr möglicherweise |cRXP_ENEMY_Bruart|r erneut bekämpfen|r
    >>|cRXP_WARN_HINWEIS: Dies kann schwierig sein, solo zu erledigen. Ihr könntet Hilfe benötigen, ansonsten könnt ihr dies später im Leitfaden erneut tun|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune des rasenden Angriffs] |cRXP_WARN_um|r |T134596:0|t[Hosen prägen - Rasender Angriff] zu lernen
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Graviert eure|r |T134596:0|t|cRXP_LOOT_[Hose]|r |cRXP_WARN_mit|r |T134596:0|t[Hosen prägen - Rasender Angriff]
    .train 425447,3
step << Hunter
    #optional
    #completewith next
    .goto 1455,66.847,83.366,15,0
    .goto Ironforge,70.86,85.83,15 >>Reisen zu |cRXP_FRIENDLY_Belia Thundergranite|r
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belia Donnerstein|r
    .turnin 6086 >> Gebt die Quest Die Ausbildung des Tiers ab
    .target Belia Thundergranite
step << Paladin Dwarf
    #season 2
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Reist zu |cRXP_FRIENDLY_Bruuk Barleybeard|r in das Gasthaus
    .train 425621,1
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Sprecht mit |cRXP_FRIENDLY_Bruuk Barleybeard|r innerhalb
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Sprecht mit |cRXP_FRIENDLY_Bruart|r um einen Kampf zu beginnen
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Erinnert euch,|r |T135924:0|t[Siegel des Kreuzfahrers] |cRXP_WARN_auf ihn zu wirken|r
    >>|cRXP_WARN_NICHT versehentlich|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf ihn wirken|r
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_wenn nötig|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin Dwarf
    #season 2
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Erinnert euch,|r |T135924:0|t[Siegel des Kreuzfahrers] |cRXP_WARN_auf ihn zu wirken|r
    >>|cRXP_WARN_NICHT versehentlich|r |T135906:0|t[Segen der Macht] |cRXP_WARN_auf ihn wirken|r
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und wirkt|r |T135920:0|t[Heiliges Licht] |cRXP_WARN_wenn nötig|r
    >>|cRXP_WARN_Nach dem Besiegen von |cRXP_ENEMY_Bruart|r:|r
    >>Sprecht mit |cRXP_FRIENDLY_Bruuk Gerstenbart|r erneut, um die |T134419:0|t[Rune of Zurechtweisung] zu erhalten
    >>|cRXP_WARN_Falls er dir die|r |T134419:0|t[Rune of Zurechtweisung]|cRXP_WARN_nicht gibt, müsst ihr möglicherweise |cRXP_ENEMY_Bruart|r erneut bekämpfen|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin Dwarf
    #season 2
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune of Zurechtweisung] |cRXP_WARN_um|r |T134596:0|t[Hosen prägen - Zurechtweisung] zu lernen
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin Dwarf
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Graviert eure|r |T134596:0|t|cRXP_LOOT_[Hose]|r mit|r |T134596:0|t[Hosen prägen - Zurechtweisung]
    >>|cRXP_WARN_Erinnert euch|r |T134919:0|t[Zurechtweisung] |cRXP_WARN_auf den Aktionsleisten von Euch zu legen|r
    .train 425621,3
-- step << Dwarf/Gnome
--     #label Ride
--     .goto Ironforge,51.521,26.311
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r inside
--     .fly Loch >> Fly to Loch modan
--     .target Golnir Bouldertoe
step << Dwarf/Gnome
    #label DRT
    #completewith TramEnd
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Betretet die Tiefenbahn
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform in der Tiefenbahn
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
step << Dwarf/Gnome
    >>Benutzt |T133942:0|t[Rattenfänger-Flöte] auf |cRXP_FRIENDLY_Tiefenbahn-Ratten|r in der Tiefenbahn
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << Dwarf/Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform in der Tiefenbahn
    >>Er wird nach dem Abgeben der ersten Quest ein paar Sekunden lang Rollenspiel absolvieren. |cRXP_WARN_Überspringt die Folgequest, wenn ihr sonst die Tram verpassen würdet|r
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .timer 11,Tiefenbahn-Ratteten-Razzia RP
    .accept 6662 >> Akzeptiert die Quest Mein Bruder Nipsy...
    .target Monty
step << Dwarf/Gnome
    #label TramEnd
    >>|cRXP_WARN_Nehmt die Tiefenbahn in Richtung Sturmwind|r
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf, während ihr auf die Tiefenbahn nach Sturmwind wartet, falls nötig|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Ihr benötigt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf Stufe 80 für eine Quest auf Stufe 24|r << Rogue !Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nipsy|r auf der mittleren Plattform auf der Sturmwind Seite der Tiefenbahn
    .turnin 6662 >> Gebt die Quest Mein Bruder Nipsy... ab
    .isOnQuest 6662
    .target Nipsy
    .subzoneskip 2257,1 --Deeprun Tram
step << Dwarf/Gnome
    #optional
    #completewith Order
    .zone Stormwind City >> Betretet Sturmwind
    .isOnQuest 1338
step << !Human
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
    .target Grimand Elmore
step << Dwarf Priest
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Lauf zur Kathedrale in Sturmwind
step << Priest Dwarf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .turnin 5634 >> Gebt die Quest Verzweifeltes Gebet ab
    .target High Priestess Laurena
step << Priest Dwarf
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriesterin Laurena|r
    .train 13908 >> Erlernt Verzweifeltes Gebet
    .target High Priestess Laurena
step << Warrior !Human
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ilsa Corbin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .accept 1638 >> Akzeptiert die Quest Die Ausbildung eines Kriegers
    .target Ilsa Corbin
step << Warrior !Human
    #optional
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Betretet die Taverne
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .turnin 1638 >> Gebt die Quest Die Ausbildung eines Kriegers ab
    .accept 1639 >> Akzeptiert die Quest Bartleby der Trunkenbold
    .target Harry Burlguard
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Gebt die Quest Bartleby der Trunkenbold ab
    .accept 1640 >> Akzeptiert die Quest Besiegt Bartleby
    .target Bartleby
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>Besiegt |cRXP_ENEMY_Bartleby|r
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior !Human
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bartleby|r
    .turnin 1640 >> Gebt die Quest Besiegt Bartleby ab
    .accept 1665 >> Akzeptiert die Quest Bartlebys Becher
    .target Bartleby
step << Warrior !Human
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Harry Burlwacht|r
    .turnin 1665 >> Gebt die Quest Bartlebys Becher ab
    .target Harry Burlguard
step << Warlock !Human
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock !Human
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock !Human
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1688 >> Akzeptiert die Quest Surena Caledon
    .target Gakin the Darkbinder
step << Warlock !Human
    #softcore
    .deathskip >> Sterbt und spawnt  beim Geistheiler, indem ihr |T136126:0|t[Aderlass] benutzt und ihr euch ins Feuer neben euch stellt
    .target Geistheiler
    .isOnQuest 1688
step << Warlock !Human
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Reist in den Wald von Elwynn
    .isOnQuest 1688
step << Warlock !Human
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Tötet |cRXP_ENEMY_Surena Caledon|r. Plündert sie für |cRXP_LOOT_Surenas Halsschmuck|r
    >>|cRXP_WARN_Fokussiert euch auf das sehr schnelle Töten von |cRXP_ENEMY_Surena Caledon|r |r
    >>|cRXP_WARN_Wirkt|r |T136183:0|t[Furcht] kontinuierlich auf|cRXP_WARN_auf |cRXP_ENEMY_Morgan der Sammler|r|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock !Human
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step << Warlock !Human
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step << Warlock !Human
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    >>|cRXP_WARN_Achtet unterwegs auf hochstufige mobs|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .target Deputy Feldon
step << Warlock !Human
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
step << !Human
    .hs >> Benutzt euren Ruhestein nach Loch Modan
    .cooldown item,6948,>0,1 << !Warlock
step << !Warlock !Human
    #label end
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Fliegt nach Loch Modan
    .target Gryth Thurden
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Wetlands
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    >>Kauft |T133745:0|t|cRXP_LOOT_[Gegenstände]|r von ihm und benutzt es zum Trainieren von |T135961:0|t[Siegel des Märtyrertums] << Paladin
    >>Kauft |T133739:0|t|cRXP_LOOT_[Gegenstände]|r von ihm und benutzt es, um |T132185:0|t[Löwenherz] zu erlernen << Hunter
    .collect 226401,1 << Hunter
    .collect 226398,1 << Paladin
step << Dwarf Paladin/Dwarf Hunter
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Milton Garbenbund|r
    >>Falls ihr viel Geld übrig habt, könnt ihr die anderen zwei Testamente von Milton für später kaufen << Paladin
    >>Falls ihr viel Geld zu sparen habt, kauft auch |T133739:0|t|cRXP_LOOT_[Gegenstände]|r von ihm << Hunter
    .collect 216768,1 << Paladin -- Testament of Enhanced Blessings
    .collect 226400,1 << Paladin -- Testament of the Exorcist
    .collect 216770,1 << Hunter -- Treatise on Aspect of the Viper
    .money <5
step << !Human
    .goto Loch Modan,34.8,48.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yanni Stoutheart|r innerhalb
    .vendor >> Kauft |cRXP_BUY_Verkäufer-Ramsch, bis zu vier|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_falls du noch benötigst|r
    .target Yanni Stoutheart
]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#season 2
<< Alliance
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#name 13-16 Loch Modan SoD
#displayname 13-16 Loch Modan
#next 16-17 Westfall SoD
#defaultfor !NightElf

step << Hunter
#optional
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vrok Blunderblast|r
    >>|cRXP_BUY_Kauft ein|r |T135613:0|t[Jägerschießeisen] |cRXP_BUY_wenn ihr euch es leisten könnt|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Bunker
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss

step
#completewith next
    .goto Loch Modan,30.0,68.4,0
    .goto Loch Modan,30.0,68.4,30,0 >> Geht zu Splittersteintal
    .subzoneskip 923
step << Warrior
    #season 2
    #sticky
    #label Geode
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .waypoint Loch Modan,27.01,48.74,50,0
    .waypoint Loch Modan,27.68,56.83,50,0
    .waypoint Loch Modan,33.35,71.59,50,0
    .waypoint Loch Modan,31.54,74.96,50,0
    .waypoint Loch Modan,33.88,76.58,50,0
    >>Tötet |cRXP_ENEMY_Troggs|r. Plündert sie für |cRXP_LOOT_Schädelförmige Geode|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    #season 2
    #sticky
    #label geode2
    #requires Geode
    .goto Loch Modan,33.2,73.8,0,0
    >>Angreifen a |cRXP_ENEMY_Stonesplinter Skullthumper|r
    >>|cRXP_WARN_Während des Kampfes wird es euch treffen und verwandelt die |cRXP_LOOT_Schädelförmige Geode|r in eine |r|T236489:0|t[|cRXP_LOOT_Aufgebrochene schädelförmige Geode|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8,0,0
    #season 2
    #sticky
    #requires geode2
    .use 208848 >>Benutzt |T236489:0|t[|cRXP_WARN_Aufgebrochene schädelförmige Geode|r] |cRXP_LOOT_um|r |T134419:0|t[|cRXP_WARN_Rune des Rasanten Schlags|r] |cRXP_FRIENDLY_zu erhalten|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Mage
    #sticky
    #completewith next
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Tötet |cRXP_ENEMY_Splittersteintrogg|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    >>|cRXP_WARN_Seid vorsichtig denn die |cRXP_ENEMY_Späher der Splittersteintroggs|r wirkt|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: verursacht 14-20 Schaden)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Mage
    #season 2
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>Tötet |cRXP_ENEMY_Splitterstein-Seher|r und plündert sie für |cRXP_LOOT_|T134939:0|t[Zerknaute Zaubernoten]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step << Mage
    #season 2
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Zerknaute Zaubernoten|r] zum Erlernen von |T236220:0|t[Lebende Bombe]
    .train 415936,1
    .use 208854
step
#loop
    .goto Loch Modan,34.7,71.6,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>Tötet |cRXP_ENEMY_Splittersteintrogg|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    >>|cRXP_WARN_Seid vorsichtig denn die |cRXP_ENEMY_Späher der Splittersteintroggs|r wirkt|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: verursacht 14-20 Schaden)|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #requires geode2 << Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Bunker
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
    .target Captain Rugelfuss
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
    .target Mountaineer Cobbleflint
step << !Human
    #completewith Algaz
    .hs >> Benutzt euren Ruhestein nach Thelsamar
    .cooldown item,6948,>0
    .subzoneskip 924,1--valley of kings

step
    #optional
    #completewith Algaz2
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>Sammelt jeden |cRXP_LOOT_Crisp Spinne Fleisch|r auf, den ihr später für eine Quest braucht
    .collect 1081,5,92,1
    .disablecheckbox
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
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r im Bunker
    .turnin -353 >> Gebt die Quest Stormpikes Lieferung ab
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    .target Mountaineer Stormpike
step
    #label Algaz2
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Betretet die Silberbachmine
step
    .goto Loch Modan,35.93,22.55
    >>Öffnet |cRXP_PICK_Kisten der Minenarbeiterliga|r. Plündert sie für die |cRXP_LOOT_Minenarbeiterausstattung|r
    >>|cRXP_WARN_|cRXP_PICK_Kisten der Minenarbeiterliga|r sind überall in der Mine zu finden|r
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .disablecheckbox
    .complete 307,1 -- Miners' Gear (4)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #completewith RatEar
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>Sammelt alles |cRXP_LOOT_Crisp Spinne Fleisch|r, das ihr findet, für eine spätere Quest
    .collect 1081,5,92,1
    .disablecheckbox
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .target Mountaineer Stormpike
step << Mage
    #season 2
    #sticky
    #completewith next
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,35.48,16.82,0
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    >>|cRXP_ENEMY_Tunnel Ratten|r |cRXP_WARN_können überall in Loch Modan spawnen. Überprüft eure Weltkarte für ihre Standorte|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
    #season 2
    #label Loch1
    .goto Loch Modan,50.7,23.9,200 >>Reist zur Insel auf der nördlichen Seite des Lochs
    .train 401767,1
step << Mage
    #season 2
    #optional
    #completewith next
    .goto 1432,54.33,26.82,5 >> Geht ins Zelt auf der Ostseite der Insel
    .train 401767,1
step << Mage
    #season 2
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Öffnet |cRXP_PICK_Pile of Stolen Books|r drinnen. Sammelt sie für |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notes: TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step << Mage
    #season 2
    .train 401767 >>|cRXP_WARN_Benutzt|r |T134939:0|t[|cRXP_FRIENDLY_Zauber-Notes: TENGI RONEERA|r] |cRXP_WARN_um zu erlernen|r |T133815:0|t[Brustteil prägen - Regeneration]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
step << Paladin/Warrior
    #label BuyMace
    #optional
    #completewith RatEar
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Kauft|r |T133476:0|t[Schwerer Stachelkolben] |cRXP_BUY_von ihm (wenn verfügbar)|r
    >>|cRXP_WARN_KAUFT NICHT|r |T133053:0|t[Eisenholzschlägel] |cRXP_WARN_wenn|r |T133476:0|t[Schwerer Stachelkolben] |cRXP_WARN_nicht da ist. Ihr werdet bald eine bessere Waffe in Sturmwind erhalten|r
    >>|cRXP_WARN_Wenn ihr es euch nicht leisten könnt, aber ihr seid nicht weit entfernt, dann farmt Geld von den nahen |cRXP_ENEMY_Tunnel Ratten|r bis ihr genug habt|r
    >>|cRXP_WARN_Tut dies schnell, da ein anderer Spieler es vor euch kaufen könnte|r
    >>|cRXP_WARN_Falls ihr es nicht möchtet, überspringt diesen Schritt|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    #label RatEar
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
    #season 2
    .xp 16-4650
step
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step
    #label ratcatching
    #sticky
    #loop
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Gebt die Quest Rattenfang ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
step << Human
    #requires ratcatching
    .hs >> Ruhestein nach Sturmwind
step << !Human
    #requires ratcatching
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
step << Warrior !Human
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Reist zu |cRXP_FRIENDLY_Bruuk Barleybeard|r in das Gasthaus
    .train 425447,1
step << Warrior !Human
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Sprecht mit |cRXP_FRIENDLY_Bruuk Barleybeard|r innerhalb
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425447,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Warrior !Human
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Sprecht mit |cRXP_FRIENDLY_Bruart|r um einen Kampf zu beginnen
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und benutzt|r |T133688:0|t[Bandagen] |cRXP_WARN_falls ihr welche habt/falls nötig|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425447,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Warrior !Human
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Besiegt |cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_Seid vorsichtig, wenn er|r |T132939:0|t[Rückhand] wirkt |cRXP_WARN_(es betäubt euch für 2 Sek.)|r
    >>|cRXP_WARN_Locke ihn nach oben zum Balkon, springe dann vor dem Wirtshaus herab und benutzt|r |T133688:0|t[Bandagen] |cRXP_WARN_falls ihr welche habt/falls nötig|r
    >>|cRXP_WARN_Nach dem Besiegen von |cRXP_ENEMY_Bruart|r:|r
    >>Sprecht mit |cRXP_FRIENDLY_Bruuk Gerstenbart|r erneut, um die |T134419:0|t[Rune des rasenden Angriffs] zu erhalten
    >>|cRXP_WARN_Falls er dir die|r |T134419:0|t[Rune des rasenden Angriffs]|cRXP_WARN_nicht gibt, müsst ihr möglicherweise |cRXP_ENEMY_Bruart|r erneut bekämpfen|r
    >>|cRXP_WARN_HINWEIS: Dies kann schwierig sein, solo zu erledigen. Ihr könntet Hilfe benötigen, ansonsten könnt ihr dies später im Leitfaden erneut tun|r
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425447,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Warrior !Human
    #season 2
    .train 425447 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[Rune des rasenden Angriffs] |cRXP_WARN_um|r |T134596:0|t[Hosen prägen - Rasender Angriff] zu lernen
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior !Human
    #season 2
    #completewith DRT
    .engrave 7 >>|cRXP_WARN_Graviert eure|r |T134596:0|t|cRXP_LOOT_[Hose]|r |cRXP_WARN_mit|r |T134596:0|t[Hosen prägen - Rasender Angriff]
    .train 425447,3
step << !Human
    .goto Ironforge,78.00,51.40
    .zone Stormwind City >>Betretet die Die Tiefenbahn und nehmt die Tram nach MoP - Objekte
    .isQuestTurnedIn 6662
step << !Human
    .goto Ironforge,78.00,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der Eisenschmiede-Seite der Bahn und danach mit |cRXP_FRIENDLY_Nipsy|r auf der Sturmwind-Seite
    .zone Stormwind City >>Betretet die Die Tiefenbahn und nehmt die Tram nach MoP - Objekte
    .accept 6662 >> Akzeptiert die Quest Mein Bruder Nipsy...
    >>Bevor ihr die Straßenbahn benutzt
    .turnin 6662 >> Gebt die Quest Mein Bruder Nipsy... ab
    >>Nachdem ihr die Straßenbahn benutzt habt
    .isQuestAvailable 6662
    .target Monty
    .target Nipsy
]])
