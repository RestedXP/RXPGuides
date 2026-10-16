if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 Vallée de Comté-du-Nord
#version 1
#next 6-9 Forêt d'Elwynn
#defaultfor Human !DK

<< Alliance

step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .accept 28757 >>Acceptez la quête Repoussez-les ! << Human Mage
    .accept 28762 >>Acceptez la quête Repoussez-les ! << Human Paladin
    .accept 28763 >>Acceptez la quête Repoussez-les ! << Human Priest
    .accept 28764 >>Acceptez la quête Repoussez-les ! << Human Rogue
    .accept 28765 >>Acceptez la quête Repoussez-les ! << Human Warlock
    .accept 28766 >>Acceptez la quête Repoussez-les ! << Human Warrior
    .accept 28767 >>Acceptez la quête Repoussez-les ! << Human Hunter
    .accept 29078 >>Acceptez la quête Repoussez-les ! << !Human
    .accept 31139 >>Acceptez la quête Repoussez-les ! << Human Death Knight/Human Monk
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
    >>Tuez |cRXP_ENEMY_Blackrock Worgs|r << !mop
    >>Tuez |cRXP_ENEMY_Blackrock Bataille Worgs|r << mop
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28757 >>Rendez la quête Repoussez-les ! << Human Mage
    .turnin 28762 >>Rendez la quête Repoussez-les ! << Human Paladin
    .turnin 28763 >>Rendez la quête Repoussez-les ! << Human Priest
    .turnin 28764 >>Rendez la quête Repoussez-les ! << Human Rogue
    .turnin 28765 >>Rendez la quête Repoussez-les ! << Human Warlock
    .turnin 28766 >>Rendez la quête Repoussez-les ! << Human Warrior
    .turnin 28767 >>Rendez la quête Repoussez-les ! << Human Hunter
    .turnin 29078 >>Rendez la quête Repoussez-les ! << !Human
    .turnin 31139 >>Rendez la quête Repoussez-les ! << Human Death Knight/Human Monk
    .accept 28759 >> Acceptez la quête Le lion et l'agneau << Human Hunter
    .accept 28769 >> Acceptez la quête Le lion et l'agneau << Human Mage
    .accept 28770 >> Acceptez la quête Le lion et l'agneau << Human Paladin
    .accept 28771 >> Acceptez la quête Le lion et l'agneau << Human Priest
    .accept 28772 >> Acceptez la quête Le lion et l'agneau << Human Rogue
    .accept 28773 >> Acceptez la quête Le lion et l'agneau << Human Warlock
    .accept 28774 >> Acceptez la quête Le lion et l'agneau << Human Warrior
    .accept 29079 >> Acceptez la quête Le lion et l'agneau << !Human
    .accept 31140 >> Acceptez la quête Le lion et l'agneau << Human Death Knight/Human Monk
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
    >>Tuez |cRXP_ENEMY_Blackrock Spies|r
    >>|cRXP_WARN_Ils sont|r |T132320:0|t[Camouflé] |cRXP_WARN_(mais facilement visible)|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28769 >>Rendez la quête Le lion et l'agneau << Human Mage
    .turnin 28759 >>Rendez la quête Le lion et l'agneau << Human Hunter
    .turnin 28770 >>Rendez la quête Le lion et l'agneau << Human Paladin
    .turnin 28771 >>Rendez la quête Le lion et l'agneau << Human Priest
    .turnin 28772 >>Rendez la quête Le lion et l'agneau << Human Rogue
    .turnin 28773 >>Rendez la quête Le lion et l'agneau << Human Warlock
    .turnin 28774 >>Rendez la quête Le lion et l'agneau << Human Warrior
    .turnin 29079 >>Rendez la quête Le lion et l'agneau << !Human
    .turnin 31140 >>Rendez la quête Le lion et l'agneau << Human Death Knight/Human Monk
    .accept 28780 >>Acceptez la quête Rejoignez la bataille ! << Human Hunter
    .accept 28784 >>Acceptez la quête Rejoignez la bataille ! << Human Mage
    .accept 28785 >>Acceptez la quête Rejoignez la bataille ! << Human Paladin
    .accept 28786 >>Acceptez la quête Rejoignez la bataille ! << Human Priest
    .accept 28787 >>Acceptez la quête Rejoignez la bataille ! << Human Rogue
    .accept 28788 >>Acceptez la quête Rejoignez la bataille ! << Human Warlock
    .accept 28789 >>Acceptez la quête Rejoignez la bataille ! << Human Warrior
    .accept 29080 >>Acceptez la quête Rejoignez la bataille ! << !Human
    .accept 31143 >>Acceptez la quête Rejoignez la bataille ! << Human Death Knight/Human Monk
    .target Marshal McBride
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 28769 >>Rendez la quête Le lion et l'agneau << Human Mage
    .turnin 28759 >>Rendez la quête Le lion et l'agneau << Human Hunter
    .turnin 28770 >>Rendez la quête Le lion et l'agneau << Human Paladin
    .turnin 28771 >>Rendez la quête Le lion et l'agneau << Human Priest
    .turnin 28772 >>Rendez la quête Le lion et l'agneau << Human Rogue
    .turnin 28773 >>Rendez la quête Le lion et l'agneau << Human Warlock
    .turnin 28774 >>Rendez la quête Le lion et l'agneau << Human Warrior
    .turnin 29079 >>Rendez la quête Le lion et l'agneau << !Human
    .turnin 31140 >>Rendez la quête Le lion et l'agneau << Human Death Knight/Human Monk
    .accept 3100 >>Acceptez la quête Lettre simple << Human Warrior
    .accept 3101 >>Acceptez la quête Lettre consacrée << Human Paladin
    .accept 3102 >>Acceptez Lettre codée << Human Rogue
    .accept 3103 >>Acceptez la quête Lettre bénie << Human Priest
    .accept 3104 >>Acceptez la quête Lettre glyphée << Human Mage
    .accept 3105 >>Acceptez la quête Lettre contaminée << Human Warlock
    .accept 26910 >>Acceptez la quête La lettre gravée << Human Hunter
    .accept 31141 >>Acceptez la quête Lettre calligraphiée << Human Monk
    .accept 29080 >>Acceptez la quête Rejoignez la bataille ! << !Human
    .target Marshal McBride
