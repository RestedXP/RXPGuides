if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 Nordhaintal
#version 1
#next 6-9 Wald von Elwynn
#defaultfor Human !DK

<< Alliance

step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28757 >>Akzeptiert die Quest Schlagt sie zurück! << Human Mage
    .accept 28762 >>Akzeptiert die Quest Schlagt sie zurück! << Human Paladin
    .accept 28763 >>Akzeptiert die Quest Schlagt sie zurück! << Human Priest
    .accept 28764 >>Akzeptiert die Quest Schlagt sie zurück! << Human Rogue
    .accept 28765 >>Akzeptiert die Quest Schlagt sie zurück! << Human Warlock
    .accept 28766 >>Akzeptiert die Quest Schlagt sie zurück! << Human Warrior
    .accept 28767 >>Akzeptiert die Quest Schlagt sie zurück! << Human Hunter
    .accept 29078 >>Akzeptiert die Quest Schlagt sie zurück! << !Human
    .accept 31139 >>Akzeptiert die Quest Schlagt sie zurück! << Human Death Knight/Human Monk
    .target Marshal McBride
--XX 31139 only available in MoP+ (Human DKs borked until MoP, blizzard-side)
step
    #loop
    .goto 425,29.58,44.71,0
    .goto 425,31.33,45.67,40,0
    .goto 425,32.52,43.63,40,0
    .goto 425,29.25,38.05,40,0
    .goto 425,26.25,40.59,40,0
    .goto 425,26.09,53.65,40,0
    >>Tötet |cRXP_ENEMY_Blackrock Worgs|r << !mop
    >>Tötet |cRXP_ENEMY_Blackrock Kampf Worgs|r << mop
    .complete 28757,1 << Human Mage --Blackrock Worgs (6)
    .complete 28762,1 << Human Paladin --Blackrock Worgs (6)
    .complete 28763,1 << Human Priest --Blackrock Worgs (6)
    .complete 28764,1 << Human Rogue --Blackrock Worgs (6)
    .complete 28765,1 << Human Warlock --Blackrock Worgs (6)
    .complete 28766,1 << Human Warrior --Blackrock Worgs (6)
    .complete 28767,1 << Human Hunter --Blackrock Worgs (6)
    .complete 29078,1 << !Human --Blackrock Worgs (6)
    .complete 31139,1 << Human Death Knight/Human Monk --Blackrock Worgs (6)
    .mob Blackrock Worg << !mop
    .mob Blackrock Battle Worg << mop
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28757 >>Gebt die Quest Schlagt sie zurück! ab << Human Mage
    .turnin 28762 >>Gebt die Quest Schlagt sie zurück! ab << Human Paladin
    .turnin 28763 >>Gebt die Quest Schlagt sie zurück! ab << Human Priest
    .turnin 28764 >>Gebt die Quest Schlagt sie zurück! ab << Human Rogue
    .turnin 28765 >>Gebt die Quest Schlagt sie zurück! ab << Human Warlock
    .turnin 28766 >>Gebt die Quest Schlagt sie zurück! ab << Human Warrior
    .turnin 28767 >>Gebt die Quest Schlagt sie zurück! ab << Human Hunter
    .turnin 29078 >>Gebt die Quest Schlagt sie zurück! ab << !Human
    .turnin 31139 >>Gebt die Quest Schlagt sie zurück! ab << Human Death Knight/Human Monk
    .accept 28759 >> Akzeptiert die Quest Löwen statt Lämmer << Human Hunter
    .accept 28769 >> Akzeptiert die Quest Löwen statt Lämmer << Human Mage
    .accept 28770 >> Akzeptiert die Quest Löwen statt Lämmer << Human Paladin
    .accept 28771 >> Akzeptiert die Quest Löwen statt Lämmer << Human Priest
    .accept 28772 >> Akzeptiert die Quest Löwen statt Lämmer << Human Rogue
    .accept 28773 >> Akzeptiert die Quest Löwen statt Lämmer << Human Warlock
    .accept 28774 >> Akzeptiert die Quest Löwen statt Lämmer << Human Warrior
    .accept 29079 >> Akzeptiert die Quest Löwen statt Lämmer << !Human
    .accept 31140 >> Akzeptiert die Quest Löwen statt Lämmer << Human Death Knight/Human Monk
    .target Marshal McBride
step
    #loop
    .goto 425,27.23,40.41,0
    .goto 425,31.76,41.17,40,0
    .goto 425,30.32,38.01,40,0
    .goto 425,27.23,40.41,40,0
    .goto 425,27.40,42.45,40,0
    .goto 425,26.49,44.73,40,0
    .goto 425,28.86,47.41,40,0
    .goto 425,24.84,50.52,40,0
    .goto 425,23.64,51.42,40,0
    .goto 425,26.60,54.71,40,0
    >>Tötet |cRXP_ENEMY_Blackrock Spies|r
    >>|cRXP_WARN_They are|r |T132320:0|t[Verstohlen] |cRXP_WARN_(but easily visible)|r
    .complete 31140,1 << Human Death Knight/Human Monk --Blackrock Spies (8)
    .complete 28769,1 << Human Mage --Blackrock Spies (8)
    .complete 28759,1 << Human Hunter --Blackrock Spies (8)
    .complete 28770,1 << Human Paladin --Blackrock Spies (8)
    .complete 28771,1 << Human Priest --Blackrock Spies (8)
    .complete 28772,1 << Human Rogue --Blackrock Spies (8)
    .complete 28773,1 << Human Warlock --Blackrock Spies (8)
    .complete 28774,1 << Human Warrior --Blackrock Spies (8)
    .complete 29079,1 << !Human --Blackrock Spies (8)
    .mob Blackrock Spy
step << skip
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28769 >>Gebt die Quest Löwen statt Lämmer ab << Human Mage
    .turnin 28759 >>Gebt die Quest Löwen statt Lämmer ab << Human Hunter
    .turnin 28770 >>Gebt die Quest Löwen statt Lämmer ab << Human Paladin
    .turnin 28771 >>Gebt die Quest Löwen statt Lämmer ab << Human Priest
    .turnin 28772 >>Gebt die Quest Löwen statt Lämmer ab << Human Rogue
    .turnin 28773 >>Gebt die Quest Löwen statt Lämmer ab << Human Warlock
    .turnin 28774 >>Gebt die Quest Löwen statt Lämmer ab << Human Warrior
    .turnin 29079 >>Gebt die Quest Löwen statt Lämmer ab << !Human
    .turnin 31140 >>Gebt die Quest Löwen statt Lämmer ab << Human Death Knight/Human Monk
    .accept 28780 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << Human Hunter
    .accept 28784 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << Human Mage
    .accept 28785 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << Human Paladin
    .accept 28786 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << Human Priest
    .accept 28787 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << Human Rogue
    .accept 28788 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << Human Warlock
    .accept 28789 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << Human Warrior
    .accept 29080 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << !Human
    .accept 31143 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << Human Death Knight/Human Monk
    .target Marshal McBride
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28769 >>Gebt die Quest Löwen statt Lämmer ab << Human Mage
    .turnin 28759 >>Gebt die Quest Löwen statt Lämmer ab << Human Hunter
    .turnin 28770 >>Gebt die Quest Löwen statt Lämmer ab << Human Paladin
    .turnin 28771 >>Gebt die Quest Löwen statt Lämmer ab << Human Priest
    .turnin 28772 >>Gebt die Quest Löwen statt Lämmer ab << Human Rogue
    .turnin 28773 >>Gebt die Quest Löwen statt Lämmer ab << Human Warlock
    .turnin 28774 >>Gebt die Quest Löwen statt Lämmer ab << Human Warrior
    .turnin 29079 >>Gebt die Quest Löwen statt Lämmer ab << !Human
    .turnin 31140 >>Gebt die Quest Löwen statt Lämmer ab << Human Death Knight/Human Monk
    .accept 3100 >>Akzeptiert die Quest Einfacher Brief << Human Warrior
    .accept 3101 >>Akzeptiert die Quest Geweihter Brief << Human Paladin
    .accept 3102 >>Verschlüsselter Brief annehmen << Human Rogue
    .accept 3103 >>Akzeptiert die Quest Geheiligter Brief << Human Priest
    .accept 3104 >>Akzeptiert die Quest Glyphen-Brief << Human Mage
    .accept 3105 >>Akzeptiert die Quest Besudelter Brief << Human Warlock
    .accept 26910 >>Akzeptiert die Quest Geätzter Brief << Human Hunter
    .accept 31141 >>Akzeptiert die Quest Kalligrafiebrief << Human Monk
    .accept 29080 >>Akzeptiert die Quest Stürzt Euch in die Schlacht! << !Human
    .target Marshal McBride
