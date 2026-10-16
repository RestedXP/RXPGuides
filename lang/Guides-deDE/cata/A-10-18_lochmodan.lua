if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end

RXPGuides.RegisterGuide([[

#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 10-20 Loch Modan
#displayname 10-18 Loch Modan
#next 15-20 Redridge
#defaultfor Human/Dwarf/Gnome/Pandaren

<<Alliance

step
    #optional
    .maxlevel 20,endOfTheGuide
step << Pandaren
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Gol'Bolar Quarry >> Fliegt nach Steinbruch Gol'Bolar
	.target Dungar Longdrink
    .zoneskip Dun Morogh
    .zoneskip Loch Modan
step << Pandaren
    #optional
    #completewith next
    .goto 27,87.534,48.059,20,0
    .goto 27,88.331,47.792,12,0
    .goto 27,88.873,48.312,12,0
    .goto 48,12.138,54.947,20,0
    .goto 48,14.025,56.641,12 >> |cRXP_WARN_Reist den Berg hinauf, dann steigt vorsichtig hinab zu|r |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .noflyable
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .accept 26854 >>Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
step << Pandaren
    #optional
    #completewith next
    .goto 48,12.639,58.419,20,0
    .goto 27,89.543,51.716,20,0
    >>Reisen toward |cRXP_PICK_A Zwergisch Leiche|r auf dem Boden
    .noflyable
step << Pandaren
    .goto 27,87.633,50.139
    >>Zwicken |cRXP_PICK_A Zwergisch Leiche|r auf dem Boden
    >>|cRXP_WARN_Das wird |cRXP_ENEMY_Marterklaue|r veranlassen, auf euch zuzulaufen|r
    .turnin 26854 >>Gebt die Quest Der vermisste Pilot ab
    .accept 26855 >>Akzeptiert die Quest Pilotenrache
step << Pandaren
    .goto 27,87.421,50.013,0
    .goto 27,87.357,49.213
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    .complete 26855,1 --Mangy Claw (1)
    .unitscan Mangeclaw
step << Pandaren
    .goto 48,14.006,56.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pilot Hammerfuß|r
    .turnin 26855 >>Gebt die Quest Pilotenrache ab
    .accept 13635 >>Akzeptiert die Quest Statusbericht des südlichen Tors
    .target Pilot Hammerfoot
step
    #completewith next
    .goto 48,21.398,66.390,30,0
    .goto 48,21.559,68.292,30,0
    .goto 48,23.670,75.378,15,0
    .goto 48,23.495,75.054,12 >> Reist zu |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Inneren des Bunkers
    .xp >30,1
    .isOnQuest 13635
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r und |cRXP_FRIENDLY_Mountaineer Cobbleflint|r innerhalb
    .turnin -13635 >>Gebt die Quest Statusbericht des südlichen Tors ab
    .accept 26146 >>Akzeptiert die Quest Verteidigung der Länder des Königs
    .goto 48,23.495,75.054
    .target +Captain Rugelfuss
    .accept 26145 >>Akzeptiert die Quest Die Bedrohung durch die Troggs
    .goto 48,23.332,74.925
    .target +Mountaineer Cobbleflint
step << Warrior/Paladin
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorvald Deepforge|r
    >>|cRXP_BUY_Kauft eine|r |T135350:0|t[Claymore] |cRXP_BUY_von ihm|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Thorvald Deepforge
step << Rogue/Shaman
    .goto 48,23.673,74.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thorvald Deepforge|r
    >>|cRXP_BUY_Kauft ein|r |T132402:0|t[Kriegsbeil] |cRXP_BUY_von ihm|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Thorvald Deepforge
    .xp <11,1
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_Rüstet das|r |T135350:0|t[Claymore] aus
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Shaman
    #optional
    #completewith end
    +|cRXP_WARN_Legt an|r |T132402:0|t[Kriegsbeil] |cRXP_WARN_in der Haupthand|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step
    #completewith next
    .goto 48,22.850,77.894,20,0
    .goto 48,23.693,79.793,20,0
    .goto 48,24.950,78.306,20,0
    .goto 48,27.712,76.586,20,0
    .goto 48,30.076,78.276
    .subzone 923 >> Reist den Pfad hinauf zu Splittersteintal
    .xp >30,1
step
#loop
    .goto 48,28.888,86.139,30,0
    .goto 48,32.444,79.051,30,0
    .goto 48,36.068,83.253,30,0
    .goto 48,28.888,86.139,0
    .goto 48,32.444,79.051,0
    .goto 48,36.068,83.253,0
    >>Tötet und loot |cRXP_ENEMY_Stonesplinter Troggs|r und |cRXP_ENEMY_Stonesplinter Späher|r
    .complete 26146,1 --|12/12 Stonesplinter Trogg slain
    .complete 26145,1 --|8/8 Trogg Stone Tooth
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
#xprate <1.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r, |cRXP_FRIENDLY_Mountaineer Cobbleflint|r und |cRXP_FRIENDLY_Captain Wallbang|r
    .turnin 26146 >>Gebt die Quest Verteidigung der Länder des Königs ab
    .accept 26148 >>Akzeptiert die Quest Ein Entscheidungsschlag
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Gebt die Quest Die Bedrohung durch die Troggs ab
    .target +Mountaineer Cobbleflint
    .goto 48,23.332,74.927
    .accept 26147 >>Akzeptiert die Quest Größer und ekliger
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
#xprate >1.299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r, |cRXP_FRIENDLY_Mountaineer Cobbleflint|r und |cRXP_FRIENDLY_Captain Wallbang|r
    .turnin 26146 >>Gebt die Quest Verteidigung der Länder des Königs ab
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26145 >>Gebt die Quest Die Bedrohung durch die Troggs ab
    .target +Mountaineer Cobbleflint
    .goto 48,23.332,74.927
step
#xprate <1.3
#sticky
#label troggcave1
#loop
    .goto 48,33.657,67.547,25,0
    .goto 48,35.599,63.221,25,0
    .goto 48,35.304,59.151,25,0
    .goto 48,33.289,62.142,25,0
    .goto 48,35.558,61.606,25,0
    .goto 48,34.289,61.146,25,0
    .goto 48,35.995,64.384,25,0
    .goto 48,34.366,66.919,0
    >>Geht zur Höhle nördlich von Splittersteintal
    >>Tötet |cRXP_ENEMY_Shamans|r und |cRXP_ENEMY_Bonesnappers|r
    .complete 26147,1 --|8/8 Stonesplinter Shaman slain
    .complete 26147,2 --|8/8 Stonesplinter Bonesnapper slain
    .mob Stonesplinter Shaman
    .mob Stonesplinter Bonesnapper
step
#xprate <1.3
    >>Geht zum Höhlenende und tötet |cRXP_ENEMY_Grawmug|r
    .goto 48,34.289,61.146
    .complete 26148,1 --|1/1 Grawmug slain
    .mob Grawmug
step
#xprate <1.3
#requires troggcave1
    .goto 48,23.321,75.013
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Rugelfuss|r und |cRXP_FRIENDLY_Captain Wallbang|r
    .turnin 26148 >>Gebt die Quest Ein Entscheidungsschlag ab
    .accept 26176 >>Akzeptiert die Quest Auf nach Thelsamar
    .target +Captain Rugelfuss
    .goto 48,23.359,74.990
    .turnin 26147 >>Gebt die Quest Größer und ekliger ab
    .target +Mountaineer Wallbang
    .goto 48,23.298,75.054
step
    .goto 48,33.940,50.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .target Thorgrum Borrelson
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    .target Mountaineer Kadrell
    .turnin -26176 >>Gebt die Quest Auf nach Thelsamar ab
    .accept 26842 >>Akzeptiert die Quest Hier ein Gnoll, dort ein Gnoll
    .accept 13636 >>Akzeptiert die Quest Befehle für Sturmlanze
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 48,35.536,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Ofenglut|r
    .home >>Setzt euren Ruhestein nach Thelsamar
    .target Innkeeper Hearthstove
step
    .goto 48,34.849,49.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .target Vidra Hearthstove
    .accept 26860 >>Akzeptiert die Quest Blutwurst aus Thelsamar
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faldoc Stonefaith|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galda Bronzeblade|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gindel der Grüne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Belda Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grendin Swiftaxe|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Grendin Swiftaxe
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grenhild Darktalon|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solbin Shadowcog|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Baerla|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Priestess Baerla
step
    .goto 48,37.303,46.517
    >>Klickt das |cRXP_PICK_Wanted!|r Plakat
    .accept 13648 >>Akzeptiert die Quest GESUCHT: Der Spion der Dunkeleisenzwerge
step
    .goto 48,35.960,44.028
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dakk Büchsenschuss|r
    .target Dakk Blunderblast
    .accept 25118 >>Akzeptiert die Quest Nach den Lauerern schauen
step
    #completewith SilverStreamMine
    >>Tötet |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith SilverStreamMine
    >>Tötet |cRXP_ENEMY_Black Bären|r. Plündert sie für |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,26.258,42.477,30,0
    .goto 48,26.888,50.154,30,0
    .goto 48,26.258,42.477,0
    .goto 48,26.888,50.154,0
    >>Tötet |cRXP_ENEMY_Mosshide Späher|r und |cRXP_ENEMY_Mosshide Bashers|r. Plündert sie für |cRXP_LOOT_Ears|r
    .complete 26842,1 --|12/12 Mosshide Ear
    .mob Mosshide Basher
    .mob Mosshide Scout
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 13636 >>Gebt die Quest Befehle für Sturmlanze ab
    .accept 26843 >>Akzeptiert die Quest Ein winziger, cleverer Kommandant
    .target Mountaineer Stormpike
step
    .goto 48,26.111,31.575
    >>Tötet |cRXP_ENEMY_"Rittmeister" Nazrim|r
    .complete 26843,1 --|1/1 "Commander" Nazrim slain
    .mob "Commander" Nazrim
step
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 26843 >>Gebt die Quest Ein winziger, cleverer Kommandant ab
    .accept 26844 >>Akzeptiert die Quest Vom Regen in die Traufe
    .target Mountaineer Stormpike
step
    .goto 48,31.485,13.582,30,0
    .goto 48,35.425,16.773,30,0
    .goto 48,38.607,15.477,30,0
    .goto 48,38.760,13.619,0
    >>Tötet |cRXP_ENEMY_Tunnel Ratte Surveyors|r und |cRXP_ENEMY_Tunnel Ratte Foragers|r
    .complete 26844,1 --|5/5 Tunnel Rat Surveyor slain
    .mob +Tunnel Rat Surveyor
    .complete 26844,2 --|5/5 Tunnel Rat Forager slain
    .mob +Tunnel Rat Forager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mountaineer Stormpike|r und |cRXP_FRIENDLY_Scout Dorli|r
    .turnin 26844 >>Gebt die Quest Vom Regen in die Traufe ab
    .accept 26845 >>Akzeptiert die Quest Wer hat hier das Sagen?
    .accept 26863 >>Akzeptiert die Quest Schmutzige Pfoten
    .goto 48,25.444,17.963
    .target +Mountaineer Stormpike
    .accept 26846 >>Akzeptiert die Quest Ein fieser Plan
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #label SilverStreamMine
    #completewith ForemanSharpsneer
    .goto 48,35.49,19.13,15 >> Betretet die Silberbachmine
step
    #sticky
    #label koboldmine1
    #loop
    .goto 48,35.623,20.181,20,0
    .goto 48,36.222,24.255,20,0
    .goto 48,34.854,27.180,20,0
    .goto 48,34.752,26.885,20,0
    .goto 48,35.214,20.966,0
    >>Tötet |cRXP_ENEMY_Tunnel Ratte Geomancers|r
    >>Öffnet |cRXP_PICK_Kisten der Minenarbeiterliga|r. Plündert sie für die |cRXP_LOOT_Minenarbeiterausstattung|r
    .complete 26846,1 --|5/5 Tunnel Rat Geomancer slain
    .mob +Tunnel Rat Geomancer
    .complete 26863,1 --|6/6 Miners' Gear
step
    #label ForemanSharpsneer
    .goto 48,34.752,26.885
    >>|cRXP_WARN_Geht zum hinteren Bereich der Silberbachmine|r
    >>Tötet |cRXP_ENEMY_Foreman Sharpsneer|r. Plündert sie für |cRXP_LOOT_Head|r
    .complete 26845,1 --|1/1 Foreman Sharpsneer's Head
    .mob Foreman Sharpsneer
step
    #requires koboldmine1
    #completewith next
    .goto 48,35.49,19.13,15 >> Verlasst die Silberbachmine
step
    #completewith TheBearer
    >>Tötet |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #completewith TheBearer
    >>Tötet |cRXP_ENEMY_Black Bären|r. Plündert sie für |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #requires koboldmine1
    #label TheBearer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mountaineer Stormpike|r und |cRXP_FRIENDLY_Scout Dorli|r
    .turnin 26845 >>Gebt die Quest Wer hat hier das Sagen? ab
    .accept 26864 >>Akzeptiert die Quest Kopflos
    .turnin 26863 >>Gebt die Quest Schmutzige Pfoten ab
    .target +Mountaineer Stormpike
    .goto 48,25.444,17.963
    .turnin 26846 >>Gebt die Quest Ein fieser Plan ab
    .goto 48,25.398,17.793
    .target +Scout Dorli
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    #loop
    .goto 48,27.649,21.203,40,0
    .goto 48,33.193,31.069,40,0
    .goto 48,35.295,39.016,40,0
    .goto 48,27.649,21.203,0
    .goto 48,33.193,31.069,0
    .goto 48,35.295,39.016,0
    >>Tötet |cRXP_ENEMY_Black Bären|r. Plündert sie für |cRXP_LOOT_Rump|r
    .complete 26860,1 --|8/8 Bear Rump
    .mob Black Bear
step
    #loop
    .goto 48,33.55,37.43,60,0
    .goto 48,38.94,30.41,60,0
    .goto 48,35.19,27.68,60,0
    .goto 48,27.64,21.20,70,0
    >>Tötet |cRXP_ENEMY_Forest Lurkers|r
    .complete 25118,1 --|8/8 Forest Lurker slain
    .mob Forest Lurker
step
    .isOnQuest 26860,25118
    .hs >> Benutzt euren Ruhestein nach Thelsamar
    .cooldown item,6948,>2,1
step
    .goto 48,35.969,44.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dakk Büchsenschuss|r
    .turnin 25118 >>Gebt die Quest Nach den Lauerern schauen ab
    .target Dakk Blunderblast
step
    .goto 48,35.017,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    .turnin 26842 >>Gebt die Quest Hier ein Gnoll, dort ein Gnoll ab
    .turnin 26864 >>Gebt die Quest Kopflos ab
    .accept 26927 >>Akzeptiert die Quest ...und plötzlich Murlocs!
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cannary Caskshot|r und |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 26927 >>Gebt die Quest ...und plötzlich Murlocs! ab
    .accept 26928 >>Akzeptiert die Quest Das riecht nach 'nem Plan
    .accept 26929 >>Akzeptiert die Quest Ein Haufen Kroki
    .target +Cannary Caskshot
    .goto 48,34.789,49.122
    .turnin 26860 >>Gebt die Blutwurst in Thelsamar ab
    .target +Vidra Hearthstove
    .goto 48,34.827,49.285
step
    #optional
    .maxlevel 20,endOfTheGuide
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faldoc Stonefaith|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galda Bronzeblade|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gindel der Grüne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Belda Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grendin Swiftaxe|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Grendin Swiftaxe
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    .target Mountaineer Kadrell
    .accept 26932 >>Akzeptiert die Quest Ausgeflattert
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grenhild Darktalon|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solbin Shadowcog|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Baerla|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Priestess Baerla
step
    .goto 48,40.642,58.310,15,0
    .goto 48,39.670,62.104,15,0
    .goto 48,36.796,61.173
    >>Folgt dem Pfeil bis zur Spitze von Grautatzengrat
    >>Tötet |cRXP_ENEMY_Gorick Guzzledraught|r
    .complete 13648,1 --|1/1 Gorick Guzzledraught slain
    .mob Gorick Guzzledraught
step
    .goto 48,36.752,61.108
    >>Klickt |cRXP_PICK_Stolen Explorers' League Dokumentieren|r in der Höhle
    .accept 13656>> Akzeptiert die Quest Dokument der Forscherliga (1 von 6)
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Einige |cRXP_ENEMY_Loch Buzzards|r können in der Luft fliegen|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Tötet |cRXP_ENEMY_Loch Crocolisks|r. Plündert sie für |cRXP_LOOT_Intact Krokilisk Kiefer|r
    .complete 26929,1 --|6/6 Intact Crocolisk Jaw
    .mob Loch Crocolisk
step
    #loop
    .goto 48,50.790,63.748,60,0
    .goto 48,55.580,56.273,60,0
    .goto 48,59.933,52.441,60,0
    >>Tötet |cRXP_ENEMY_Loch Buzzards|r
    >>|cRXP_WARN_Einige |cRXP_ENEMY_Loch Buzzards|r können in der Luft fliegen|r
    .complete 26932,1 --|8/8 Loch Buzzard slain
    .mob Loch Buzzard
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bluegill Mudskippers|r und |cRXP_ENEMY_Bluegill Wanderers|r. Plündert sie für |cRXP_LOOT_Scent Glands|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,41.379,38.967
    >>Klickt |cRXP_PICK_Stolen Explorers' League Dokumentieren|r unter der Brücke
    .accept 13655 >>Akzeptiert die Quest Dokument der Forscherliga (2 von 6)
step
    #loop
    .goto 48,42.957,39.201,60,0
    .goto 48,46.231,51.109,60,0
    >>Tötet |cRXP_ENEMY_Bluegill Mudskippers|r und |cRXP_ENEMY_Bluegill Wanderers|r. Plündert sie für |cRXP_LOOT_Scent Glands|r
    .complete 26928,1 --|7/7 Murloc Scent Gland
    .mob Bluegill Mudskipper
    .mob Bluegill Wanderer
step
    .goto 48,34.613,44.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrate Bluntnose|r
    .target Magistrate Bluntnose
    .turnin 13648 >>Gebt die Quest GESUCHT: Der Spion der Dunkeleisenzwerge ab
step
    .goto 48,35.079,46.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    .target Mountaineer Kadrell
    .turnin 26932 >>Gebt die Quest Ausgeflattert ab
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cannary Caskshot|r
    .turnin 26929 >>Gebt die Quest Ein Haufen Kroki ab
    .turnin 26928 >>Gebt die Quest Das riecht nach 'nem Plan ab
    .accept 26868 >>Akzeptiert die Quest Die Achse des Grässlichen
    .target Cannary Caskshot
step
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torren Squarejaw|r
    .turnin 13656 >>Gebt die Quest Dokument der Forscherliga (1 von 6) ab
    .turnin 13655 >>Gebt die Quest Dokument der Forscherliga (2 von 6) ab
    .target Torren Squarejaw
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .isOnQuest 26868
    .use 60681 >> |cRXP_WARN_Öffnet|r |T133639:0|t[Cannary's Cache] |cRXP_WARN_für das|r |T237425:0|t[|cRXP_LOOT_Cleveres Pflanzenverkleidungsset|r] |cRXP_WARN_und|r |T134839:0|t[|cRXP_LOOT_Potent Murloc Pheromone|r]
    .collect 60502,1,26868,1 -- Clever Plant Disguise Kit (1)
    .collect 60503,1,26868,1 -- Potent Murloc Pheromones (1)
step
    .isOnQuest 26868
    .goto 48,50.585,56.048,85 >> |cRXP_WARN_Reist zum|r |cRXP_ENEMY_Abgesandter der Moosfelle|r
step
    .isOnQuest 26868
    .cast 82788 >> |cRXP_WARN_Benutzt das|r |T237425:0|t[|cRXP_LOOT_Cleveres Pflanzenverkleidungsset|r] |cRXP_WARN_um euch zu verkleiden|r
    .use 60502
step
    .goto 48,50.585,56.048
    >>|cRXP_WARN_Benutzt die|r |T134839:0|t[|cRXP_LOOT_Potent Murloc Pheromone|r] |cRXP_WARN_auf dem|r |cRXP_ENEMY_Abgesandter der Moosfelle|r
    >>|cRXP_WARN_Dies hat eine Reichweite von 15 Metern|r
    .complete 26868,1 --|1/1 Mosshide Tagged
    .mob Mosshide Representative
    .use 60503
step
    .goto 48,34.789,49.122
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cannary Caskshot|r
    .turnin 26868 >>Gebt die Quest Die Achse des Grässlichen ab
    .target Cannary Caskshot
step
    .goto 48,36.992,47.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .accept 13639 >>Akzeptiert die Quest Nachschub für die Ausgrabungsstätte
    .target Jern Hornhelm
step
    .goto 48,56.353,65.959
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huldar|r
    .target Huldar
    .turnin 13639 >>Gebt die Quest Nachschub für die Ausgrabungsstätte ab
    .accept 309 >>Akzeptiert die Quest Beschützen der Fracht
step
    .goto 48,56.353,65.959
    >>|cRXP_WARN_Bleibt beim Wagen und beschützt |cRXP_FRIENDLY_Huldar|r vor den |cRXP_ENEMY_Dark Eisen Ambushers|r und|r |cRXP_ENEMY_Saean|r
    .complete 309,1 -- Protect the Ironband Caravan (1)
    .mob Dark Iron Ambusher
    .mob Saean
    .target Huldar
step
    .goto 48,58.183,68.975,20,0
    .goto 48,59.722,72.385,20,0
    .goto 48,61.701,73.181
    >>Klickt |cRXP_PICK_Stolen Explorers' League Dokumentieren|r auf dem Boden
    .accept 13657 >>Akzeptiert die Quest Dokument der Forscherliga (3 von 6)
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magmar Fellhew|r
    .target Magmar Fellhew
    .accept 26961 >>Akzeptiert die Quest Götzen sammeln
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Eisenband|r
    .target Prospector Ironband
    .turnin 309 >>Gebt die Quest Beschützen der Fracht ab
    .accept 13650 >>Akzeptiert die Quest Hände weg von unseren Gütern!
step
    #completewith Artifacts
    >>Tötet |cRXP_ENEMY_Stonesplinter Diggers|r und |cRXP_ENEMY_Stonesplinter Geomancers|r. Plündert sie für |cRXP_LOOT_Carved Stein Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,67.610,68.736,20,0
    .goto 48,69.218,66.357,8,0
    .goto 48,68.112,66.143
    >>Klickt |cRXP_PICK_Stolen Explorers' League Dokumentieren|r neben dem Fass
    .accept 13658 >>Akzeptiert die Quest Dokument der Forscherliga (4 von 6)
step
    #label Artifacts
    >>|cRXP_WARN_Erkundet die Artefakte der Ausgrabungsstätte|r
    .complete 13650,1 --|1/1 Artifact of the Broken Tablet Inspected
    .goto 48,70.696,67.524
    .complete 13650,3 --|1/1 Artifact of the Overdressed Woman Inspected
    .goto 48,72.759,65.494
    .complete 13650,2 --|1/1 Artifact of the Upturned Giant Inspected
    .goto 48,70.111,59.987
step
    #loop
    .goto 48,69.037,59.360,40,0
    .goto 48,70.633,67.770,40,0
    >>Tötet |cRXP_ENEMY_Stonesplinter Diggers|r und |cRXP_ENEMY_Stonesplinter Geomancers|r. Plündert sie für |cRXP_LOOT_Carved Stein Idols|r
    .complete 26961,1 --|8/8 Carved Stone Idol
    .mob Stonesplinter Digger
    .mob Stonesplinter Geomancer
step
    .goto 48,65.336,65.979
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Eisenband|r
    .target Prospector Ironband
    .turnin 13650 >>Gebt die Quest Hände weg von unseren Gütern! ab
step
    .goto 48,64.896,66.659
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magmar Fellhew|r
    .target Magmar Fellhew
    .turnin 26961 >>Gebt die Quest Götzen sammeln ab
    .accept 13647 >>Akzeptiert die Quest Auf zur Jagd
step
    #completewith next
    .goto 48,69.478,51.742,70,0
    .goto 48,83.597,60.675,40 >> Geht zur Jagdhütte der Weltenwanderer
    .subzoneskip 147
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Safety Wächterin Pipsy|r
    .target Safety Warden Pipsy
    .accept 27025 >>Akzeptiert die Quest Disteln im Dickicht
step
    .goto 48,83.428,65.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .target Daryl the Youngling
    .accept 27016 >>Akzeptiert die Quest Die Freuden der Eberjagd
step
    .goto 48,81.944,64.505
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vyrin Flinkwind|r
    .target Vyrin Swiftwind
    .home >>Setzt von Euch Ruhestein zur Jagdhütte der Weltenwanderer
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .accept 27031 >>Akzeptiert die Quest Verrückt nach Flügeln
step
    .goto 48,81.803,61.735
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marek Ironheart|r
    .target Marek Ironheart
    .turnin 13647 >>Gebt die Quest Auf zur Jagd ab
    .accept 27028 >>Akzeptiert die Quest Hornissenjagd
    .accept 27030 >>Akzeptiert die Quest Eine Handvoll Fuchsschwänze
step
    .goto 48,78.350,69.552,40,0
    .goto 48,77.581,75.929,40,0
    .goto 48,74.254,71.828,40,0
    .goto 48,78.350,69.552,0
    .goto 48,77.581,75.929,0
    .goto 48,74.254,71.828,0
    >>Tötet |cRXP_ENEMY_Golden Eagles|r. Plündert sie für |cRXP_LOOT_Feathers|r
    .complete 27031,1 --|3/3 Pristine Flight Feather
    .mob Golden Eagle
step
    #completewith doc6
    >>Beute |cRXP_LOOT_Stabthistle Seeds|r vom Boden
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc6
    >>Tötet |cRXP_ENEMY_Hill Foxes|r. Plündert sie für |cRXP_LOOT_Tails|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #label doc6
    .goto 48,73.188,35.870
    >>Klickt |cRXP_PICK_Stolen Explorers' League Dokumentieren|r auf dem Boden
    .accept 13659 >>Akzeptiert die Quest Dokument der Forscherliga (6 von 6)
step
    #completewith next
    >>Beute |cRXP_LOOT_Stabthistle Seeds|r vom Boden
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Tötet |cRXP_ENEMY_Hill Foxes|r. Plündert sie für |cRXP_LOOT_Tails|r
    .complete 27030,1 --|7/7 Fluffy Fox Tail
    .mob Hill Fox
step
    #loop
    .goto 48,72.311,40.993,0
    .goto 48,75.992,46.409,40,0
    .goto 48,66.113,37.946,40,0
    .goto 48,72.311,40.993,40,0
    .goto 48,76.495,36.873,40,0
    >>Beute |cRXP_LOOT_Stabthistle Seeds|r vom Boden
    .complete 27025,1 --|6/6 Stabthistle Seed
step
    #completewith doc5
    >>Tötet |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    #completewith doc5
    >>Tötet |cRXP_ENEMY_Marsh Hornets|r. Plündert sie für |cRXP_LOOT_Wings|r
    .complete 27028,1 --|6/6 Glassy Hornet Wing
    .mob Marsh Hornet
    .mob Marsh Wasp
step
    #label doc5
    .goto 48,53.707,38.109
    >>Klickt |cRXP_PICK_Stolen Explorers' League Dokumentieren|r auf dem Boden
    .accept 13660 >>Akzeptiert die Quest Dokument der Forscherliga (5 von 6)
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    #loop
    .goto 48,52.298,39.499,40,0
    .goto 48,56.479,31.679,40,0
    .goto 48,58.179,44.704,40,0
    .goto 48,52.298,39.499,0
    .goto 48,56.479,31.679,0
    .goto 48,58.179,44.704,0
    >>Tötet |cRXP_ENEMY_Marsh Hornets|r. Plündert sie für |cRXP_LOOT_Wings|r
    .complete 27028,1 --|6/6 Glassy Hornet Wing
    .mob Marsh Hornet
    .mob Marsh Wasp
step
    #loop
    .goto 48,52.298,39.499,40,0
    .goto 48,56.479,31.679,40,0
    .goto 48,58.179,44.704,40,0
    .goto 48,52.298,39.499,0
    .goto 48,56.479,31.679,0
    .goto 48,58.179,44.704,0
    >>Tötet |cRXP_ENEMY_Mudbelly Boars|r
    .complete 27016,1 --|10/10 Mudbelly Boar slain
    .mob Mudbelly Boar
step
    .isOnQuest 27016,27028,13660,27025,27030,27031
    .hs >> Benutzt euren Ruhestein zum Weltenwanderer's Lodge
    .cooldown item,6948,>2,1
step
#requires doc5
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Safety Wächterin Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27025 >>Gebt die Quest Disteln im Dickicht ab
    .accept 27026 >>Akzeptiert die Quest Alarmstufe: Rotluchs
step
    .goto 48,83.462,65.333
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .target Daryl the Youngling
    .turnin 27016 >>Gebt die Quest Die Freuden der Eberjagd ab
step
    .goto 48,81.756,61.661
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marek Ironheart|r
    .target Marek Ironheart
    .turnin 27028 >>Gebt die Quest Hornissenjagd ab
    .turnin 27030 >>Gebt die Quest Eine Handvoll Fuchsschwänze ab
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vyrin Flinkwind|r
    .target Vyrin Swiftwind
    .accept 27036 >>Akzeptiert die Quest Vyrins Rache
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 27031 >>Gebt die Quest Verrückt nach Flügeln ab
    .accept 27032 >>Akzeptiert die Quest Ein schräger Vogel
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,72.590,72.017,70,0
    .goto 48,71.603,77.167,20 >> Geht zur Eisenschwingenhöhle
    .subzoneskip 5391
    .isOnQuest 27032
step
    .isOnQuest 27032
    #completewith next
    .goto 48,78.594,76.215,20 >> |cRXP_WARN_Bahnt euch den Weg zum hinteren Teil der Höhle|r
step
    .goto 48,78.594,76.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Verrosteter Himmelsschreiter|r
    .target Rusted Skystrider
    .turnin 27032 >>Gebt die Quest Ein schräger Vogel ab
    .accept 27033 >>Akzeptiert die Quest Herz der Himmelsstreiter
step
    #completewith next
    .goto 48,71.603,77.167,20 >> Verlasst die Eisenschwingenhöhle
    .subzoneskip 5391,1
    .isOnQuest 27033
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .goto 48,80.158,51.943
    >>Tötet |cRXP_ENEMY_Ol' Rußbedeckt|r. Plündert sie für |cRXP_LOOT_Head|r
    .complete 27036,1 --|1/1 Ol' Sooty's Head
    .mob Ol' Sooty
step
    #loop
    .goto 48,76.773,58.389,40,0
    .goto 48,78.786,69.272,40,0
    .goto 48,72.778,71.667,40,0
    .goto 48,76.773,58.389,0
    .goto 48,78.786,69.272,0
    .goto 48,72.778,71.667,0
    >>Tötet |cRXP_ENEMY_Bobcats|r
    .complete 27026,1
    .mob Bobcat
step
    .isOnQuest 27026,27036
    .hs >> Benutzt euren Ruhestein zum Weltenwanderer's Lodge
    .cooldown item,6948,>2,1
step
    .goto 48,82.789,63.459
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Safety Wächterin Pipsy|r
    .target Safety Warden Pipsy
    .turnin 27026 >>Gebt die Quest Alarmstufe: Rotluchs ab
step
    .goto 48,83.435,65.246
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .target Daryl the Youngling
    .turnin 27036 >>Gebt die Quest Vyrins Rache ab
    .accept 27037 >>Akzeptiert die Quest Vyrins Rache
step
    .goto 48,81.910,64.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vyrin Flinkwind|r
    .target Vyrin Swiftwind
    .turnin 27037 >>Gebt die Quest Vyrins Rache ab
step
#questguide
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Gebt die Quest Herz der Himmelsstreiter ab
    .accept 27034 >>Akzeptiert die Quest Er ist in dem Alter
step
    .goto 48,81.647,64.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bingles Blastenheimer|r
    .target Bingles Blastenheimer
    .turnin 27033 >>Gebt die Quest Herz der Himmelsstreiter ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eeryven Grayer|r
    .goto 48,81.877,64.071
    .fly Thelsamar >>Fliege nach Thelsamar
    .target Eeryven Grayer
step
    #label end
    .goto 48,37.200,46.363
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torren Squarejaw|r
    .target Torren Squarejaw
    .turnin 13657 >>Gebt die Quest Dokument der Forscherliga (3 von 6) ab
    .turnin 13658 >>Gebt die Quest Dokument der Forscherliga (4 von 6) ab
    .turnin 13660 >>Gebt die Quest Dokument der Forscherliga (5 von 6) ab
    .turnin 13659 >>Gebt die Quest Dokument der Forscherliga (6 von 6) ab
    .accept 13661 >>Akzeptiert die Quest Wertschätzung aus tiefstem Herzen
    .turnin 13661 >>Gebt die Quest Wertschätzung aus tiefstem Herzen ab
step
    #optional
    #label endOfTheGuide
step << Paladin cata
    .goto 48,35.374,48.810
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faldoc Stonefaith|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Faldoc Stonefaith
step << Rogue cata
    .goto 48,34.935,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galda Bronzeblade|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Galda Bronzeblade
step << Mage cata
    .goto 48,35.012,48.445
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gindel der Grüne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Gindle the Green
step << Hunter cata
    .goto 48,34.553,48.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Belda Wildheart|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Belda Wildheart
step << Warrior cata
    .goto 48,33.951,46.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grendin Swiftaxe|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Grendin Swiftaxe
step << Shaman cata
    .goto 48,36.596,48.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grenhild Darktalon|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Grenhild Darktalon
step << Warlock cata
    .goto 48,35.879,46.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Solbin Shadowcog|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Solbin Shadowcog
step << Priest cata
    .goto 48,36.108,45.893
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Baerla|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Priestess Baerla
step
#questguide
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Farstrider Lodge >> Fliegt nach Weltenwanderer Lodge
    .target Thorgrum Borrelson
step
#questguide
    .goto 48,58.585,29.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ando Blastenheimer|r
    .target Ando Blastenheimer
    .turnin 27034 >>Gebt die Quest Er ist in dem Alter ab
    .accept 27035 >>Akzeptiert die Quest Stellung beziehen
step
#questguide
    .goto 48,50.532,23.802
    >>Tötet |cRXP_ENEMY_Twilight Landshaper|r
    .complete 27035,1 --|1/1 Twilight Landshaper destroyed
    .mob Twilight Landshaper
step
#questguide
    .goto 48,58.551,29.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ando Blastenheimer|r
    .target Ando Blastenheimer
    .turnin 27035 >>Gebt die Quest Stellung beziehen ab
    .accept 27074 >>Akzeptiert die Quest Bekämpft den Hammer
step
#questguide
    .goto 48,64.085,26.707
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .target Ashlan Stonesmirk
    .turnin 27074 >>Bekämpft den Hammer
    .accept 27075 >>Akzeptiert die Quest Diener von Cho'gall
    .accept 27077 >>Akzeptiert die Quest Ans Chaosschaden klammern

step
#questguide
#loop
    .goto 48,67.559,22.273,40,0
    .goto 48,69.705,25.944,40,0
    .goto 48,74.141,20.405,40,0
    .goto 48,71.035,21.294,0
    >>Tötet |cRXP_ENEMY_Mo'grosh Ogres|r
    >>Sammelt Beute von den kleinen schwarzen Stacheln am Boden
    .complete 27075,1 --|7/7 Mo'grosh Ogre slain
    .complete 27077,1 --|10/10 Nascent Elementium Spike
    .mob Mo'grosh Earthbender
    .mob Mo'grosh Darkmauler


step
#questguide
    .goto 48,64.049,26.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .target Ashlan Stonesmirk
    .turnin 27075 >>Gebt die Quest Diener von Cho'gall ab
    .turnin 27077 >>Gebt die Quest Ans Chaosschaden klammern ab
    .accept 27078 >>Akzeptiert die Quest Gor'kresh
step
#questguide
    .goto 48,75.212,19.594,20,0
    .goto 48,79.665,14.870
    >>Lauft zum hinteren Ende der Höhle im Nordosten
    >>Tötet |cRXP_ENEMY_Gor'kresh|r
    .complete 27078,1 --|1/1 Gor'kresh slain
    .mob Gor'kresh

step
#questguide
    .goto 48,64.145,26.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ashlan Stonesmirk|r
    .target Ashlan Stonesmirk
    .turnin 27078 >>Gebt die Quest Gor'kresh ab
    .accept 27115 >>Akzeptiert die Quest Andos Ruf
step
#questguide
    .goto 48,58.491,29.051
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ando Blastenheimer|r
    .target Ando Blastenheimer
    .turnin 27115 >>Gebt die Quest Andos Ruf ab
    .accept 27116 >>Akzeptiert die Quest Die Winde von Loch Modan
step
#questguide
    .goto 48,25.444,17.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .target Mountaineer Stormpike
    .turnin 27116 >>Gebt die Quest Die Winde von Loch Modan ab
    .accept 26137 >>Akzeptiert die Quest Auf der Suche nach den Jungs
step
#questguide
    .goto 48,25.315,1.591,15,0
    .goto 56,54.873,83.458,15,0
    .zone Wetlands >> Lauft in die Sumpfländer
    .isOnQuest 26137
step
#questguide
    .goto 56,49.973,79.288
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mountaineer Rharen|r
    .target Mountaineer Rharen
    .turnin 26137 >>Gebt die Quest Auf der Suche nach den Jungs ab
    .accept 25395 >>Akzeptiert die Quest Das gestohlene Fass
    .accept 25211 >>Akzeptiert die Quest Die Behausung säubern

--TODO: follow the path to the first quest hub
--fly to gol'bolar quarry (dwarf) or kharanos (gnome)
--buy mount, then fly to SW and do duskwood
]])