--XX needs testing on non-human classes. Not needed for Monks/DKs

step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bao|r
    .target Bao
    .turnin 31141 >>Rendre la quête Lettre calligraphiée
    .accept 31142 >>Acceptez la quête Paume du tigre
step << Warrior/Paladin
    #optional
    #completewith next
    .goto 425,35.84,51.87,8,0
    .goto 425,38.46,52.30,8,0
    .goto 425,40.87,53.80,10 >> Rendez-vous vers |cRXP_FRIENDLY_Llane Beshere|r dans l'Abbaye << Warrior
    .goto 425,41.55,53.23,10 >> Rendez-vous vers |cRXP_FRIENDLY_Frère Sammuel|r dans l'Abbaye << Paladin
step << Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 3100 >>Rendez la quête Lettre simple << Human
    .accept 26913 >>Acceptez la quête La charge héroïque << Human
    .train 100 >>Apprenez [Charge] << Cata
    .target Llane Beshere
step << Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 3101 >>Rendez la quête Lettre consacrée << Human
    .accept 26918 >>Acceptez la quête Le pouvoir de la Lumière << Human
    .train 20154 >>S'entraîner |T135960:0|t[Sceau de piété] << Cata
    .train 20271 >>Apprenez [Jugement] << Cata
    .target Brother Sammuel
step << Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorik Kerridan|r à l'extérieur de l'autre côté de l'Abbaye
    .turnin 3102 >>Rendez Lettre codée << Human
    .accept 26915 >>Acceptez la quête La Meurtrissure la plus profonde << Human
    .train 2098 >>Entraînez-vous |T132292:0|t[L'éviscération] << Cata
    .target Jorik Kerridan
step << Human Priest/Human Mage
    #optional
    #completewith next
    .goto 425,35.61,51.32,8,0
    .goto 425,37.20,48.32,8,0
    .goto 425,38.95,46.52,8,0 << Priest
    .goto 425,38.31,46.07,8,0 << Mage
    .goto 425,37.94,45.13,5,0 << Mage
    .goto 425,39.31,43.78,10 >> Rendez-vous vers |cRXP_FRIENDLY_Prêtresse Anetta|r dans l'Abbaye << Priest
    .goto 425,38.78,43.47,10 >> Rendez-vous vers |cRXP_FRIENDLY_Khelden Bremen|r dans l'Abbaye à l'étage. Sautez depuis les escaliers par la rampe à l'extérieur de sa chambre si vous pouvez << Mage
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 3103 >>Rendez la quête Lettre bénie
    .accept 26919 >>Acceptez la quête Soins du Blessé << cata
    .accept 26919 >>Acceptez la quête Apprendre la parole << !cata
    .train 2061 >>Entraînez-vous |T135907:0|t[Soins rapides] << Cata
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
    >>Lancez |T135907:0|t[Soins rapides] sur 5 |cRXP_FRIENDLY_Recrues blessées|r dans l'Abbaye
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
    >>Lancez |T136207:0|t[Mot de l'ombre : Douleur] sur un |cRXP_ENEMY_Mannequin d'entraînement|r 5 fois
    .complete 26919,2 --Cast Flash Heal (5)
    .target Training Dummy
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >>Rendez la quête Lettre glyphée << Human
    .accept 26916 >>Acceptez la quête L'apprentissage des Arcanes << Human
    .train 5143 >>Apprenez |T136096:0|t[Projectiles des Arcanes] << Cata
    .target Khelden Bremen
--XX Human Mage only since Arcane Missiles is somewhat useless when you just fireball spam
step << Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Rendez la quête Lettre contaminée << Human
    .accept 26914 >>Acceptez la quête Immoler << Human
    .train 348 >>Apprenez [Immolation] << Cata
    .target Drusilla La Salle
step << Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ashley Vide|r
    .turnin 26910 >>Rendre la quête La lettre gravée << Human
    .accept 26917 >>Acceptez la quête L'assurance de bien tirer << Human
    .train 56641 >>S'entraîner |T132213:0|t[Veilleur du puits Solanian] << Cata
    .target Ashley Blank
step << Human Warrior/Human Paladin/Human Mage
    #optional
    #completewith next
    .goto 425,38.46,52.30,8,0 << Warrior/Paladin
    .goto 425,35.84,51.87,8,0 << Warrior/Paladin
    .goto 425,37.20,48.32,8,0 << Mage
    .goto 425,35.61,51.32,8,0 << Mage
    .goto 425,33.82,53.38,10,0
    .goto 425,35.58,60.57,40 >> Rendez-vous vers les |cRXP_ENEMY_Training Dummies|r
step << !Priest Human
    .goto 425,35.58,60.57,-1
    .goto 425,35.82,61.08,-1
    .goto 425,35.81,61.71,-1
    .goto 425,35.55,62.26,-1
    .goto 425,35.13,62.46,-1
    .goto 425,34.74,62.27,-1
    .goto 425,34.48,61.76,-1
    .goto 425,34.46,61.13,-1
    >>Lancez |T574576:0|t[Coup direct] suivi de |T606551:0|t[Paume du tigre] sur un |cRXP_ENEMY_Mannequin d'entraînement|r << Monk
    >>Lancez |T132337:0|t[À la charge !] sur un |cRXP_ENEMY_Mannequin d'entraînement|r << Warrior
    >>Lancez |T135817:0|t[Immolation] sur un |cRXP_ENEMY_Mannequin d'entraînement|r 5 fois << Warlock
    >>Lancez |T136189:0|t[Attaque pernicieuse] puis |T132292:0|t[L'éviscération] sur un |cRXP_ENEMY_Mannequin d'entraînement|r 3 fois << Rogue
    >>Lancez |T135812:0|t[Boule de feu] puis |T136096:0|t[Projectiles des Arcanes] quand elle se déclenche sur un |cRXP_ENEMY_Mannequin d'entraînement|r 2 fois << Mage
    >>Lancez |T132213:0|t[Veilleur du puits Solanian] sur un |cRXP_ENEMY_Mannequin d'entraînement|r 5 fois << Hunter
    >>Lancez |T135960:0|t[Sceau de piété] puis |T135959:0|t[Jugement] sur un |cRXP_ENEMY_Mannequin d'entraînement|r << Paladin
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
    .goto 425,40.87,53.80,10 >> Retournez à |cRXP_FRIENDLY_Llane Beshere|r dans l'Abbaye << Warrior
    .goto 425,41.55,53.23,10 >> Retournez à |cRXP_FRIENDLY_Frère Sammuel|r dans l'Abbaye << Paladin
    .goto 425,38.78,43.47,10 >> Retournez à |cRXP_FRIENDLY_Khelden Bremen|r dans l'Abbaye << Mage
    .goto 425/0,-212.100,-8907.400,10 >> Retournez à |cRXP_FRIENDLY_Bao|r dans l'Abbaye << Monk
step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 31142 >>Rendre la quête Soins du Blessé
    .accept 31143 >>Acceptez la quête Rejoignez la bataille !
    .target Priestess Anetta
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Anetta|r
    .turnin 26919 >>Rendre la quête Soins du Blessé
    .accept 28786 >>Acceptez la quête Rejoignez la bataille !
    .target Priestess Anetta
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 26916 >>Rendre la quête L'apprentissage des Arcanes
    .accept 28784 >>Acceptez la quête Rejoignez la bataille !
    .target Khelden Bremen
step << Human Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 26913 >>Rendre la quête La charge héroïque
    .accept 28789 >>Acceptez la quête Rejoignez la bataille !
    .target Llane Beshere
step << Human Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Sammuel|r
    .turnin 26918 >>Rendre la quête Le pouvoir de la Lumière
    .accept 28785 >>Acceptez la quête Rejoignez la bataille !
    .target Brother Sammuel
step << Human Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 26915 >>Rendez la quête La plus profonde des blessures
    .accept 28787 >>Acceptez la quête Rejoignez la bataille !
    .target Jorik Kerridan
step << Human Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 26914 >>Rendre la quête Immoler
    .accept 28788 >>Acceptez la quête Rejoignez la bataille !
    .target Drusilla La Salle
--XX May not need to turn in class quest to accept followup (aka can turn in later)
step << Human Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ashley Vide|r
    .turnin 26917 >>Rendre la quête L'assurance de bien tirer
    .accept 28780 >>Acceptez la quête Rejoignez la bataille !
    .target Ashley Blank




step
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Willem|r
    .turnin 28780 >>Rendez la quête Rejoignez la bataille ! << Human Hunter
    .turnin 28784 >>Rendez la quête Rejoignez la bataille ! << Human Mage
    .turnin 28785 >>Rendez la quête Rejoignez la bataille ! << Human Paladin
    .turnin 28786 >>Rendez la quête Rejoignez la bataille ! << Human Priest
    .turnin 28787 >>Rendez la quête Rejoignez la bataille ! << Human Rogue
    .turnin 28788 >>Rendez la quête Rejoignez la bataille ! << Human Warlock
    .turnin 28789 >>Rendez la quête Rejoignez la bataille ! << Human Warrior
    .turnin 29080 >>Rendez la quête Rejoignez la bataille ! << !Human
    .turnin 31143 >>Rendez la quête Rejoignez la bataille ! << Human Death Knight/Human Monk
    .accept 28791 >>Acceptez la quête Ils ont envoyé des assassins << Human Hunter
    .accept 28792 >>Acceptez la quête Ils ont envoyé des assassins << Human Mage
    .accept 28793 >>Acceptez la quête Ils ont envoyé des assassins << Human Paladin
    .accept 28794 >>Acceptez la quête Ils ont envoyé des assassins << Human Priest
    .accept 28795 >>Acceptez la quête Ils ont envoyé des assassins << Human Rogue
    .accept 28796 >>Acceptez la quête Ils ont envoyé des assassins << Human Warlock
    .accept 28797 >>Acceptez la quête Ils ont envoyé des assassins << Human Warrior
    .accept 29081 >>Acceptez la quête Ils ont envoyé des assassins << !Human
    .accept 31144 >>Acceptez la quête Ils ont envoyé des assassins << Human Death Knight/Human Monk
    .target Sergeant Willem
step << !DK !Monk
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,34.47,39.42,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,35.55,37.73,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .accept 28806 >>Acceptez la quête Même pas peur << Human Hunter
    .accept 28808 >>Acceptez la quête Même pas peur << Human Mage
    .accept 28809 >>Acceptez la quête Même pas peur << Human Paladin
    .accept 28810 >>Acceptez la quête Même pas peur << Human Priest
    .accept 28811 >>Acceptez la quête Même pas peur << Human Rogue
    .accept 28812 >>Acceptez la quête Même pas peur << Human Warlock
    .accept 28813 >>Acceptez la quête Même pas peur << Human Warrior
    .accept 29082 >>Acceptez la quête Même pas peur << !Human
    --.accept 63447 >>Accept Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step << skip
    #optional
    #completewith Rear
    .goto 425,31.59,16.72,40 >> |cRXP_WARN_[RARE] Vérification pour |cRXP_ENEMY_Gug Grosse-Bougie|r. Tuez-le s'il est actif|r
    *|cRXP_WARN_Il est important de tuer des Rares et de piller les Coffres de Trésor, car ils accordent beaucoup d'expérience|r
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
    >>Cliquez sur les |cRXP_PICK_Injured Entités de BC Infantries|r au sol pour les ressusciter
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
    >>Tuez les |cRXP_ENEMY_Gobelin Assassins|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Frère Paxton|r.
    .turnin 28806 >>Rendez la quête Même pas peur << Human Hunter
    .turnin 28808 >>Rendez la quête Même pas peur << Human Mage
    .turnin 28809 >>Rendez la quête Même pas peur << Human Paladin
    .turnin 28810 >>Rendez la quête Même pas peur << Human Priest
    .turnin 28811 >>Rendez la quête Même pas peur << Human Rogue
    .turnin 28812 >>Rendez la quête Même pas peur << Human Warlock
    .turnin 28813 >>Rendez la quête Même pas peur << Human Warrior
    .turnin 29082 >>Rendez la quête Même pas peur << !Human
    --.turnin 63447 >>Turn in Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step
    #label Rear
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sergent Willem|r
    .turnin 28791 >>Rendez la quête Ils ont envoyé des assassins << Human Hunter
    .turnin 28792 >>Rendez la quête Ils ont envoyé des assassins << Human Mage
    .turnin 28793 >>Rendez la quête Ils ont envoyé des assassins << Human Paladin
    .turnin 28794 >>Rendez la quête Ils ont envoyé des assassins << Human Priest
    .turnin 28795 >>Rendez la quête Ils ont envoyé des assassins << Human Rogue
    .turnin 28796 >>Rendez la quête Ils ont envoyé des assassins << Human Warlock
    .turnin 28797 >>Rendez la quête Ils ont envoyé des assassins << Human Warrior
    .turnin 29081 >>Rendez la quête Ils ont envoyé des assassins << !Human
    .turnin 31144 >>Rendez la quête Ils ont envoyé des assassins << Human Death Knight/Human Monk
    .accept 28817 >>Acceptez la quête La zone est dégagée << Human Hunter
    .accept 28818 >>Acceptez la quête La zone est dégagée << Human Mage
    .accept 28819 >>Acceptez la quête La zone est dégagée << Human Paladin
    .accept 28820 >>Acceptez la quête La zone est dégagée << Human Priest
    .accept 28821 >>Acceptez la quête La zone est dégagée << Human Rogue
    .accept 28822 >>Acceptez la quête La zone est dégagée << Human Warlock
    .accept 28823 >>Acceptez la quête La zone est dégagée << Human Warrior
    .accept 29083 >>Acceptez la quête La zone est dégagée << !Human
    .accept 31145 >>Acceptez la quête La zone est dégagée << Human Death Knight/Human Monk
    .target Sergeant Willem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal McBride|r et |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 28817 >>Rendez la quête La zone est dégagée << Human Hunter
    .turnin 28818 >>Rendez la quête La zone est dégagée << Human Mage
    .turnin 28819 >>Rendez la quête La zone est dégagée << Human Paladin
    .turnin 28820 >>Rendez la quête La zone est dégagée << Human Priest
    .turnin 28821 >>Rendez la quête La zone est dégagée << Human Rogue
    .turnin 28822 >>Rendez la quête La zone est dégagée << Human Warlock
    .turnin 28823 >>Rendez la quête La zone est dégagée << Human Warrior
    .turnin 29083 >>Rendez la quête La zone est dégagée << !Human
    .turnin 31145 >>Rendez la quête La zone est dégagée << Human Death Knight/Human Monk
    .accept 26389 >>Acceptez la quête L'invasion rochenoire
    .goto 425,33.56,53.04
    .target +Marshal McBride
    .accept 26391 >>Acceptez la quête Un espoir d'extinction
    .goto 425,33.38,54.67
    .target +Milly Osworth
step << skip
    #completewith next
    +|cRXP_WARN_Pour activer la liaison de touches pour les objets de quête, suivez ces étapes:|r
    *[1] Appuyez sur la |cRXP_WARN_Echap./Esc.|r touche.
    *[2] Sélectionnez |cRXP_WARN_Options|r.
    *[3] Accédez à |cRXP_WARN_Keybindings|r.
    *[4] Dans |cRXP_WARN_Keybindings|r, trouvez |cRXP_WARN_RestedXP Guides|r.
    *[5] Sélectionnez et liez les |cRXP_WARN_Active Boutons|r.
step
    #completewith next
    >>Tuez les |cRXP_ENEMY_Blackrock Invaders|r. Ramassez-les pour leur Butin: les |cRXP_LOOT_Blackrock Orc Armes|r
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
    >>|cRXP_WARN_Canal|r |T308321:0|t[Milly's Extincteur] |cRXP_WARN_sur les feux à travers le Vignoble de Comté-du-Nord|r
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
    >>Tuez les |cRXP_ENEMY_Blackrock Invaders|r. Ramassez-les pour leur Butin: les |cRXP_LOOT_Blackrock Orc Armes|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Milly Osworth|r et |cRXP_FRIENDLY_Maréchal McBride|r
    .turnin 26391 >>Rendez la quête Un espoir d'extinction
    .target +Milly Osworth
    .goto 425,33.38,54.67
    .turnin 26389 >>Rendez la quête L'invasion rochenoire
    .accept 26390 >>Acceptez la quête Mettez un terme à l'invasion !
    .goto 425,33.56,53.04
    .target +Marshal McBride
step
    .goto 425,64.97,48.38
    >>Tuez |cRXP_ENEMY_Kurtok le Tueur|r
    .complete 26390,1 --Kurtok the Slayer (1)
    .mob Kurtok the Slayer
step
    #completewith next
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal McBride|r
    .turnin 26390 >>Rendez la quête Mettez un terme à l'invasion !
    .accept 54 >>Acceptez la quête Rapport pour Comté-de-l’Or
    .target Marshal McBride
step
    #optional
    #completewith next
    .goto 37,46.877,48.018,20,0
    .goto 37,45.563,47.738,15 >> Rendez-vous vers |cRXP_FRIENDLY_Falkhaan Isenrôde|r
    .skill riding,75,1
step
    .goto 37,45.563,47.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Falkhaan Isenstrider|r
    .accept 2158 >>Acceptez la quête Repos et détente
    .target Falkhaan Isenstrider
]])

RXPGuides.RegisterGuide([[
#version 1
#group RXP Cataclysme 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 6-9 Forêt d'Elwynn
#next 9-11 Dun Morogh
#defaultfor Human/Dwarf/Gnome

<< Alliance

step << Dwarf
#xprate >1.19
    .goto 27,53.124,49.995
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tharek Blackstone|r
    .turnin 24493 >>Rendez la quête Ne nous oubliez pas
	.target Tharek Blackstone
    .isOnQuest 24493
step << Dwarf/Gnome
#xprate >1.19
    #optional
    #completewith Belm
    .goto 27,54.083,50.335,8,0
    .goto 27,54.277,50.312,8,0
    .goto 27,54.485,50.847,10 >> Entrez dans la Distillerie Tonnebière. Rendez-vous vers |cRXP_FRIENDLY_Belm l'aubergiste|r à l'intérieur
    .subzoneskip 2102
step << Gnome
#xprate >1.19
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .turnin 26380,2 >>Rendez la quête C'est le brasseur !
	.target Innkeeper Belm
    .isOnQuest 26380
--XX not sure how to do this otherwise
step << Dwarf/Gnome
#xprate >1.19
    #label Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Belm l'aubergiste|r dans l'auberge
    .home >>Liez votre Pierre de Foyer à la Distillerie Tonnebière
	.target Innkeeper Belm
step << Dwarf/Gnome/DarkIronDwarf
#xprate >1.19
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gremlock Pilsnor|r à l'intérieur de l'arrière-salle
    .accept 6387 >>Acceptez la quête L'honneur des étudiants
	.target Gremlock Pilsnor
step << cata Shaman
    #xprate <1.2
    .xp 7
step << cata Shaman
    #xprate <1.2
    .goto 1426/0,-536.50000,-5581.50000
    .train 331 >> Entraînez-vous à |T136052:0|tVague de soins à l'auberge de Kharanos
step << Gnome
#xprate >1.19
    #optional
    #questguide
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Capitaine Tharran|r
    .turnin 26373 >>Rendre la quête Prochaine étape : Kharanos
	.target Captain Tharran
    .isOnQuest 26373
step << Dwarf/Gnome
    .goto 1426/0,-497.50000,-5664.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brolan Barbetrombe|r
    .target Brolan Galebeard
    .turnin 6387 >>Rendez la quête L'honneur des étudiants
    .accept 6391 >>Acceptez la quête Voyage vers Forgefer
step << Dwarf/Gnome
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brolan Barbetrombe|r
    .target Brolan Galebeard
    .goto 1426/0,-497.50000,-5664.00000
    .fly Ironforge >>Volez à Ironforge
step << Dwarf/Gnome
    .goto 1455/0,-1118.50000,-4707.30029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .target Golnir Bouldertoe
    .turnin 6391 >>Rendez la quête Voyage vers Forgefer
    .accept 6388 >>Acceptez la quête Gryth Thurden
step << Dwarf/Gnome
    .goto 1455/0,-1154.90002,-4820.70020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .turnin 6388 >>Rendez la quête Gryth Thurden
    .accept 6392 >>Acceptez la quête Retourner vers Gremlock
step << Dwarf/Gnome
#completewith next
    .goto Ironforge,55.501,47.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .fly Goldshire >> Envolez-vous vers Comté-de-l'Or
step << Human
    #completewith GSReport
    .goto 37,41.71,52.74,-1
    .goto 37,39.48,60.53,-1
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isOnQuest 2158
    .skill riding,75,1
step
    #label GSReport
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 54 >>Rendez la quête Rapport pour Comté-de-l'Or << Human
    .accept 62 >>Acceptez la quête La mine de Fondugouffre
	.target Marshal Dughan
step << Human
    .goto 37,41.708,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Smith Argus|r
    .accept 26393 >>Acceptez la quête Un message rapide
	.target Smith Argus
step << Human
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartlett le Brave|r
	.turnin 26393 >>Rendez la quête Un message rapide
    .accept 26394 >>Acceptez la quête Continuer vers Hurlevent
	.target Bartlett the Brave
step
    #optional
    #completewith next
    .goto 37,43.19,65.74,5,0
    .goto 37,43.23,65.95,5,0
    .goto 37,43.318,65.705,4 >> Voyagez vers |cRXP_FRIENDLY_William Pilon|r
step
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >>Acceptez la quête Les bougies de Kobolds
	.target William Pestle
step << Human
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 2158 >>Rendez la quête Repos et détente
    .home >>Liez votre Pierre de foyer à l'auberge de la Fierté du lion
	.target Innkeeper Farley
step << skip
    #optional
    #completewith RemyTT
    .goto 37,41.95,67.16,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lien Farner|r à côté de |cRXP_FRIENDLY_Remy « Deux fois »|r si vous souhaitez apprendre les Métiers
    .target Lien Farner
step
    #optional
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >> Voyagez vers |cRXP_FRIENDLY_Remy « Deux fois »|r
step
    #label RemyTT
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 47 >>Acceptez la quête L'échange de poussière d'or
	.target Remy "Two Times"
step
    #optional
    #completewith Necklace1
    .goto 37,38.22,83.41,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r. Ramassez leurs |cRXP_LOOT_Large Bougies|r et |cRXP_LOOT_Gold Poussière|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r et à |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 85 >>Acceptez la quête Le collier perdu
    .goto 37,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >>Acceptez la quête Princesse doit mourir !
    .goto 37,34.66,84.48
	.target +Ma Stonefield
    .xp <6,1
step
    #optional
    #label Necklace1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >>Acceptez la quête Le collier perdu
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
step
    #completewith Billy1
    .goto 37,38.22,83.41,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ramassez leurs |cRXP_LOOT_Large Bougies|r et |cRXP_LOOT_Gold Poussière|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
	.mob Kobold Miner
step
    #label Billy1
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Rendez la quête Le collier perdu
    .accept 86 >> Acceptez la quête Une tourte pour Billy
    .target Billy Maclure
step
    #completewith TommyJoe
    .goto 37,41.69,86.91,0
    .goto 37,32.54,85.26,0
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Ramassez leurs |cRXP_LOOT_Tender Sanglier Viande|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
    .goto 37,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maybell Maclure|r à l'intérieur
    .accept 106 >> Acceptez la quête Jeunes amoureux
    .target Maybell Maclure
step
    #optional
    .goto 37,41.69,86.91
    .xp 6 >> Montez jusqu'au niveau 6
    .mob Stonetusk Boar
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >>Acceptez la quête Princesse doit mourir !
	.target Ma Stonefield
step
    #optional
    #completewith PrincessEnd
    .goto 37,38.22,83.41,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r. Ramassez leurs |cRXP_LOOT_Large Bougies|r et |cRXP_LOOT_Gold Poussière|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << skip
    .goto 37,33.64,87.76,15 >>|cRXP_WARN_[CHEST] Vérification du |cRXP_PICK_Coffre|r à l'intérieur des écuries. Ramassez-le s'il est disponible|r
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
    >>Tuez la |cRXP_ENEMY_Princesse|r. Ramassez-la pour ses |cRXP_LOOT_Brass Collar|r et |cRXP_LOOT_Tender Sanglier Viande|r
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
    >>Tuez la |cRXP_ENEMY_Princesse|r. Ramassez-la pour son |cRXP_LOOT_Brass Collar|r
    .complete 88,1 --1/1 Brass Collar
	.mob Princess
--XX Will users struggle if they're still level 6?
step
    #label TommyJoe
    .goto 37,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tommy Joe Stonefield|r
    .turnin 106 >> Rendez la quête Jeunes amoureux
    .accept 111 >> Acceptez la quête Discuter avec Mamie
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
    >>Tuez les |cRXP_ENEMY_Stonetusk Boars|r. Ramassez leurs |cRXP_LOOT_Tender Sanglier Viande|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
#sticky
#label princessT
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >>Rendez la quête Princesse doit mourir !
	.target Ma Stonefield
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .goto 37,34.486,84.253
    .turnin 86 >> Rendez la quête Une tourte pour Billy
    .target "Auntie" Bernice Stonefield
step << Human
#xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
    .accept 84 >> Acceptez la quête Revenir voir Billy
step
#requires princessT
    .goto 37,34.94,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gramma Stonefield|r à l'intérieur
    .turnin 111 >> Rendez la quête Discuter avec Mamie
    .accept 107 >> Acceptez la quête Note pour William
    .target Gramma Stonefield
step << Human
#xprate <1.2
    #completewith Goldtooth
    .goto 37,38.22,83.41,0
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r. Ramassez leurs |cRXP_LOOT_Large Bougies|r et |cRXP_LOOT_Gold Poussière|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << Human
#xprate <1.2
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Rendez la quête Revenir voir Billy
    .accept 87 >> Acceptez la quête Dent-d'or
    .target Billy Maclure
step
    #xprate >1.59
    #optional
    .maxlevel 10,endOfTheGuide
step << Human
#xprate <1.2
    #label Goldtooth
    .goto Elwynn Forest,40.08,80.62
    >>Tuez |cRXP_ENEMY_Dent-d'or|r |cRXP_WARN_à l'extérieur|r de la mine. Ramassez-le pour le |cRXP_LOOT_Bernice's Collier|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step << skip
    #optional
    .goto 37,38.22,83.41,40 >>|cRXP_WARN_[RARE] Vérification pour |cRXP_ENEMY_Narg le Sous-chef|r. Tuez-le s'il est là|r
	.unitscan Narg the Taskmaster
    .isOnQuest 60
    .noflyable
step
    #completewith next
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explorez la mine de Fargodeep
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
    >>Tuez les |cRXP_ENEMY_Kobold Tunnelers|r et les |cRXP_ENEMY_Kobold Miners|r. Ramassez leurs |cRXP_LOOT_Large Bougies|r et |cRXP_LOOT_Gold Poussière|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
    .mob *Kobold Tunneler
    .mob *Kobold Miner
step
    #label scoutm1
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explorez la mine de Fargodeep
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
    .xp 6+2275 >> Farmez jusqu'à 2275+/3600 points d'expérience
    .mob Kobold Tunneler
    .mob Kobold Miner
--XX 625 (Gold Dust) 700 (Goldtooth) - Ensure "A Fishy Peril"
step << Human
#xprate <1.2
    .goto 37,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .turnin 87 >> Rendez la quête Dent-d'or
    .target "Auntie" Bernice Stonefield
--XX Early turnin XP gate for level 8? No idea how good/bad xp will be by now. Can be made optional/turned in later but I wanted to skip The Escape since you can fly Eastvale at 6+ and go north for checking rares instead
step << Human
    #completewith Kelp
    .hs >> Utilisez votre Pierre de foyer pour revenir au Comté-de-l'or
    .subzoneskip 87
step << !Human
#completewith next
    .deathskip >> Mourez et ressuscitez à Comté-de-l'Or
    .subzoneskip 87
step
    #label Kelp
    #xprate >1.19 << Human
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .turnin 107 >> Rendez la quête Note pour William
    .target William Pestle
step << Human
    #label Kelp
    #xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 60 >> Rendez la quête Les bougies de Kobolds
    .turnin 107 >> Rendez la quête Note pour William
    .accept 112 >> Acceptez la quête À la recherche du varech
    .target William Pestle
step
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >>Rendez la quête à |cRXP_FRIENDLY_Rémi « Deux fois »|r
step
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 47 >> Rendez la quête L'échange de poussière d'or
    .accept 40 >> Acceptez la quête Péril en la rivière
	.target Remy "Two Times"
step << Hunter cata
    .goto 37,40.854,65.902
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Benjamin Dignerenard|r
    .trainer >> Apprenez vos sorts de classe
    .target Benjamin Foxworthy
step << Paladin cata
    .goto 37,41.074,65.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Apprenez vos sorts de classe
    .target Brother Wilhelm
step << Warrior cata
    .goto 37,41.069,65.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Apprenez vos sorts de classe
    .target Lyria Du Lac
step << Warlock cata
    #completewith next
    .goto 37,44.54,65.76,15 >> Descendez dans le sous-sol de l'auberge de Comté-de-l'Or
step << Warlock cata
    .goto 37,44.389,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Apprenez vos sorts de classe
    .target Maximillian Crowe
step << Mage/Priest/Rogue cata
    #completewith next
    .goto 37,43.86,66.40,15 >> Montez les escaliers dans l'auberge de Comté-de-l'Or
step << Mage cata
    .goto 37,43.246,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Apprenez vos sorts de classe
    .target Zaldimar Wefhellt
step << Priest cata
    .goto 37,43.282,65.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Priestess Josetta|r
    .trainer >> Apprenez vos sorts de classe
    .target Priestess Josetta
step << Rogue cata
    .goto 37,43.872,65.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Apprenez vos sorts de classe
    .target Keryn Sylvius
step << Human
    #xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Rendez la quête Péril en la rivière
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .accept 76 >> Acceptez la quête La mine Veine-de-jaspe
    .target Marshal Dughan
    .isOnQuest 112
step
    #optional << Human
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Rendez la quête Péril en la rivière
    .accept 35 >> Acceptez la quête Inquiétudes supplémentaires
    .turnin 62 >> Rendez la quête La mine de Fondugouffre
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
    >>|cRXP_WARN_Quand le minuteur de 20 secondes expire (20 secondes après avoir accepté la course), déconnectez-vous puis reconnectez-vous tant que vous êtes sur le |cRXP_FRIENDLY_Destrier de Hurlevent|r pour en descendre|r
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Dughan|r pour monter le |cRXP_FRIENDLY_Destrier de Hurlevent|r vers |cRXP_FRIENDLY_Garde Thomas|r
    .timer 20,Déconnectez-vous quand le minuteur se termine
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
    >>|cRXP_WARN_Quand le minuteur de 20 secondes expire (20 secondes après avoir accepté la course), déconnectez-vous puis reconnectez-vous tant que vous êtes sur le |cRXP_FRIENDLY_Destrier de Hurlevent|r pour en descendre|r
    .subzone 18 >> Rendez-vous à Lac de Cristal
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
    >>Tuez |cRXP_ENEMY_Murloc Streamrunners|r et |cRXP_ENEMY_Murlocs|r. Dépouillez-les pour leur |cRXP_LOOT_Crystal Varech Frond|r
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
    .subzone 54 >>Entrez dans la mine de Jasperlode
    .isOnQuest 76
step << Human
    #xprate <1.2
    .goto 40,44.22,67.89,12,0
    .goto 40,38.71,60.84,12,0
    .goto 40,35.92,52.81
    >>Suivez le chemin central dans la mine Veine-de-jaspe
    .complete 76,1 --Scout Through the Jasperlode Mine (1)
    .isOnQuest 76
step << Human
    #xprate <1.2
    #completewith Thomas
    .goto 37,61.58,70.04,0
    .deathskip >> Mourez et ressuscitez au |cRXP_FRIENDLY_Gardien des âmes|r
    .isOnQuest 76
    .skill riding,75,1
step << Human
    #xprate <1.2
    .goto 40,38.71,60.84,12,0
    .goto 40,44.22,67.89,12,0
    .goto 37,61.82,53.88,12,0
    .subzone 54,1 >>Quittez la mine de Jasperlode
    .isOnQuest 76
    .skill riding,<75,1
step
    #xprate >1.19 << !Human
    #completewith Thomas
    .goto 37,42.105,65.927
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Dughan|r pour monter le |cRXP_FRIENDLY_Destrier de Hurlevent|r vers |cRXP_FRIENDLY_Garde Thomas|r
    .timer 90,Dialogue : Préoccupations supplémentaires
    .target Marshal Dughan
    .skipgossip 240,1
    .subzoneskip 87,1 --Goldshire
step
    #label Thomas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tCliquez sur |cRXP_PICK_Bounty Embarquement|r et parlez à |cRXP_FRIENDLY_Garde Thomas|r
    --.accept 46 >>Accept Bounty on Murlocs
    .accept 26152 >>Acceptez la quête ON RECHERCHE : James Clark
    .goto 37,74.025,72.310
    .turnin 35 >>Rendez la quête Inquiétudes supplémentaires
    .accept 37 >>Acceptez la quête Trouver les gardes disparus
    .accept 52 >>Acceptez la quête Protéger la frontière
    .goto 37,73.973,72.177
    .target +Guard Thomas
step
    #completewith James
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    >>Tuez |cRXP_ENEMY_Prowlers|r et |cRXP_ENEMY_Gray Forest Wolves|r
    >>Tuez tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    .goto 37,72.653,60.323
    >>Cliquez sur |cRXP_PICK_A half-eaten body|r sur le sol
    .turnin 37 >>Acceptez la quête Trouver les gardes disparus
    .accept 45 >>Acceptez la quête La destinée de Rolf
step
    #label James
    .goto 37,78.87,67.20,10,0
    .goto 37,78.637,67.157
    >>Tuez |cRXP_FRIENDLY_James Clark|r à l'intérieur. Ramassez-le pour |cRXP_LOOT_Tête de James Clark|r et |T134939:0|t|cRXP_LOOT_[Plan de route du Collecteur]|r
    >>|cRXP_WARN_Utilisez |T134939:0|t|cRXP_LOOT_[Plan de route du Collecteur]|r pour commencer la quête|r
    .complete 26152,1 --James Clark's Head (1)
    .collect 1307,1,123,1 --Gold Pickup Schedule (1)
    .accept 123 >>Acceptez la quête Le collecteur
    .mob James Clark
    .use 1307
--step
--    .goto 37,79.462,68.715
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
--    .accept 83 >>Accept Fine Linen Goods
--    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Acceptez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Patterson|r
    .turnin 26152 >>Rendez la quête ON RECHERCHE : James Clark
    .turnin 123 >>Rendez la quête Le collecteur
    .accept 147 >>Acceptez la quête Chasse à l'homme
    .target Marshal Patterson
step
    #optional
    #completewith StoneCairn
    .goto 37,87.15,64.63,0
    .goto 37,81.56,58.15,0
    .goto 37,87.15,64.63,60,0
    >>Tuez |cRXP_ENEMY_Prowlers|r et |cRXP_ENEMY_Gray Forest Wolves|r
    >>Tuez tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez
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
    >>Ramassez |cRXP_LOOT_Bundles of Bois|r sur le sol à côté des arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    .goto 37,79.795,55.510
    >>Cliquez sur le |cRXP_PICK_Rolf's corpse|r sur le sol
    .turnin 45 >>Rendez la quête La destinée de Rolf
    .accept 71 >>Acceptez la quête Faire son rapport au garde Thomas
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
    >>Tuez |cRXP_ENEMY_Prowlers|r et |cRXP_ENEMY_Gray Forest Wolves|r
    >>Tuez tous les |cRXP_ENEMY_Young Forest Bears|r que vous voyez
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
    >>Ramassez |cRXP_LOOT_Bundles of Bois|r sur le sol à côté des arbres
    .complete 5545,1 -- Bundle of Wood (8)
step
    #requires PTFrontier
    .goto 37,73.973,72.177
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Guard Thomas|r
    --.turnin 46 >> Turn in Bounty on Murlocs
    .turnin 52 >> Rendez la quête Protéger la frontière
    .turnin 71 >> Rendez la quête Faire son rapport au garde Thomas
    .accept 59 >> Acceptez la quête Les armures de cuir et d'étoffe
    .target Guard Thomas
--XX     #optional if above not skipped
step
    .goto 37,71.02,80.67
    >>Tuez |cRXP_ENEMY_Morgan le Collecteur|r à l'intérieur. Dépouillez-le pour |cRXP_LOOT_The Collector's Anneau|r
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Rendez la quête Les armures de cuir et d'étoffe
    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Rendez la quête Un sac d'embrouilles
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maréchal Patterson|r
    .turnin 147 >>Rendez la quête Chasse à l'homme
    .target Marshal Patterson
    .isQuestComplete 147
step << Hunter
--TODO: COORDS
    .target Rallic Finn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Rallic Finn|r
    >>Achetez un |T135489:0|t[Arc laminé à double courbure]
    .collect 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
step << Human
    #optional
    #completewith hs1
    .hs >> Utilisez votre Pierre de foyer pour vous téléporter à Comté-de-l'Or
    .cooldown item,6948,<0,1
step << Human
    #completewith hs1
    #xprate <1.2
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Goss le Preste|r
    .fly Goldshire >> Envolez-vous vers Comté-de-l'Or
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Goss le Preste|r
    .fly Gol'Bolar Quarry >> Envolez-vous vers Carrière de Gol'Bolar
    .target Goss the Swift
    .cooldown item,6948,>0,1
step << Human
#xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_William Pestle|r
    .turnin 112 >> Rendez la quête À la recherche du varech
    .target William Pestle
    .isQuestComplete 112

step << Human
#xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 76 >> Rendez la quête La mine Veine-de-jaspe
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Bartlett le Brave|r
    .fly Stormwind >> Volez à Stormwind << Rogue/Paladin/Warrior
    .fly Gol'Bolar Quarry >> Envolez-vous vers Carrière de Gol'Bolar << !Rogue !Paladin !Warrior
	.target Bartlett the Brave
    .zoneskip Stormwind City
    .itemStat 16,QUALITY,<7
step << Human (Warrior/Paladin)
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez un|r |T135350:0|t[Claymore] |cRXP_BUY_auprès d'elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Marda Weller
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez un|r |T135346:0|t[Sabre d'abordage] |cRXP_BUY_auprès d'elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Marda Weller
    .xp >11,1
    .xp <10,1
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Achetez une|r |T132402:0|t[Hachette] |cRXP_BUY_auprès d'elle|r
    >>Sinon, vous pouvez regarder à l'Hôtel des Ventes si vous trouvez une alternative meilleure ou moins onéreuse
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
    +Équipez la [Claymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Human Rogue
    #optional
    #completewith end
    +Équipez le [Coutelas] dans votre main droite
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Équipez la|r |T132402:0|t[Hachette] |cRXP_WARN_à votre main principale|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Human (Rogue/Paladin/Warrior)
    .goto 84,70.938,72.472,-1
    .goto 37,81.829,66.556,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dungar Grangodet|r ou |cRXP_FRIENDLY_Goss le Preste|r
    .fly Gol'Bolar Quarry >> Envolez-vous vers Carrière de Gol'Bolar
	.target Dungar Longdrink
    .zoneskip 27 --Dun Morogh
    .target Goss the Swift

step << Dwarf/Gnome
#completewith next
    .hs >> Utilisez votre Pierre de foyer pour revenir à Kharanos
    .zoneskip Dun Morogh
step << Dwarf/Gnome
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gremlock Pilsnor|r dans l'arrière-salle
    .turnin 6392 >>Rendez la quête Retourner vers Gremlock
	.target Gremlock Pilsnor
--TODO: Training for dwarf/gnomes
step << Dwarf/Gnome
    .goto 27,53.802,52.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Brolan Barbetrombe|r
    .fly Gol'Bolar Quarry >> Envolez-vous vers Carrière de Gol'Bolar
	.target Brolan Galebeard
step << Human
    .abandon 26394 >> Abandonnez toutes les quêtes de la Forêt d'Elwynn de votre journal de quêtes
step
#label end
.zone Dun Morogh >> Allez à l'Est de Dun Morogh
]])