--XX needs testing on non-human classes. Not needed for Monks/DKs

step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bao|r
    .target Bao
    .turnin 31141 >>Gebt die Quest Kalligrafiebrief ab
    .accept 31142 >>Akzeptiert die Quest Palm des Tigers
step << Warrior/Paladin
    #optional
    #completewith next
    .goto 425,35.84,51.87,8,0
    .goto 425,38.46,52.30,8,0
    .goto 425,40.87,53.80,10 >> Reist zu |cRXP_FRIENDLY_Llane Beshere|r in der Abtei << Warrior
    .goto 425,41.55,53.23,10 >> Reist zu |cRXP_FRIENDLY_Bruder Sammuel|r in der Abtei << Paladin
step << Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 3100 >>Gebt die Quest Einfacher Brief ab << Human
    .accept 26913 >>Akzeptiert die Quest In den Kampf stürmen << Human
    .train 100 >>Erlernt |T132337:0|t[Sturmangriff] << Cata
    .target Llane Beshere
step << Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Sammuel|r
    .turnin 3101 >>Gebt die Quest Geweihter Brief ab << Human
    .accept 26918 >>Akzeptiert die Quest Die Macht des Lichts << Human
    .train 20154 >>Erlernen |T135960:0|t[Siegel der Rechtschaffenheit] << Cata
    .train 20271 >>Erlernt |T135959:0|t[Richturteil] << Cata
    .target Brother Sammuel
step << Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jorik Kerridan|r außerhalb auf der gegenüberliegenden Seite der Abtei
    .turnin 3102 >>Gebt die Quest Verschlüsselter Brief ab << Human
    .accept 26915 >>Akzeptiert die Quest Der tiefste Schnitt << Human
    .train 2098 >>Erlernen |T132292:0|t[Ausweiden] << Cata
    .target Jorik Kerridan
step << Human Priest/Human Mage
    #optional
    #completewith next
    .goto 425,35.61,51.32,8,0
    .goto 425,37.20,48.32,8,0
    .goto 425,38.95,46.52,8,0 << Priest
    .goto 425,38.31,46.07,8,0 << Mage
    .goto 425,37.94,45.13,5,0 << Mage
    .goto 425,39.31,43.78,10 >> Reist zu |cRXP_FRIENDLY_Priesterin Anetta|r in der Abtei << Priest
    .goto 425,38.78,43.47,10 >> Reist zu |cRXP_FRIENDLY_Khelden Bremen|r oben in der Abtei. Springt von den Treppen über das Geländer auf, wenn ihr könnt << Mage
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 3103 >>Gebt die Quest Geheiligter Brief ab
    .accept 26919 >>Akzeptiert die Quest Heilung der Verwundeten << cata
    .accept 26919 >>Akzeptiert die Quest Das Wort lernen << !cata
    .train 2061 >>Erlernen |T135907:0|t[Blitzheilung] << Cata
    .target Priestess Anetta
--XX Human Priest only since Flash Heal is somewhat useless when you just smite spam
step << Cata Human Priest
    #loop
    .goto 425,39.31,43.78,0
    .goto 425,38.97,43.16,10,0
    .goto 425,37.82,44.57,10,0
    .goto 425,39.70,44.56,10,0
    .goto 425,37.36,46.34,10,0
    .goto 425,35.08,48.41,10,0
    .goto 425,35.42,49.84,10,0
    .goto 425,37.84,53.31,10,0
    .goto 425,37.00,54.53,10,0
    .goto 425,36.36,53.06,10,0
    >>Wirkt |T135907:0|t[Blitzheilung] auf 5 |cRXP_FRIENDLY_Verwundete Auszubildende|r in der Abtei
    .complete 26919,1 --Cast Flash Heal (5)
    .target Wounded Trainee
step << !Cata Human Priest
    .goto 425,35.58,60.57,-1
    .goto 425,35.82,61.08,-1
    .goto 425,35.81,61.71,-1
    .goto 425,35.55,62.26,-1
    .goto 425,35.13,62.46,-1
    .goto 425,34.74,62.27,-1
    .goto 425,34.48,61.76,-1
    .goto 425,34.46,61.13,-1
    >>Cast |T136207:0|t[Schattenwort: Schmerz] on a |cRXP_ENEMY_Training Attrappe|r 5 times
    .complete 26919,2 --Cast Flash Heal (5)
    .target Training Dummy
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >>Gebt die Quest Glyphen-Brief ab << Human
    .accept 26916 >>Akzeptiert die Quest Beherrschung des Arkanen << Human
    .train 5143 >>Erlernen |T136096:0|t[Arkane Geschosse] << Cata
    .target Khelden Bremen
--XX Human Mage only since Arcane Missiles is somewhat useless when you just fireball spam
step << Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Gebt die Quest Besudelter Brief ab << Human
    .accept 26914 >>Akzeptiert die Quest Feuerbrand << Human
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand] << Cata
    .target Drusilla La Salle
step << Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ashley Leer|r
    .turnin 26910 >>Gebt die Quest Geätzter Brief ab << Human
    .accept 26917 >>Akzeptiert die Quest Der Weg des Jägers << Human
    .train 56641 >>Erlernen |T132213:0|t[Zuverlässiger Schuss] << Cata
    .target Ashley Blank
step << Human Warrior/Human Paladin/Human Mage
    #optional
    #completewith next
    .goto 425,38.46,52.30,8,0 << Warrior/Paladin
    .goto 425,35.84,51.87,8,0 << Warrior/Paladin
    .goto 425,37.20,48.32,8,0 << Mage
    .goto 425,35.61,51.32,8,0 << Mage
    .goto 425,33.82,53.38,10,0
    .goto 425,35.58,60.57,40 >> Reist zu |cRXP_ENEMY_Übungs-Puppen|r
step << !Priest Human
    .goto 425,35.58,60.57,-1
    .goto 425,35.82,61.08,-1
    .goto 425,35.81,61.71,-1
    .goto 425,35.55,62.26,-1
    .goto 425,35.13,62.46,-1
    .goto 425,34.74,62.27,-1
    .goto 425,34.48,61.76,-1
    .goto 425,34.46,61.13,-1
    >>Cast |T574576:0|t[Hieb] followed by |T606551:0|t[Tigerklaue] on a |cRXP_ENEMY_Training Attrappe|r << Monk
    >>Cast |T132337:0|t[Ansturm] on a |cRXP_ENEMY_Training Attrappe|r << Warrior
    >>Cast |T135817:0|t[Feuerbrand] on a |cRXP_ENEMY_Training Attrappe|r 5 times << Warlock
    >>Cast |T136189:0|t[Finsterer Stoß] und then |T132292:0|t[Ausweiden] on a |cRXP_ENEMY_Training Attrappe|r 3 times << Rogue
    >>Cast |T135812:0|t[Feuerball] und then |T136096:0|t[Arkane Geschosse] when it procs on a |cRXP_ENEMY_Training Attrappe|r 2 times << Mage
    >>Cast |T132213:0|t[Zuverlässiger Schuss] on a |cRXP_ENEMY_Training Attrappe|r 5 times << Hunter
    >>Cast |T135960:0|t[Siegel der Rechtschaffenheit] und then |T135959:0|t[Richturteil] on a |cRXP_ENEMY_Training Attrappe|r << Paladin
--cata ids
    .complete 26913,1 << Warrior Cata --Cast Charge (1)
    .complete 26914,1 << Warlock Cata --Cast Immolation (5)
    .complete 26915,1 << Rogue Cata --Cast Eviscerate (3)
    .complete 26916,1 << Mage Cata --Cast Arcane Missiles (2)
    .complete 26917,1 << Hunter Cata --Cast Steady Shot (5)
    .complete 26918,1 << Paladin Cata --Cast Judgement (1)
--mop ids
    .complete 26913,2 << Warrior mop --Cast Charge (1)
    .complete 26914,2 << Warlock mop --Cast Immolation (5)
    .complete 26915,2 << Rogue mop --Cast Eviscerate (3)
    .complete 26916,2 << Mage mop --Cast Arcane Missiles (2)
    .complete 26917,2 << Hunter mop --Cast Steady Shot (5)
    .complete 26918,2 << Paladin mop --Cast Judgement (1)
    .complete 31142,2 << Monk --|Practice Tiger Palm: 1/1
    .mob Training Dummy
step << Human Warrior/Human Paladin/Human Mage/Human Monk
    #optional
    #completewith next
    .goto 425,35.84,51.87,8,0 << Warrior/Paladin
    .goto 425,38.46,52.30,8,0 << Warrior/Paladin
    .goto 425,35.61,51.32,8,0 << Mage
    .goto 425,37.20,48.32,8,0 << Mage
    .goto 425,38.31,46.07,8,0 << Mage
    .goto 425,37.94,45.13,5,0 << Mage
    .goto 425,40.87,53.80,10 >> Kehrt zurück zu |cRXP_FRIENDLY_Llane Beshere|r in der Abtei << Warrior
    .goto 425,41.55,53.23,10 >> Kehrt zurück zu |cRXP_FRIENDLY_Bruder Sammuel|r in der Abtei << Paladin
    .goto 425,38.78,43.47,10 >> Kehrt zurück zu |cRXP_FRIENDLY_Khelden Bremen|r in der Abtei << Mage
    .goto 425/0,-212.100,-8907.400,10 >> Kehrt zurück zu |cRXP_FRIENDLY_Bao|r in der Abtei << Monk
step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 31142 >>Gebt die Quest Heilung der Verwundeten ab
    .accept 31143 >>Akzeptiert die Quest Stürzt Euch in die Schlacht!
    .target Priestess Anetta
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 26919 >>Gebt die Quest Heilung der Verwundeten ab
    .accept 28786 >>Akzeptiert die Quest Stürzt Euch in die Schlacht!
    .target Priestess Anetta
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 26916 >>Gebt die Quest Beherrschung des Arkanen ab
    .accept 28784 >>Akzeptiert die Quest Stürzt Euch in die Schlacht!
    .target Khelden Bremen
step << Human Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 26913 >>Gebt die Quest In den Kampf stürmen ab
    .accept 28789 >>Akzeptiert die Quest Stürzt Euch in die Schlacht!
    .target Llane Beshere
step << Human Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bruder Sammuel|r
    .turnin 26918 >>Gebt die Quest Die Macht des Lichts ab
    .accept 28785 >>Akzeptiert die Quest Stürzt Euch in die Schlacht!
    .target Brother Sammuel
step << Human Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 26915 >>Gebt die Quest Der tiefste Schnitt ab
    .accept 28787 >>Akzeptiert die Quest Stürzt Euch in die Schlacht!
    .target Jorik Kerridan
step << Human Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 26914 >>Gebt die Quest Feuerbrand ab
    .accept 28788 >>Akzeptiert die Quest Stürzt Euch in die Schlacht!
    .target Drusilla La Salle
--XX May not need to turn in class quest to accept followup (aka can turn in later)
step << Human Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ashley Leer|r
    .turnin 26917 >>Gebt die Quest Der Weg des Jägers ab
    .accept 28780 >>Akzeptiert die Quest Stürzt Euch in die Schlacht!
    .target Ashley Blank




step
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28780 >>Gebt die Quest Stürzt Euch in die Schlacht! ab << Human Hunter
    .turnin 28784 >>Gebt die Quest Stürzt Euch in die Schlacht! ab << Human Mage
    .turnin 28785 >>Gebt die Quest Stürzt Euch in die Schlacht! ab << Human Paladin
    .turnin 28786 >>Gebt die Quest Stürzt Euch in die Schlacht! ab << Human Priest
    .turnin 28787 >>Gebt die Quest Stürzt Euch in die Schlacht! ab << Human Rogue
    .turnin 28788 >>Gebt die Quest Stürzt Euch in die Schlacht! ab << Human Warlock
    .turnin 28789 >>Gebt die Quest Stürzt Euch in die Schlacht! ab << Human Warrior
    .turnin 29080 >>Gebt die Quest Stürzt Euch in die Schlacht! ab << !Human
    .turnin 31143 >>Gebt die Quest Stürzt Euch in die Schlacht! ab << Human Death Knight/Human Monk
    .accept 28791 >>Akzeptiert die Quest Sie haben Auftragsmörder losgeschickt << Human Hunter
    .accept 28792 >>Akzeptiert die Quest Sie haben Auftragsmörder losgeschickt << Human Mage
    .accept 28793 >>Akzeptiert die Quest Sie haben Auftragsmörder losgeschickt << Human Paladin
    .accept 28794 >>Akzeptiert die Quest Sie haben Auftragsmörder losgeschickt << Human Priest
    .accept 28795 >>Akzeptiert die Quest Sie haben Auftragsmörder losgeschickt << Human Rogue
    .accept 28796 >>Akzeptiert die Quest Sie haben Auftragsmörder losgeschickt << Human Warlock
    .accept 28797 >>Akzeptiert die Quest Sie haben Auftragsmörder losgeschickt << Human Warrior
    .accept 29081 >>Akzeptiert die Quest Sie haben Auftragsmörder losgeschickt << !Human
    .accept 31144 >>Akzeptiert die Quest Sie haben Auftragsmörder losgeschickt << Human Death Knight/Human Monk
    .target Sergeant Willem
step << !DK !Monk
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,34.47,39.42,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,35.55,37.73,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Paxton|r
    .accept 28806 >>Akzeptiert die Quest Fürchtet nicht das Böse << Human Hunter
    .accept 28808 >>Akzeptiert die Quest Fürchtet nicht das Böse << Human Mage
    .accept 28809 >>Akzeptiert die Quest Fürchtet nicht das Böse << Human Paladin
    .accept 28810 >>Akzeptiert die Quest Fürchtet nicht das Böse << Human Priest
    .accept 28811 >>Akzeptiert die Quest Fürchtet nicht das Böse << Human Rogue
    .accept 28812 >>Akzeptiert die Quest Fürchtet nicht das Böse << Human Warlock
    .accept 28813 >>Akzeptiert die Quest Fürchtet nicht das Böse << Human Warrior
    .accept 29082 >>Akzeptiert die Quest Fürchtet nicht das Böse << !Human
    --.accept 63447 >>Accept Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step << skip
    #optional
    #completewith Rear
    .goto 425,31.59,16.72,40 >> |cRXP_WARN_[Selten] Überprüft auf |cRXP_ENEMY_Gug Fettkerze|r. Tötet ihn, wenn er verfügbar ist|r
    *|cRXP_WARN_Es ist wichtig, Rares zu töten und Schatztruhen zu plündern, da sie viel Erfahrung gewähren|r
	.unitscan Gug Fatcandle
    .noflyable
step << !DK !Monk
    #sticky
    #label Soldiers
    #loop
    .goto 425,31.99,28.69,0
    .goto 425,31.00,22.28,15,0
    .goto 425,29.16,25.64,15,0
    .goto 425,28.94,30.20,15,0
    .goto 425,30.49,30.95,15,0
    .goto 425,32.00,28.75,15,0
    .goto 425,31.56,25.82,15,0
    .goto 425,33.45,24.77,15,0
    .goto 425,36.08,23.69,15,0
    >>Klickt auf die |cRXP_PICK_Verletzten Sturmgard-Infanteristen|r am Boden, um sie wiederzubeleben
    .complete 28806,1 << Human Hunter --Revive Injured Soldiers (4)
    .complete 28808,1 << Human Mage --Revive Injured Soldiers (4)
    .complete 28809,1 << Human Paladin --Revive Injured Soldiers (4)
    .complete 28810,1 << Human Priest --Revive Injured Soldiers (4)
    .complete 28811,1 << Human Rogue --Revive Injured Soldiers (4)
    .complete 28812,1 << Human Warlock --Revive Injured Soldiers (4)
    .complete 28813,1 << Human Warrior --Revive Injured Soldiers (4)
    --.complete 63447,1 << Human Death Knight/Human Monk --Revive Injured Soldiers (4)
    .target Injured Stormwind Infantry
step
    #loop
    .goto 425,31.99,28.69,0
    .goto 425,33.00,21.94,45,0
    .goto 425,35.59,23.73,45,0
    .goto 425,36.54,27.68,45,0
    .goto 425,35.12,31.40,45,0
    .goto 425,33.27,32.25,45,0
    .goto 425,35.59,23.73,45,0
    .goto 425,29.65,31.64,45,0
    .goto 425,28.45,27.49,45,0
    .goto 425,27.16,18.98,45,0
    >>Tötet |cRXP_ENEMY_Goblin Assassins|r
    .complete 28791,1 << Human Hunter --Goblin Assassins (8)
    .complete 28792,1 << Human Mage --Goblin Assassins (8)
    .complete 28793,1 << Human Paladin --Goblin Assassins (8)
    .complete 28794,1 << Human Priest --Goblin Assassins (8)
    .complete 28795,1 << Human Rogue --Goblin Assassins (8)
    .complete 28796,1 << Human Warlock --Goblin Assassins (8)
    .complete 28797,1 << Human Warrior --Goblin Assassins (8)
    .complete 29081,1 << !Human --Goblin Assassins (8)
    .complete 31144,1 << Human Death Knight/Human Monk --Goblin Assassins (8)
    .mob Goblin Assassin
step << !DK !Monk
    #requires Soldiers
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,35.55,37.73,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,34.47,39.42,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Paxton|r
    .turnin 28806 >>Gebt die Quest Fürchtet nicht das Böse ab << Human Hunter
    .turnin 28808 >>Gebt die Quest Fürchtet nicht das Böse ab << Human Mage
    .turnin 28809 >>Gebt die Quest Fürchtet nicht das Böse ab << Human Paladin
    .turnin 28810 >>Gebt die Quest Fürchtet nicht das Böse ab << Human Priest
    .turnin 28811 >>Gebt die Quest Fürchtet nicht das Böse ab << Human Rogue
    .turnin 28812 >>Gebt die Quest Fürchtet nicht das Böse ab << Human Warlock
    .turnin 28813 >>Gebt die Quest Fürchtet nicht das Böse ab << Human Warrior
    .turnin 29082 >>Gebt die Quest Fürchtet nicht das Böse ab << !Human
    --.turnin 63447 >>Turn in Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step
    #label Rear
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Willem|r
    .turnin 28791 >>Gebt die Quest Sie haben Auftragsmörder losgeschickt ab << Human Hunter
    .turnin 28792 >>Gebt die Quest Sie haben Auftragsmörder losgeschickt ab << Human Mage
    .turnin 28793 >>Gebt die Quest Sie haben Auftragsmörder losgeschickt ab << Human Paladin
    .turnin 28794 >>Gebt die Quest Sie haben Auftragsmörder losgeschickt ab << Human Priest
    .turnin 28795 >>Gebt die Quest Sie haben Auftragsmörder losgeschickt ab << Human Rogue
    .turnin 28796 >>Gebt die Quest Sie haben Auftragsmörder losgeschickt ab << Human Warlock
    .turnin 28797 >>Gebt die Quest Sie haben Auftragsmörder losgeschickt ab << Human Warrior
    .turnin 29081 >>Gebt die Quest Sie haben Auftragsmörder losgeschickt ab << !Human
    .turnin 31144 >>Gebt die Quest Sie haben Auftragsmörder losgeschickt ab << Human Death Knight/Human Monk
    .accept 28817 >>Akzeptiert die Quest Gefahr gebannt << Human Hunter
    .accept 28818 >>Akzeptiert die Quest Gefahr gebannt << Human Mage
    .accept 28819 >>Akzeptiert die Quest Gefahr gebannt << Human Paladin
    .accept 28820 >>Akzeptiert die Quest Gefahr gebannt << Human Priest
    .accept 28821 >>Akzeptiert die Quest Gefahr gebannt << Human Rogue
    .accept 28822 >>Akzeptiert die Quest Gefahr gebannt << Human Warlock
    .accept 28823 >>Akzeptiert die Quest Gefahr gebannt << Human Warrior
    .accept 29083 >>Akzeptiert die Quest Gefahr gebannt << !Human
    .accept 31145 >>Akzeptiert die Quest Gefahr gebannt << Human Death Knight/Human Monk
    .target Sergeant Willem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r und |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 28817 >>Gebt die Quest Gefahr gebannt ab << Human Hunter
    .turnin 28818 >>Gebt die Quest Gefahr gebannt ab << Human Mage
    .turnin 28819 >>Gebt die Quest Gefahr gebannt ab << Human Paladin
    .turnin 28820 >>Gebt die Quest Gefahr gebannt ab << Human Priest
    .turnin 28821 >>Gebt die Quest Gefahr gebannt ab << Human Rogue
    .turnin 28822 >>Gebt die Quest Gefahr gebannt ab << Human Warlock
    .turnin 28823 >>Gebt die Quest Gefahr gebannt ab << Human Warrior
    .turnin 29083 >>Gebt die Quest Gefahr gebannt ab << !Human
    .turnin 31145 >>Gebt die Quest Gefahr gebannt ab << Human Death Knight/Human Monk
    .accept 26389 >>Akzeptiert die Quest Schwarzfelsinvasion
    .goto 425,33.56,53.04
    .target +Marshal McBride
    .accept 26391 >>Akzeptiert die Quest Die Hoffnung ersticken
    .goto 425,33.38,54.67
    .target +Milly Osworth
step << skip
    #completewith next
    +|cRXP_WARN_Um Tastenbelegung für Questgegenstände zu aktivieren, folgt diesen Schritten:|r
    *[1] Drückt die |cRXP_WARN_Escape key.|r
    *[2] Auswählen |cRXP_WARN_Options.|r
    *[3] Geht zu |cRXP_WARN_Keybindings|r.
    *[4] In |cRXP_WARN_Keybindings|r findet |cRXP_WARN_RestedXP Guides|r.
    *[5] Wählt die |cRXP_WARN_Active Knöpfchen.|r aus und bindet sie.
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Blackrock Invaders|r. Plündert sie für |cRXP_LOOT_Blackrock Orc Waffen|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #label Fire
    .goto 425,57.48,71.22,0
    .goto 425,49.10,78.42,20,0
    .goto 425,50.78,75.57,20,0
    .goto 425,51.22,77.49,20,0
    .goto 425,51.82,78.93,20,0
    .goto 425,50.59,80.71,20,0
    .goto 425,52.81,80.56,20,0
    .goto 425,52.53,82.55,20,0
    .goto 425,53.04,84.89,20,0
    .goto 425,54.33,85.93,20,0
    .goto 425,54.67,83.87,20,0
    .goto 425,56.91,82.37,20,0
    .goto 425,56.39,80.99,20,0
    .goto 425,56.96,78.82,20,0
    .goto 425,58.94,75.77,20,0
    .goto 425,55.12,73.91,20,0
    .goto 425,55.49,70.94,20,0
    .goto 425,53.67,68.68,20,0
    .goto 425,50.63,73.13,20,0
    >>|cRXP_WARN_Channel|r |T308321:0|t[Milly's Feuerlöscher] |cRXP_WARN_auf den Feuern im Weingut von Nordhain|r
    .complete 26391,1 --Vineyard Fire extinguished (8)
    .use 58362
step
    #loop
    .goto 425,54.27,77.40,0
    .goto 425,47.40,70.76,50,0
    .goto 425,46.82,75.39,50,0
    .goto 425,50.12,78.58,50,0
    .goto 425,53.79,84.88,50,0
    .goto 425,57.63,77.83,50,0
    .goto 425,57.48,71.22,50,0
    .goto 425,56.07,62.66,50,0
    >>Tötet |cRXP_ENEMY_Blackrock Invaders|r. Plündert sie für |cRXP_LOOT_Blackrock Orc Waffen|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly Osworth|r und |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26391 >>Gebt die Quest Die Hoffnung ersticken ab
    .target +Milly Osworth
    .goto 425,33.38,54.67
    .turnin 26389 >>Gebt die Quest Schwarzfelsinvasion ab
    .accept 26390 >>Akzeptiert die Quest Setzt der Invasion der Geißel der Geißel ein Ende!
    .goto 425,33.56,53.04
    .target +Marshal McBride
step
    .goto 425,64.97,48.38
    >>Tötet |cRXP_ENEMY_Kurtok der Schlächter|r
    .complete 26390,1 --Kurtok the Slayer (1)
    .mob Kurtok the Slayer
step
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26390 >>Gebt die Quest Setzt der Invasion der Geißel der Geißel ein Ende! ab
    .accept 54 >>Akzeptiert die Quest Meldung in Goldhain
    .target Marshal McBride
step
    #optional
    #completewith next
    .goto 37,46.877,48.018,20,0
    .goto 37,45.563,47.738,15 >> Reisen toward |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .skill riding,75,1
step
    .goto 37,45.563,47.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >>Akzeptiert die Quest Ruhe und Entspannung
    .target Falkhaan Isenstrider
]])

RXPGuides.RegisterGuide([[
#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 6-9 Wald von Elwynn
#next 9-11 Dun Morogh
#defaultfor Human/Dwarf/Gnome

<< Alliance

step << Dwarf
#xprate >1.19
    .goto 27,53.124,49.995
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharek Blackstone|r
    .turnin 24493 >>Gebt die Quest Vergesst uns nicht ab
	.target Tharek Blackstone
    .isOnQuest 24493
step << Dwarf/Gnome
#xprate >1.19
    #optional
    #completewith Belm
    .goto 27,54.083,50.335,8,0
    .goto 27,54.277,50.312,8,0
    .goto 27,54.485,50.847,10 >> Betretet die Brauerei Donnerbräu. Reist zu |cRXP_FRIENDLY_Gastwirt Belm|r drinnen.
    .subzoneskip 2102
step << Gnome
#xprate >1.19
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .turnin 26380,2 >>Gebt die Quest Lieferung für Kharanos ab
	.target Innkeeper Belm
    .isOnQuest 26380
--XX not sure how to do this otherwise
step << Dwarf/Gnome
#xprate >1.19
    #label Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Gastwirt Belm|r
    .home >>Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
	.target Innkeeper Belm
step << Dwarf/Gnome/DarkIronDwarf
#xprate >1.19
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gremlock Pilsnor|r drinnen im hinteren Bereich
    .accept 6387 >>Akzeptiert die Quest Ehrenstudenten
	.target Gremlock Pilsnor
step << cata Shaman
    #xprate <1.2
    .xp 7
step << cata Shaman
    #xprate <1.2
    .goto 1426/0,-536.50000,-5581.50000
    .train 331 >> Lernt |T136052:0|tHealing Winken beim Wirtshaus Kharanos
step << Gnome
#xprate >1.19
    #optional
    #questguide
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Tharran|r
    .turnin 26373 >>Gebt die Quest Weiter nach Kharanos ab
	.target Captain Tharran
    .isOnQuest 26373
step << Dwarf/Gnome
    .goto 1426/0,-497.50000,-5664.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brolan Galebeard|r
    .target Brolan Galebeard
    .turnin 6387 >>Gebt die Quest Ehrenstudenten ab
    .accept 6391 >>Akzeptiert die Quest Flug nach Eisenschmiede
step << Dwarf/Gnome
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brolan Galebeard|r
    .target Brolan Galebeard
    .goto 1426/0,-497.50000,-5664.00000
    .fly Ironforge >>Fliege nach Eisenschmiede
step << Dwarf/Gnome
    .goto 1455/0,-1118.50000,-4707.30029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .turnin 6391 >>Gebt die Quest Fahrt nach Eisenschmiede ab
    .accept 6388 >>Akzeptiert die Quest Gryth Thurden
step << Dwarf/Gnome
    .goto 1455/0,-1154.90002,-4820.70020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .turnin 6388 >>Gebt die Quest Gryth Thurden ab
    .accept 6392 >>Akzeptiert die Quest Rückkehr zu Gremlock
step << Dwarf/Gnome
#completewith next
    .goto Ironforge,55.501,47.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .fly Goldshire >> Fliegt nach Goldhain
step << Human
    #completewith GSReport
    .goto 37,41.71,52.74,-1
    .goto 37,39.48,60.53,-1
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isOnQuest 2158
    .skill riding,75,1
step
    #label GSReport
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 54 >>Gebt die Quest Meldung in Goldhain ab << Human
    .accept 62 >>Die Fargodeep Mine annehmen
	.target Marshal Dughan
step << Human
    .goto 37,41.708,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
    .accept 26393 >>Akzeptiert die Quest Eine eilige Nachricht
	.target Smith Argus
step << Human
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bartlett der Tapfere|r
	.turnin 26393 >>Gebt die Quest Eine eilige Nachricht ab
    .accept 26394 >>Akzeptiert die Quest Weiter nach Sturmwind
	.target Bartlett the Brave
step
    #optional
    #completewith next
    .goto 37,43.19,65.74,5,0
    .goto 37,43.23,65.95,5,0
    .goto 37,43.318,65.705,4 >> Reisen toward |cRXP_FRIENDLY_William Pestle|r
step
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >>Koboldkerzen annehmen
	.target William Pestle
step << Human
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Farley|r
    .turnin 2158 >>Gebt die Quest Ruhe und Entspannung ab
    .home >>Setzt euren Ruhestein bei Gasthaus "Zur Höhle des Löwen"
	.target Innkeeper Farley
step << skip
    #optional
    #completewith RemyTT
    .goto 37,41.95,67.16,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lien Farner|r neben |cRXP_FRIENDLY_Remy "Zweifach"|r, falls ihr Berufe trainieren möchtet
    .target Lien Farner
step
    #optional
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >> Reisen toward |cRXP_FRIENDLY_Remy "Zwei Times"|r
step
    #label RemyTT
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .accept 47 >>Tauschhandel mit Goldstaub annehmen
	.target Remy "Two Times"
step
    #optional
    #completewith Necklace1
    .goto 37,38.22,83.41,0
    >>Tötet |cRXP_ENEMY_Kobold Tunnelers|r. Plündert sie für |cRXP_LOOT_Large Kerzen|r und |cRXP_LOOT_Gold Staub|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r und |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 85 >>Verlorene Halskette annehmen
    .goto 37,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >>Prinzessin muss sterben! annehmen
    .goto 37,34.66,84.48
	.target +Ma Stonefield
    .xp <6,1
step
    #optional
    #label Necklace1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .accept 85 >>Verlorene Halskette annehmen
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
step
    #completewith Billy1
    .goto 37,38.22,83.41,0
    >>Tötet |cRXP_ENEMY_Kobold Tunnelers|r und |cRXP_ENEMY_Kobold Miners|r. Plündert sie für |cRXP_LOOT_Large Kerzen|r und |cRXP_LOOT_Gold Staub|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
	.mob Kobold Miner
step
    #label Billy1
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
    .accept 86 >> Kuchen für Billy annehmen
    .target Billy Maclure
step
    #completewith TommyJoe
    .goto 37,41.69,86.91,0
    .goto 37,32.54,85.26,0
    >>Tötet |cRXP_ENEMY_Stonetusk Boars|r. Plündert sie für |cRXP_LOOT_Tender Eber Fleisch|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
    .goto 37,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maybell Maclure|r innerhalb
    .accept 106 >> Junge liebende annehmen
    .target Maybell Maclure
step
    #optional
    .goto 37,41.69,86.91
    .xp 6 >> Farmt bis Stufe 6
    .mob Stonetusk Boar
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .accept 88 >>Prinzessin muss sterben! annehmen
	.target Ma Stonefield
step
    #optional
    #completewith PrincessEnd
    .goto 37,38.22,83.41,0
    >>Tötet |cRXP_ENEMY_Kobold Tunnelers|r. Plündert sie für |cRXP_LOOT_Large Kerzen|r und |cRXP_LOOT_Gold Staub|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << skip
    .goto 37,33.64,87.76,15 >>|cRXP_WARN_[CHEST] Überprüft |cRXP_PICK_Chest|r in den Ställen. Plündert sie, falls vorhanden|r
    .isOnQuest 60
step
    #loop
    #optional
	.line 37,32.48,86.81,33.41,86.16,33.32,84.95,32.58,84.26,32.04,85.20,32.48,86.81
    .goto 37,33.32,84.95,0
    .goto 37,32.04,85.20,20,0
    .goto 37,32.58,84.26,20,0
    .goto 37,33.32,84.95,20,0
    .goto 37,33.41,86.16,20,0
    .goto 37,32.48,86.81,20,0
    >>Tötet |cRXP_ENEMY_Princess|r. Plündert sie für |cRXP_LOOT_Brass Collar|r und |cRXP_LOOT_Tender Eber Fleisch|r
    .complete 88,1 --1/1 Brass Collar
    .complete 86,1 --Tender Boar Meat (4)
    .disablecheckbox
	.mob Princess
    .itemcount 60401,<4
    .isOnQuest 86
step
    #loop
    #label PrincessEnd
	.line 37,32.48,86.81,33.41,86.16,33.32,84.95,32.58,84.26,32.04,85.20,32.48,86.81
    .goto 37,33.32,84.95,0
    .goto 37,32.04,85.20,20,0
    .goto 37,32.58,84.26,20,0
    .goto 37,33.32,84.95,20,0
    .goto 37,33.41,86.16,20,0
    .goto 37,32.48,86.81,20,0
    >>Tötet |cRXP_ENEMY_Princess|r. Plündert sie für |cRXP_LOOT_Brass Collar|r
    .complete 88,1 --1/1 Brass Collar
	.mob Princess
--XX Will users struggle if they're still level 6?
step
    #label TommyJoe
    .goto 37,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Gebt die Quest Junge Liebende ab
    .accept 111 >> Gespräch mit Oma annehmen
    .target Tommy Joe Stonefield
step
    #loop
    .goto 37,41.69,86.91,0
    .goto 37,32.54,85.26,0
    .goto 37,31.25,85.42,40,0
    .goto 37,32.26,85.70,40,0
    .goto 37,32.35,86.66,40,0
    .goto 37,33.18,86.66,40,0 --Yes it's the same Y coordinate
    .goto 37,33.64,85.47,40,0
    .goto 37,31.93,83.57,40,0
    >>Tötet |cRXP_ENEMY_Stonetusk Boars|r. Plündert sie für |cRXP_LOOT_Tender Eber Fleisch|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
#sticky
#label princessT
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mutter Stonefield|r
    .turnin 88 >>Gebt die Quest Prinzessin muss sterben! ab
	.target Ma Stonefield
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .goto 37,34.486,84.253
    .turnin 86 >> Gebt die Quest Pastete für Billy ab
    .target "Auntie" Bernice Stonefield
step << Human
#xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
    .accept 84 >> Zurück zu Billy annehmen
step
#requires princessT
    .goto 37,34.94,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oma Stonefield|r innerhalb
    .turnin 111 >> Gebt die Quest Gespräch mit Oma ab
    .accept 107 >> Nachricht an William annehmen
    .target Gramma Stonefield
step << Human
#xprate <1.2
    #completewith Goldtooth
    .goto 37,38.22,83.41,0
    >>Tötet |cRXP_ENEMY_Kobold Tunnelers|r. Plündert sie für |cRXP_LOOT_Large Kerzen|r und |cRXP_LOOT_Gold Staub|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << Human
#xprate <1.2
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Gebt die Quest Zurück zu Billy ab
    .accept 87 >> Goldzahn annehmen
    .target Billy Maclure
step
    #xprate >1.59
    #optional
    .maxlevel 10,endOfTheGuide
step << Human
#xprate <1.2
    #label Goldtooth
    .goto Elwynn Forest,40.08,80.62
    >>Tötet |cRXP_ENEMY_Goldzahn|r |cRXP_WARN_außerhalb|r der Mine. Plündert ihn für |cRXP_LOOT_Bernices Halskette|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step << skip
    #optional
    .goto 37,38.22,83.41,40 >>|cRXP_WARN_[SELTEN] Überprüft auf|cRXP_ENEMY_ |rNarg der Zuchtmeister|r. Tötet ihn, wenn er aktiv ist
	.unitscan Narg the Taskmaster
    .isOnQuest 60
    .noflyable
step
    #completewith next
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explore Tiefenschachtmine
    .complete 62,1 --Scout through the Fargodeep Mine
step
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25,20,0
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25
    >>Tötet |cRXP_ENEMY_Kobold Tunnelers|r und |cRXP_ENEMY_Kobold Miners|r. Plündert sie für |cRXP_LOOT_Large Kerzen|r und |cRXP_LOOT_Gold Staub|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
    .mob *Kobold Tunneler
    .mob *Kobold Miner
step
    #label scoutm1
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explore Tiefenschachtmine
    .complete 62,1 --Scout through the Fargodeep Mine
step
#xprate <1.2
#requires scoutm1
    #optional
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25,20,0
    .goto 37,37.82,86.14,40,0
    .goto 37,37.89,81.45,40,0
    .goto 39,47.59,68.00,20,0
    .goto 39,60.14,82.29,20,0
    .goto 39,78.65,28.65,20,0
    .goto 39,57.67,25.29,20,0
    .goto 38,53.73,72.25
    .xp 6+2275 >> Schleift bis 2275+/3600xp
    .mob Kobold Tunneler
    .mob Kobold Miner
--XX 625 (Gold Dust) 700 (Goldtooth) - Ensure "A Fishy Peril"
step << Human
#xprate <1.2
    .goto 37,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tantchen Bernice Stonefield|r
    .turnin 87 >> Gebt die Quest Goldzahn ab
    .target "Auntie" Bernice Stonefield
--XX Early turnin XP gate for level 8? No idea how good/bad xp will be by now. Can be made optional/turned in later but I wanted to skip The Escape since you can fly Eastvale at 6+ and go north for checking rares instead
step << Human
    #completewith Kelp
    .hs >> Ruhestein nach Goldhain
    .subzoneskip 87
step << !Human
#completewith next
    .deathskip >> Sterbt ab und respawnt in Goldhain
    .subzoneskip 87
step
    #label Kelp
    #xprate >1.19 << Human
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Koboldkerzen abgeben
    .turnin 107 >> Gebt die Quest Nachricht an William ab
    .target William Pestle
step << Human
    #label Kelp
    #xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Koboldkerzen abgeben
    .turnin 107 >> Gebt die Quest Nachricht an William ab
    .accept 112 >> Akzeptiert die Quest Die Suche nach dem Tang
    .target William Pestle
step
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >>Kehrt zu |cRXP_FRIENDLY_Remy "Zweifach"|r zurück
step
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Remy "Zweifach"|r
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
    .accept 40 >> Gefahr aus dem Wasser annehmen
	.target Remy "Two Times"
step << Hunter cata
    .goto 37,40.854,65.902
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Benjamin Foxworthy|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Benjamin Foxworthy
step << Paladin cata
    .goto 37,41.074,65.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bruder Wilhelm|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Wilhelm
step << Warrior cata
    .goto 37,41.069,65.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Lyria Du Lac
step << Warlock cata
    #completewith next
    .goto 37,44.54,65.76,15 >> Reist hinunter in den Keller der Goldhain-Taverne
step << Warlock cata
    .goto 37,44.389,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Maximillian Crowe
step << Mage/Priest/Rogue cata
    #completewith next
    .goto 37,43.86,66.40,15 >> Reist die Treppen hinauf im Goldhain Gasthaus
step << Mage cata
    .goto 37,43.246,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Zaldimar Wefhellt
step << Priest cata
    .goto 37,43.282,65.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Priesterin Josetta|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Priestess Josetta
step << Rogue cata
    .goto 37,43.872,65.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Keryn Sylvius
step << Human
    #xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 35 >> Weitere Sorgen annehmen
    .accept 76 >> Die Jaspismine annehmen
    .target Marshal Dughan
    .isOnQuest 112
step
    #optional << Human
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .turnin 62 >> Die Fargodeep Mine abgeben
    .target Marshal Dughan
step
    #xprate >1.59
    #optional
    .maxlevel 10,endOfTheGuide
step << Human
    #xprate <1.2
    #completewith Frond
    #label ChargerMurloc
    .goto 37,42.105,65.927
    >>|cRXP_WARN_Wenn der 20-Sekunden-Timer abläuft (20 Sekunden, nachdem ihr die Fahrt angenommen habt), meldet euch ab und wieder an, während ihr auf dem |cRXP_FRIENDLY_Streitross aus Sturmwind|r sitzt, um abzusteigen|r
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal Dughan|r, um auf dem |cRXP_FRIENDLY_Streitross aus Sturmwind|r in Richtung |cRXP_FRIENDLY_Guard Thomas|r zu reiten
    .timer 20,Meldet euch ab, wenn der Timer endet
    .target Marshal Dughan
    .isOnQuest 76
    .skipgossip 240,1
    .skill riding,75,1
step << Human
    #xprate <1.2
    #optional
    #completewith Frond
    #requires ChargerMurloc
    .goto 37,56.23,66.64
    >>|cRXP_WARN_Wenn der 20-Sekunden-Timer abläuft (20 Sekunden, nachdem ihr die Fahrt angenommen habt), meldet euch ab und wieder an, während ihr auf dem |cRXP_FRIENDLY_Streitross aus Sturmwind|r sitzt, um abzusteigen|r
    .subzone 18 >> Reist zum Kristallsee
    .isOnQuest 76
    .skill riding,75,1
step << Human
    #xprate <1.2
    #label Frond
    #loop
    .goto 37,56.23,66.64,0
    .goto 37,56.23,66.64,40,0
    .goto 37,57.65,65.14,40,0
    .goto 37,57.29,62.51,40,0
    .goto 37,55.14,63.48,40,0
    .goto 37,54.79,66.42,40,0
    >>Tötet |cRXP_ENEMY_Murloc Streamrunners|r und |cRXP_ENEMY_Murlocs|r. Plündert sie für |cRXP_LOOT_Crystal Tang Frond|r
    .complete 112,1 --Crystal Kelp Frond (4)
    .mob Murloc Steamrunner
    .mob Murloc
    .isOnQuest 112
step << Human
    #xprate <1.2
    #optional
    #completewith next
    .goto 37,61.65,53.93,12,0
    .goto 40,48.05,87.33
    .subzone 54 >>BETRETET die Jaspismine
    .isOnQuest 76
step << Human
    #xprate <1.2
    .goto 40,44.22,67.89,12,0
    .goto 40,38.71,60.84,12,0
    .goto 40,35.92,52.81
    >>Folgt dem mittleren Pfad in der Jaspismine
    .complete 76,1 --Scout Through the Jasperlode Mine (1)
    .isOnQuest 76
step << Human
    #xprate <1.2
    #completewith Thomas
    .goto 37,61.58,70.04,0
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isOnQuest 76
    .skill riding,75,1
step << Human
    #xprate <1.2
    .goto 40,38.71,60.84,12,0
    .goto 40,44.22,67.89,12,0
    .goto 37,61.82,53.88,12,0
    .subzone 54,1 >>Verlasst die Jaspismine
    .isOnQuest 76
    .skill riding,<75,1
step
    #xprate >1.19 << !Human
    #completewith Thomas
    .goto 37,42.105,65.927
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal Dughan|r, um auf dem |cRXP_FRIENDLY_Streitross aus Sturmwind|r in Richtung |cRXP_FRIENDLY_Guard Thomas|r zu reiten
    .timer 90,Weiteres Rollenspiel
    .target Marshal Dughan
    .skipgossip 240,1
    .subzoneskip 87,1 --Goldshire
step
    #label Thomas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tKlickt |cRXP_PICK_Bounty An Bord gehen|r und sprecht mit |cRXP_FRIENDLY_Wache Thomas|r
    --.accept 46 >>Accept Bounty on Murlocs
    .accept 26152 >>Akzeptiert die Quest GESUCHT: James Clark
    .goto 37,74.025,72.310
    .turnin 35 >>Gebt die Quest Weitere Sorgen ab
    .accept 37 >>Akzeptiert die Quest Suche nach den vermissten Wachen
    .accept 52 >>Akzeptiert die Quest Grenzschutz
    .goto 37,73.973,72.177
    .target +Guard Thomas
step
    #completewith James
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    >>Tötet |cRXP_ENEMY_Prowlers|r und |cRXP_ENEMY_Gray Forest Wolves|r
    >>Tötet alle |cRXP_ENEMY_Young Forest Bären|r, die ihr seht
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    .goto 37,72.653,60.323
    >>Klickt |cRXP_PICK_Ein halb aufgefressener Körper|r auf dem Boden
    .turnin 37 >>Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >>Akzeptiert die Quest Rolfs Schicksal
step
    #label James
    .goto 37,78.87,67.20,10,0
    .goto 37,78.637,67.157
    >>Tötet |cRXP_FRIENDLY_James Clark|r im Inneren. Plündert ihn für |cRXP_LOOT_James Clark's Kopf|r und |T134939:0|t|cRXP_LOOT_[Goldabholplan]|r
    >>|cRXP_WARN_Benutzt |T134939:0|t|cRXP_LOOT_[Goldabholplan]|r, um die Quest zu starten|r
    .complete 26152,1 --James Clark's Head (1)
    .collect 1307,1,123,1 --Gold Pickup Schedule (1)
    .accept 123 >>Akzeptiert die Quest Der Sammler
    .mob James Clark
    .use 1307
--step
--    .goto 37,79.462,68.715
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
--    .accept 83 >>Accept Fine Linen Goods
--    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .accept 5545 >> Ein Bündel Probleme annehmen
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal Patterson|r
    .turnin 26152 >>Gebt die Quest GESUCHT: James Clark ab
    .turnin 123 >>Gebt die Quest Der Sammler ab
    .accept 147 >>Akzeptiert die Quest Menschenjagd
    .target Marshal Patterson
step
    #optional
    #completewith StoneCairn
    .goto 37,87.15,64.63,0
    .goto 37,81.56,58.15,0
    .goto 37,87.15,64.63,60,0
    >>Tötet |cRXP_ENEMY_Prowlers|r und |cRXP_ENEMY_Gray Forest Wolves|r
    >>Tötet alle |cRXP_ENEMY_Young Forest Bären|r, die ihr seht
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #completewith next
    .goto 37,80.88,53.78,0
    .goto 37,80.63,62.25,0
    .goto 37,82.79,60.12,0
    .goto 37,84.20,61.55,20,0
    >>Plündert |cRXP_LOOT_Bundles of Holz|r auf dem Boden neben den Bäumen
    .complete 5545,1 -- Bundle of Wood (8)
step
    .goto 37,79.795,55.510
    >>Klickt auf |cRXP_PICK_Rolfs Leichnam|r auf dem Boden
    .turnin 45 >>Gebt die Quest Rolfs Schicksal ab
    .accept 71 >>Meldung bei Thomas annehmen
step
    #sticky
    #label PTFrontier
    #loop
    .goto 37,81.72,58.57,0
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    .waypoint 37,81.72,58.57,60,0
    .waypoint 37,77.99,60.59,60,0
    .waypoint 37,71.58,60.84,60,0
    .waypoint 37,74.75,67.13,60,0
    .waypoint 37,87.15,64.63,60,0
    >>Tötet |cRXP_ENEMY_Prowlers|r und |cRXP_ENEMY_Gray Forest Wolves|r
    >>Tötet alle |cRXP_ENEMY_Young Forest Bären|r, die ihr seht
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    #loop
    .goto 37,80.88,53.78,0
    .goto 37,80.63,62.25,0
    .goto 37,82.79,60.12,0
    .goto 37,80.88,53.78,20,0
    .goto 37,80.48,55.18,20,0
    .goto 37,79.79,56.71,20,0 --Not Exact
    .goto 37,79.04,59.56,20,0
    .goto 37,77.30,59.56,20,0 --Not Exact/Real
    .goto 37,77.18,60.65,20,0 --Not Exact/Real
    .goto 37,76.75,61.76,20,0
    .goto 37,77.13,63.00,20,0
    .goto 37,78.38,62.35,20,0
    .goto 37,79.30,63.34,20,0
    .goto 37,80.24,61.47,20,0
    .goto 37,80.63,62.25,20,0
    .goto 37,81.57,62.64,20,0
    .goto 37,81.27,61.59,20,0
    .goto 37,82.00,61.01,20,0
    .goto 37,83.27,61.12,20,0
    .goto 37,84.20,61.55,20,0
    .goto 37,83.85,60.48,20,0
    .goto 37,82.79,60.12,20,0
    >>Plündert |cRXP_LOOT_Bundles of Holz|r auf dem Boden neben den Bäumen
    .complete 5545,1 -- Bundle of Wood (8)
step
    #requires PTFrontier
    .goto 37,73.973,72.177
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Thomas|r
    --.turnin 46 >> Turn in Bounty on Murlocs
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 59 >> Cloth und Leather Armor annehmen
    .target Guard Thomas
--XX     #optional if above not skipped
step
    .goto 37,71.02,80.67
    >>Tötet |cRXP_ENEMY_Morgan der Sammler|r im Inneren. Plündert ihn für |cRXP_LOOT_The Collector's Läuten|r
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sara Roderwald|r
    .turnin 59 >> Gebt die Quest Rüstung aus Tuch und aus Leder ab
    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorsteherin Raelen|r
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marshal Patterson|r
    .turnin 147 >>Gebt die Quest Menschenjagd ab
    .target Marshal Patterson
    .isQuestComplete 147
step << Hunter
--TODO: COORDS
    .target Rallic Finn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rallic Finn|r
    >>Kauft a |T135489:0|t[Laminierter Doppelbogen]
    .collect 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
step << Human
    #optional
    #completewith hs1
    .hs >> Benutzt euren Ruhestein nach Goldhain
    .cooldown item,6948,<0,1
step << Human
    #completewith hs1
    #xprate <1.2
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Goss der Flinke|r
    .fly Goldshire >> Fliegt nach Goldhain
    .target Goss the Swift
    .subzoneskip 87
    .zoneskip 37,1
    .cooldown item,6948,>0,1
step
    #optional
    #label endOfTheGuide
step << Human !Paladin !Warrior !Rogue
    #xprate >1.19
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Goss der Flinke|r
    .fly Gol'Bolar Quarry >> Fliegt nach Steinbruch Gol'Bolar
    .target Goss the Swift
    .cooldown item,6948,>0,1
step << Human
#xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Gebt die Quest Die Suche nach dem Tang ab
    .target William Pestle
    .isQuestComplete 112

step << Human
#xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Dughan|r
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
    --.accept 239 >> Accept Westbrook Garrison Needs Help!
    .target Marshal Dughan
    .isQuestComplete 76
--XX Can skip rest of steps and fly to Dun Morogh from here if level 10+? #Optional if above step not skipped
step
#label hs1
--Melee classes need to buy weapon upgrades:
step << Human
#xprate <1.2
    #completewith next
    #label FlySW
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bartlett der Tapfere|r
    .fly Stormwind >> Fliege nach Sturmwind << Rogue/Paladin/Warrior
    .fly Gol'Bolar Quarry >> Fliegt nach Steinbruch Gol'Bolar << !Rogue !Paladin !Warrior
	.target Bartlett the Brave
    .zoneskip Stormwind City
    .itemStat 16,QUALITY,<7
step << Human (Warrior/Paladin)
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft|r |T135350:0|t[Claymore] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Marda Weller
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft|r |T135346:0|t[Entersäbel] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Marda Weller
    .xp >11,1
    .xp <10,1
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft|r |T132402:0|t[Kriegsbeil] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Marda Weller
    .xp >12,1
    .xp <11,1
step <<Human (Warrior/Paladin)
    #optional
    #completewith end
    +|cRXP_WARN_Rüstet das|r |T135350:0|t[Claymore] aus
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Rüstet den|r |T135346:0|t[Entersäbel] |cRXP_WARN_in der Haupthand aus|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Legt an|r |T132402:0|t[Kriegsbeil] |cRXP_WARN_in der Haupthand|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Human (Rogue/Paladin/Warrior)
    .goto 84,70.938,72.472,-1
    .goto 37,81.829,66.556,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dungar Trinkfest|r oder |cRXP_FRIENDLY_Goss der Flinke|r
    .fly Gol'Bolar Quarry >> Fliegt nach Steinbruch Gol'Bolar
	.target Dungar Longdrink
    .zoneskip 27 --Dun Morogh
    .target Goss the Swift

step << Dwarf/Gnome
#completewith next
    .hs >> Ruhestein nach Theramore
    .zoneskip Dun Morogh
step << Dwarf/Gnome
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gremlock Pilsnor|r drinnen im hinteren Bereich
    .turnin 6392 >>Gebt die Quest Rückkehr zu Gremlock ab
	.target Gremlock Pilsnor
--TODO: Training for dwarf/gnomes
step << Dwarf/Gnome
    .goto 27,53.802,52.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brolan Galebeard|r
    .fly Gol'Bolar Quarry >> Fliegt nach Steinbruch Gol'Bolar
	.target Brolan Galebeard
step << Human
    .abandon 26394 >> Brecht alle Wald von Elwynn Quests von Euch aus eurem Questtagebuch ab
step
#label end
.zone Dun Morogh >> Geht nach Östliches Dun Morogh
]])
