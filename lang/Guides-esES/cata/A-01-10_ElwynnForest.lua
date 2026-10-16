if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-6 Northshire Valley
#version 1
#next 6-9 Elwynn Forest
#defaultfor Human !DK

<< Alliance

step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .accept 28757 >>Acepta la misión ¡Rechazar el ataque! << Human Mage
    .accept 28762 >>Acepta la misión ¡Rechazar el ataque! << Human Paladin
    .accept 28763 >>Acepta la misión ¡Rechazar el ataque! << Human Priest
    .accept 28764 >>Acepta la misión ¡Rechazar el ataque! << Human Rogue
    .accept 28765 >>Acepta la misión ¡Rechazar el ataque! << Human Warlock
    .accept 28766 >>Acepta la misión ¡Rechazar el ataque! << Human Warrior
    .accept 28767 >>Acepta la misión ¡Rechazar el ataque! << Human Hunter
    .accept 29078 >>Acepta la misión ¡Rechazar el ataque! << !Human
    .accept 31139 >>Acepta la misión ¡Rechazar el ataque! << Human Death Knight/Human Monk
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
    >>Mata a los |cRXP_ENEMY_Huargos Blackrock|r << !mop
    >>Mata a los |cRXP_ENEMY_Huargos de batalla Blackrock|r << mop
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 28757 >>Entrega la misión ¡Rechazar el ataque! << Human Mage
    .turnin 28762 >>Entrega la misión ¡Rechazar el ataque! << Human Paladin
    .turnin 28763 >>Entrega la misión ¡Rechazar el ataque! << Human Priest
    .turnin 28764 >>Entrega la misión ¡Rechazar el ataque! << Human Rogue
    .turnin 28765 >>Entrega la misión ¡Rechazar el ataque! << Human Warlock
    .turnin 28766 >>Entrega la misión ¡Rechazar el ataque! << Human Warrior
    .turnin 28767 >>Entrega la misión ¡Rechazar el ataque! << Human Hunter
    .turnin 29078 >>Entrega la misión ¡Rechazar el ataque! << !Human
    .turnin 31139 >>Entrega la misión ¡Rechazar el ataque! << Human Death Knight/Human Monk
    .accept 28759 >> Acepta la misión Leones por corderos << Human Hunter
    .accept 28769 >> Acepta la misión Leones por corderos << Human Mage
    .accept 28770 >> Acepta la misión Leones por corderos << Human Paladin
    .accept 28771 >> Acepta la misión Leones por corderos << Human Priest
    .accept 28772 >> Acepta la misión Leones por corderos << Human Rogue
    .accept 28773 >> Acepta la misión Leones por corderos << Human Warlock
    .accept 28774 >> Acepta la misión Leones por corderos << Human Warrior
    .accept 29079 >> Acepta la misión Leones por corderos << !Human
    .accept 31140 >> Acepta la misión Leones por corderos << Human Death Knight/Human Monk
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
    >>Mata a los |cRXP_ENEMY_Espías Blackrock|r
    >>|cRXP_WARN_Están|r |T132320:0|t[En sigilo] |cRXP_WARN_(pero se ven con facilidad)|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 28769 >>Entrega la misión Leones por corderos << Human Mage
    .turnin 28759 >>Entrega la misión Leones por corderos << Human Hunter
    .turnin 28770 >>Entrega la misión Leones por corderos << Human Paladin
    .turnin 28771 >>Entrega la misión Leones por corderos << Human Priest
    .turnin 28772 >>Entrega la misión Leones por corderos << Human Rogue
    .turnin 28773 >>Entrega la misión Leones por corderos << Human Warlock
    .turnin 28774 >>Entrega la misión Leones por corderos << Human Warrior
    .turnin 29079 >>Entrega la misión Leones por corderos << !Human
    .turnin 31140 >>Entrega la misión Leones por corderos << Human Death Knight/Human Monk
    .accept 28780 >>Acepta la misión ¡Únete a la batalla! << Human Hunter
    .accept 28784 >>Acepta la misión ¡Únete a la batalla! << Human Mage
    .accept 28785 >>Acepta la misión ¡Únete a la batalla! << Human Paladin
    .accept 28786 >>Acepta la misión ¡Únete a la batalla! << Human Priest
    .accept 28787 >>Acepta la misión ¡Únete a la batalla! << Human Rogue
    .accept 28788 >>Acepta la misión ¡Únete a la batalla! << Human Warlock
    .accept 28789 >>Acepta la misión ¡Únete a la batalla! << Human Warrior
    .accept 29080 >>Acepta la misión ¡Únete a la batalla! << !Human
    .accept 31143 >>Acepta la misión ¡Únete a la batalla! << Human Death Knight/Human Monk
    .target Marshal McBride
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 28769 >>Entrega la misión Leones por corderos << Human Mage
    .turnin 28759 >>Entrega la misión Leones por corderos << Human Hunter
    .turnin 28770 >>Entrega la misión Leones por corderos << Human Paladin
    .turnin 28771 >>Entrega la misión Leones por corderos << Human Priest
    .turnin 28772 >>Entrega la misión Leones por corderos << Human Rogue
    .turnin 28773 >>Entrega la misión Leones por corderos << Human Warlock
    .turnin 28774 >>Entrega la misión Leones por corderos << Human Warrior
    .turnin 29079 >>Entrega la misión Leones por corderos << !Human
    .turnin 31140 >>Entrega la misión Leones por corderos << Human Death Knight/Human Monk
    .accept 3100 >>Acepta la misión Una carta simple << Human Warrior
    .accept 3101 >>Acepta la misión Una carta consagrada << Human Paladin
    .accept 3102 >>Acepta la misión Una carta cifrada << Human Rogue
    .accept 3103 >>Acepta la misión Una carta sacralizada << Human Priest
    .accept 3104 >>Acepta la misión Una carta glífica << Human Mage
    .accept 3105 >>Acepta la misión Una carta manchada << Human Warlock
    .accept 26910 >>Acepta la misión Carta con grabados << Human Hunter
    .accept 31141 >>Acepta la misión Una carta caligrafiada << Human Monk
    .accept 29080 >>Acepta la misión ¡Únete a la batalla! << !Human
    .target Marshal McBride
--XX needs testing on non-human classes. Not needed for Monks/DKs

step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bao|r
    .target Bao
    .turnin 31141 >>Entrega la misión Una carta caligrafiada
    .accept 31142 >>Acepta la misión Palma del tigre
step << Warrior/Paladin
    #optional
    #completewith next
    .goto 425,35.84,51.87,8,0
    .goto 425,38.46,52.30,8,0
    .goto 425,40.87,53.80,10 >> Viaja hacia |cRXP_FRIENDLY_Llane Beshere|r dentro de Abbey << Warrior
    .goto 425,41.55,53.23,10 >> Viaja hacia |cRXP_FRIENDLY_Hermano Sammuel|r dentro de Abbey << Paladin
step << Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 3100 >>Entrega la misión Una carta simple << Human
    .accept 26913 >>Acepta la misión Cargando hacia la batalla << Human
    .train 100 >>Aprende |T132337:0|t[Cargar] << Cata
    .target Llane Beshere
step << Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Sammuel|r
    .turnin 3101 >>Entrega la misión Una carta consagrada << Human
    .accept 26918 >>Acepta la misión El poder de la Luz << Human
    .train 20154 >>Aprende |T135960:0|t[Sello de rectitud] << Cata
    .train 20271 >>Aprende |T135959:0|t[Sentencia] << Cata
    .target Brother Sammuel
step << Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorik Kerridan|r afuera, en el lado opuesto de Abbey
    .turnin 3102 >>Entrega la misión Una carta cifrada << Human
    .accept 26915 >>Acepta la misión El corte más profundo << Human
    .train 2098 >>Aprende |T132292:0|t[Eviscerar] << Cata
    .target Jorik Kerridan
step << Human Priest/Human Mage
    #optional
    #completewith next
    .goto 425,35.61,51.32,8,0
    .goto 425,37.20,48.32,8,0
    .goto 425,38.95,46.52,8,0 << Priest
    .goto 425,38.31,46.07,8,0 << Mage
    .goto 425,37.94,45.13,5,0 << Mage
    .goto 425,39.31,43.78,10 >> Viaja hacia |cRXP_FRIENDLY_Sacerdotisa Anetta|r dentro de Abbey << Priest
    .goto 425,38.78,43.47,10 >> Viaja hacia |cRXP_FRIENDLY_Khelden Bremen|r dentro de Abbey, arriba. Salta desde las escaleras por la barandilla afuera de su habitación si puedes << Mage
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r
    .turnin 3103 >>Entrega la misión Una carta sacralizada
    .accept 26919 >>Acepta la misión Sanar a los heridos << cata
    .accept 26919 >>Acepta la misión Ayudando a los heridos << !cata
    .train 2061 >>Aprende |T135907:0|t[Sanación relámpago] << Cata
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
    >>Lanza |T135907:0|t[Sanación relámpago] sobre 5 |cRXP_FRIENDLY_Trainees Heridos|r dentro de Abbey
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
    >>Lanza |T136207:0|t[Palabra de las Sombras: dolor] sobre un |cRXP_ENEMY_Muñeco de Entrenamiento|r 5 veces
    .complete 26919,2 --Cast Flash Heal (5)
    .target Training Dummy
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 3104 >>Entrega la misión Una carta glífica << Human
    .accept 26916 >>Acepta la misión Dominando lo Arcano << Human
    .train 5143 >>Aprende |T136096:0|t[Misiles Arcanos] << Cata
    .target Khelden Bremen
--XX Human Mage only since Arcane Missiles is somewhat useless when you just fireball spam
step << Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Entrega la misión Una carta manchada << Human
    .accept 26914 >>Acepta la misión Inmolación << Human
    .train 348 >>Aprende |T135817:0|t[Inmolar] << Cata
    .target Drusilla La Salle
step << Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ashley Blanco|r
    .turnin 26910 >>Entrega la misión Carta con grabados << Human
    .accept 26917 >>Acepta la misión El camino del cazador << Human
    .train 56641 >>Aprende |T132213:0|t[Vigía del pozo Solanian] << Cata
    .target Ashley Blank
step << Human Warrior/Human Paladin/Human Mage
    #optional
    #completewith next
    .goto 425,38.46,52.30,8,0 << Warrior/Paladin
    .goto 425,35.84,51.87,8,0 << Warrior/Paladin
    .goto 425,37.20,48.32,8,0 << Mage
    .goto 425,35.61,51.32,8,0 << Mage
    .goto 425,33.82,53.38,10,0
    .goto 425,35.58,60.57,40 >> Viaja hacia los |cRXP_ENEMY_Muñecos de Entrenamiento|r
step << !Priest Human
    .goto 425,35.58,60.57,-1
    .goto 425,35.82,61.08,-1
    .goto 425,35.81,61.71,-1
    .goto 425,35.55,62.26,-1
    .goto 425,35.13,62.46,-1
    .goto 425,34.74,62.27,-1
    .goto 425,34.48,61.76,-1
    .goto 425,34.46,61.13,-1
    >>Lanza |T574576:0|t[Golpe rápido] seguido de |T606551:0|t[Palma del tigre] sobre un |cRXP_ENEMY_Muñeco de Entrenamiento|r << Monk
    >>Lanza |T132337:0|t[Cargar] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r << Warrior
    >>Lanza |T135817:0|t[Inmolar] sobre un |cRXP_ENEMY_Muñeco de Entrenamiento|r 5 veces << Warlock
    >>Lanza |T136189:0|t[Golpe siniestro] y luego |T132292:0|t[Eviscerar] sobre un |cRXP_ENEMY_Muñeco de Entrenamiento|r 3 veces << Rogue
    >>Lanza |T135812:0|t[Bola de Fuego] y luego |T136096:0|t[Misiles Arcanos] cuando se active sobre un |cRXP_ENEMY_Muñeco de Entrenamiento|r 2 veces << Mage
    >>Lanza |T132213:0|t[Vigía del pozo Solanian] sobre un |cRXP_ENEMY_Muñeco de entrenamiento|r 5 veces << Hunter
    >>Lanza |T135960:0|t[Sello de rectitud] y luego |T135959:0|t[Sentencia] sobre un |cRXP_ENEMY_Muñeco de Entrenamiento|r << Paladin
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
    .goto 425,40.87,53.80,10 >> Regresa con |cRXP_FRIENDLY_Llane Beshere|r dentro de Abbey << Warrior
    .goto 425,41.55,53.23,10 >> Regresa con |cRXP_FRIENDLY_Hermano Sammuel|r dentro de Abbey << Paladin
    .goto 425,38.78,43.47,10 >> Regresa con |cRXP_FRIENDLY_Khelden Bremen|r dentro de Abbey << Mage
    .goto 425/0,-212.100,-8907.400,10 >> Regresa con |cRXP_FRIENDLY_Bao|r dentro de Abbey << Monk
step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r
    .turnin 31142 >>Entrega la misión Sanación del Herido
    .accept 31143 >>Acepta la misión ¡Únete a la batalla!
    .target Priestess Anetta
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r
    .turnin 26919 >>Entrega la misión Sanación del Herido
    .accept 28786 >>Acepta la misión ¡Únete a la batalla!
    .target Priestess Anetta
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden Bremen|r
    .turnin 26916 >>Entrega la misión Dominando lo Arcano
    .accept 28784 >>Acepta la misión ¡Únete a la batalla!
    .target Khelden Bremen
step << Human Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r
    .turnin 26913 >>Entrega la misión Cargando hacia la batalla
    .accept 28789 >>Acepta la misión ¡Únete a la batalla!
    .target Llane Beshere
step << Human Paladin
    .goto 425,41.55,53.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Sammuel|r
    .turnin 26918 >>Entrega la misión El poder de la Luz
    .accept 28785 >>Acepta la misión ¡Únete a la batalla!
    .target Brother Sammuel
step << Human Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 26915 >>Entrega la misión The Deepest Cut
    .accept 28787 >>Acepta la misión ¡Únete a la batalla!
    .target Jorik Kerridan
step << Human Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 26914 >>Entrega la misión Inmolación
    .accept 28788 >>Acepta la misión ¡Únete a la batalla!
    .target Drusilla La Salle
--XX May not need to turn in class quest to accept followup (aka can turn in later)
step << Human Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ashley Blanco|r
    .turnin 26917 >>Entrega la misión El camino del cazador
    .accept 28780 >>Acepta la misión ¡Únete a la batalla!
    .target Ashley Blank




step
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con al |cRXP_FRIENDLY_Sargento Willem|r
    .turnin 28780 >>Entrega la misión ¡Únete a la batalla! << Human Hunter
    .turnin 28784 >>Entrega la misión ¡Únete a la batalla! << Human Mage
    .turnin 28785 >>Entrega la misión ¡Únete a la batalla! << Human Paladin
    .turnin 28786 >>Entrega la misión ¡Únete a la batalla! << Human Priest
    .turnin 28787 >>Entrega la misión ¡Únete a la batalla! << Human Rogue
    .turnin 28788 >>Entrega la misión ¡Únete a la batalla! << Human Warlock
    .turnin 28789 >>Entrega la misión ¡Únete a la batalla! << Human Warrior
    .turnin 29080 >>Entrega la misión ¡Únete a la batalla! << !Human
    .turnin 31143 >>Entrega la misión ¡Únete a la batalla! << Human Death Knight/Human Monk
    .accept 28791 >>Acepta la misión Enviaron asesinos << Human Hunter
    .accept 28792 >>Acepta la misión Enviaron asesinos << Human Mage
    .accept 28793 >>Acepta la misión Enviaron asesinos << Human Paladin
    .accept 28794 >>Acepta la misión Enviaron asesinos << Human Priest
    .accept 28795 >>Acepta la misión Enviaron asesinos << Human Rogue
    .accept 28796 >>Acepta la misión Enviaron asesinos << Human Warlock
    .accept 28797 >>Acepta la misión Enviaron asesinos << Human Warrior
    .accept 29081 >>Acepta la misión Enviaron asesinos << !Human
    .accept 31144 >>Acepta la misión Enviaron asesinos << Human Death Knight/Human Monk
    .target Sergeant Willem
step << !DK !Monk
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,34.47,39.42,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,35.55,37.73,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Paxton|r
    .accept 28806 >>Acepta la misión No temerás peligro alguno << Human Hunter
    .accept 28808 >>Acepta la misión No temerás peligro alguno << Human Mage
    .accept 28809 >>Acepta la misión No temerás peligro alguno << Human Paladin
    .accept 28810 >>Acepta la misión No temerás peligro alguno << Human Priest
    .accept 28811 >>Acepta la misión No temerás peligro alguno << Human Rogue
    .accept 28812 >>Acepta la misión No temerás peligro alguno << Human Warlock
    .accept 28813 >>Acepta la misión No temerás peligro alguno << Human Warrior
    .accept 29082 >>Acepta la misión No temerás peligro alguno << !Human
    --.accept 63447 >>Accept Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step << skip
    #optional
    #completewith Rear
    .goto 425,31.59,16.72,40 >> |cRXP_WARN_[Raro] Busca a |cRXP_ENEMY_Gug Velagorda|r. Mátalo si está disponible.|r
    *|cRXP_WARN_Es importante matar a los Jefes raros y despojar Cofres de Tesoro, ya que otorgan mucha experiencia.|r
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
    >>Haz clic en las |cRXP_PICK_Infantería de Ventormenta herida|r en el suelo para revivirlas
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
    >>Mata a |cRXP_ENEMY_Goblin Assassins|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Paxton|r
    .turnin 28806 >>Entrega la misión No temerás peligro alguno << Human Hunter
    .turnin 28808 >>Entrega la misión No temerás peligro alguno << Human Mage
    .turnin 28809 >>Entrega la misión No temerás peligro alguno << Human Paladin
    .turnin 28810 >>Entrega la misión No temerás peligro alguno << Human Priest
    .turnin 28811 >>Entrega la misión No temerás peligro alguno << Human Rogue
    .turnin 28812 >>Entrega la misión No temerás peligro alguno << Human Warlock
    .turnin 28813 >>Entrega la misión No temerás peligro alguno << Human Warrior
    .turnin 29082 >>Entrega la misión No temerás peligro alguno << !Human
    --.turnin 63447 >>Turn in Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step
    #label Rear
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con al |cRXP_FRIENDLY_Sargento Willem|r
    .turnin 28791 >>Entrega la misión Enviaron asesinos << Human Hunter
    .turnin 28792 >>Entrega la misión Enviaron asesinos << Human Mage
    .turnin 28793 >>Entrega la misión Enviaron asesinos << Human Paladin
    .turnin 28794 >>Entrega la misión Enviaron asesinos << Human Priest
    .turnin 28795 >>Entrega la misión Enviaron asesinos << Human Rogue
    .turnin 28796 >>Entrega la misión Enviaron asesinos << Human Warlock
    .turnin 28797 >>Entrega la misión Enviaron asesinos << Human Warrior
    .turnin 29081 >>Entrega la misión Enviaron asesinos << !Human
    .turnin 31144 >>Entrega la misión Enviaron asesinos << Human Death Knight/Human Monk
    .accept 28817 >>Acepta la misión Retaguardia despejada << Human Hunter
    .accept 28818 >>Acepta la misión Retaguardia despejada << Human Mage
    .accept 28819 >>Acepta la misión Retaguardia despejada << Human Paladin
    .accept 28820 >>Acepta la misión Retaguardia despejada << Human Priest
    .accept 28821 >>Acepta la misión Retaguardia despejada << Human Rogue
    .accept 28822 >>Acepta la misión Retaguardia despejada << Human Warlock
    .accept 28823 >>Acepta la misión Retaguardia despejada << Human Warrior
    .accept 29083 >>Acepta la misión Retaguardia despejada << !Human
    .accept 31145 >>Acepta la misión Retaguardia despejada << Human Death Knight/Human Monk
    .target Sergeant Willem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r y |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 28817 >>Entrega la misión Retaguardia despejada << Human Hunter
    .turnin 28818 >>Entrega la misión Retaguardia despejada << Human Mage
    .turnin 28819 >>Entrega la misión Retaguardia despejada << Human Paladin
    .turnin 28820 >>Entrega la misión Retaguardia despejada << Human Priest
    .turnin 28821 >>Entrega la misión Retaguardia despejada << Human Rogue
    .turnin 28822 >>Entrega la misión Retaguardia despejada << Human Warlock
    .turnin 28823 >>Entrega la misión Retaguardia despejada << Human Warrior
    .turnin 29083 >>Entrega la misión Retaguardia despejada << !Human
    .turnin 31145 >>Entrega la misión Retaguardia despejada << Human Death Knight/Human Monk
    .accept 26389 >>Acepta la misión Invasión Roca Negra
    .goto 425,33.56,53.04
    .target +Marshal McBride
    .accept 26391 >>Acepta la misión Apagando la esperanza
    .goto 425,33.38,54.67
    .target +Milly Osworth
step << skip
    #completewith next
    +|cRXP_WARN_Para habilitar la asignación de teclas para los objetos de misión, sigue estos pasos:|r
    *[1] Presiona la |cRXP_WARN_tecla Escapar|r.
    *[2] Selecciona |cRXP_WARN_Options|r.
    *[3] Navega a |cRXP_WARN_Keybindings|r.
    *[4] Dentro de |cRXP_WARN_Keybindings|r, encuentra |cRXP_WARN_RestedXP Guides|r.
    *[5] Selecciona y vincula los |cRXP_WARN_Active Botones|r.
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Blackrock Invaders|r. Despoja sus |cRXP_LOOT_Arma de orco Roca Negra|r.
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
    >>|cRXP_WARN_Canal|r |T308321:0|t[Milly's Extintor] |cRXP_WARN_en los fuegos en Northshire Vineyards|r
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
    >>Mata a los |cRXP_ENEMY_Blackrock Invaders|r. Despoja sus |cRXP_LOOT_Arma de orco Roca Negra|r.
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly Osworth|r y el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 26391 >>Entrega la misión Apagando la esperanza
    .target +Milly Osworth
    .goto 425,33.38,54.67
    .turnin 26389 >>Entrega la misión Invasión Roca Negra
    .accept 26390 >>Acepta la misión ¡El final de la invasión!
    .goto 425,33.56,53.04
    .target +Marshal McBride
step
    .goto 425,64.97,48.38
    >>Mata a |cRXP_ENEMY_Kurtok el Destripador|r
    .complete 26390,1 --Kurtok the Slayer (1)
    .mob Kurtok the Slayer
step
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto 425,33.56,53.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 26390 >>Entrega la misión ¡El final de la invasión!
    .accept 54 >>Acepta la misión Informa en Villadorada
    .target Marshal McBride
step
    #optional
    #completewith next
    .goto 37,46.877,48.018,20,0
    .goto 37,45.563,47.738,15 >> Viaja hacia |cRXP_FRIENDLY_Falkhaan Isenzancas|r
    .skill riding,75,1
step
    .goto 37,45.563,47.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falkhaan Isenzancas|r
    .accept 2158 >>Acepta la misión Descanso y relajación
    .target Falkhaan Isenstrider
]])

RXPGuides.RegisterGuide([[
#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 6-9 Elwynn Forest
#next 9-11 Dun Morogh
#defaultfor Human/Dwarf/Gnome

<< Alliance

step << Dwarf
#xprate >1.19
    .goto 27,53.124,49.995
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharek Piedranegra|r
    .turnin 24493 >>Entrega la misión No nos olvides
	.target Tharek Blackstone
    .isOnQuest 24493
step << Dwarf/Gnome
#xprate >1.19
    #optional
    #completewith Belm
    .goto 27,54.083,50.335,8,0
    .goto 27,54.277,50.312,8,0
    .goto 27,54.485,50.847,10 >> Entra en la Destilería de Cebatruenos. Viaja hacia |cRXP_FRIENDLY_Tabernero Belm|r dentro
    .subzoneskip 2102
step << Gnome
#xprate >1.19
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .turnin 26380,2 >>Entrega la misión Compromiso con Kharanos
	.target Innkeeper Belm
    .isOnQuest 26380
--XX not sure how to do this otherwise
step << Dwarf/Gnome
#xprate >1.19
    #label Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .home >>Establece tu Piedra de hogar en Destilería Cebatruenos
	.target Innkeeper Belm
step << Dwarf/Gnome/DarkIronDwarf
#xprate >1.19
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gremlock Pilsnor|r en la trastienda
    .accept 6387 >>Acepta la misión Estudiantes de honor
	.target Gremlock Pilsnor
step << cata Shaman
    #xprate <1.2
    .xp 7
step << cata Shaman
    #xprate <1.2
    .goto 1426/0,-536.50000,-5581.50000
    .train 331 >> Aprende |T136052:0|tHechizo de Curación en la Posada de Kharanos
step << Gnome
#xprate >1.19
    #optional
    #questguide
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Tharran|r
    .turnin 26373 >>Entrega la misión Noticias de Kharanos
	.target Captain Tharran
    .isOnQuest 26373
step << Dwarf/Gnome
    .goto 1426/0,-497.50000,-5664.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brolan Barbaviento|r
    .target Brolan Galebeard
    .turnin 6387 >>Entrega la misión Estudiantes de honor
    .accept 6391 >>Acepta la misión Vuela a Forjaz
step << Dwarf/Gnome
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brolan Barbaviento|r
    .target Brolan Galebeard
    .goto 1426/0,-497.50000,-5664.00000
    .fly Ironforge >>Vuela a Forjaz
step << Dwarf/Gnome
    .goto 1455/0,-1118.50000,-4707.30029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Golnir Dedorroca|r
    .target Golnir Bouldertoe
    .turnin 6391 >>Entrega la misión Vuela a Forjaz
    .accept 6388 >>Acepta la misión Gryth Thurden
step << Dwarf/Gnome
    .goto 1455/0,-1154.90002,-4820.70020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .turnin 6388 >>Entrega la misión Gryth Thurden
    .accept 6392 >>Acepta la misión Regresa junto a Gremlock
step << Dwarf/Gnome
#completewith next
    .goto Ironforge,55.501,47.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .fly Goldshire >> Vuela a Villadorada
step << Human
    #completewith GSReport
    .goto 37,41.71,52.74,-1
    .goto 37,39.48,60.53,-1
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isOnQuest 2158
    .skill riding,75,1
step
    #label GSReport
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 54 >>Entrega la misión Informa en Villadorada << Human
    .accept 62 >>Acepta la misión La Mina Abisal
	.target Marshal Dughan
step << Human
    .goto 37,41.708,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
    .accept 26393 >>Acepta la misión Mensajero a toda prisa
	.target Smith Argus
step << Human
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartlett el Valiente|r
	.turnin 26393 >>Entrega la misión Mensajero a toda prisa
    .accept 26394 >>Acepta la misión Prosigue hasta Ventormenta
	.target Bartlett the Brave
step
    #optional
    #completewith next
    .goto 37,43.19,65.74,5,0
    .goto 37,43.23,65.95,5,0
    .goto 37,43.318,65.705,4 >> Viaja hacia |cRXP_FRIENDLY_William Mortero|r
step
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .accept 60 >>Acepta la misión Las velas de los kóbolds
	.target William Pestle
step << Human
    .goto 37,43.77,65.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .turnin 2158 >>Entrega la misión Descanso y relajación
    .home >>Establece tu Piedra de hogar en la Posada Orgullo de León
	.target Innkeeper Farley
step << skip
    #optional
    #completewith RemyTT
    .goto 37,41.95,67.16,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lien Farner|r junto a |cRXP_FRIENDLY_Remy "Dos Veces"|r si deseas entrenar profesiones
    .target Lien Farner
step
    #optional
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >> Viaja hacia |cRXP_FRIENDLY_Remy "Dos Veces"|r
step
    #label RemyTT
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .accept 47 >>Acepta la misión Intercambio de polvo de oro
	.target Remy "Two Times"
step
    #optional
    #completewith Necklace1
    .goto 37,38.22,83.41,0
    >>Mata a los |cRXP_ENEMY_Kobold Tunnelers|r. Despójalos para obtener sus |cRXP_LOOT_Vela grande|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r y |cRXP_FRIENDLY_La vieja Pedregosa|r
    .accept 85 >>Acepta la misión El collar perdido
    .goto 37,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >>Acepta la misión ¡Princesa debe morir!
    .goto 37,34.66,84.48
	.target +Ma Stonefield
    .xp <6,1
step
    #optional
    #label Necklace1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .accept 85 >>Acepta la misión El collar perdido
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
step
    #completewith Billy1
    .goto 37,38.22,83.41,0
    >>Mata a los |cRXP_ENEMY_Kobold Tunnelers|r y a los |cRXP_ENEMY_Kobold Miners|r. Despójalos para obtener sus |cRXP_LOOT_Vela grande|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
	.mob Kobold Miner
step
    #label Billy1
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Entrega la misión El collar perdido
    .accept 86 >> Acepta la misión Un pastel para Billy
    .target Billy Maclure
step
    #completewith TommyJoe
    .goto 37,41.69,86.91,0
    .goto 37,32.54,85.26,0
    >>Mata a los |cRXP_ENEMY_Stonetusk Boars|r. Despójalos para obtener su |cRXP_LOOT_Tender Jabalí Carne|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
    .goto 37,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r adentro
    .accept 106 >> Acepta la misión Jóvenes enamorados
    .target Maybell Maclure
step
    #optional
    .goto 37,41.69,86.91
    .xp 6 >> Mata enemigos hasta subir al nivel 6
    .mob Stonetusk Boar
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .accept 88 >>Acepta la misión ¡Princesa debe morir!
	.target Ma Stonefield
step
    #optional
    #completewith PrincessEnd
    .goto 37,38.22,83.41,0
    >>Mata a los |cRXP_ENEMY_Kobold Tunnelers|r. Despójalos para obtener sus |cRXP_LOOT_Vela grande|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << skip
    .goto 37,33.64,87.76,15 >>|cRXP_WARN_[CHEST] Revisa el |cRXP_PICK_Cofre|r dentro del establo. Despójalo si está disponible|r
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
    >>Mata a |cRXP_ENEMY_Princesa|r. Despójala para obtener su |cRXP_LOOT_Collera de latón|r y su |cRXP_LOOT_Tender Jabalí Carne|r
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
    >>Mata a la |cRXP_ENEMY_Princesa|r. Despójala para obtener su |cRXP_LOOT_Collera de latón|r
    .complete 88,1 --1/1 Brass Collar
	.mob Princess
--XX Will users struggle if they're still level 6?
step
    #label TommyJoe
    .goto 37,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tommy Joe Pedregosa|r
    .turnin 106 >> Entrega la misión Jóvenes enamorados
    .accept 111 >> Acepta la misión Habla con la abuelita
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
    >>Mata a los |cRXP_ENEMY_Stonetusk Boars|r. Despójalos para obtener su |cRXP_LOOT_Tender Jabalí Carne|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
#sticky
#label princessT
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .turnin 88 >>Entrega la misión ¡Princesa debe morir!
	.target Ma Stonefield
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .goto 37,34.486,84.253
    .turnin 86 >> Entrega la misión Un pastel para Billy
    .target "Auntie" Bernice Stonefield
step << Human
#xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
    .accept 84 >> Acepta la misión Vuelve con Billy
step
#requires princessT
    .goto 37,34.94,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Abuela Pedregosa|r dentro
    .turnin 111 >> Entrega la misión Habla con la abuelita
    .accept 107 >> Acepta la misión Una nota para William
    .target Gramma Stonefield
step << Human
#xprate <1.2
    #completewith Goldtooth
    .goto 37,38.22,83.41,0
    >>Mata a los |cRXP_ENEMY_Kobold Tunnelers|r. Despójalos para obtener sus |cRXP_LOOT_Vela grande|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << Human
#xprate <1.2
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Entrega la misión Vuelve con Billy
    .accept 87 >> Acepta la misión Dientes de Oro
    .target Billy Maclure
step
    #xprate >1.59
    #optional
    .maxlevel 10,endOfTheGuide
step << Human
#xprate <1.2
    #label Goldtooth
    .goto Elwynn Forest,40.08,80.62
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r |cRXP_WARN_outside|r la mina. Despójalo para obtener |cRXP_LOOT_Bernice's Collar|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step << skip
    #optional
    .goto 37,38.22,83.41,40 >>|cRXP_WARN_[Raro] Busca a |cRXP_ENEMY_Narg el Capataz|r. Mátalo si está disponible|r
	.unitscan Narg the Taskmaster
    .isOnQuest 60
    .noflyable
step
    #completewith next
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explora la Mina Abisal
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
    >>Mata a los |cRXP_ENEMY_Kobold Tunnelers|r y a los |cRXP_ENEMY_Kobold Miners|r. Despójalos para obtener sus |cRXP_LOOT_Vela grande|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
    .mob *Kobold Tunneler
    .mob *Kobold Miner
step
    #label scoutm1
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explora la Mina Abisal
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
    .xp 6+2275 >> Sube hasta 2275+/3600 de experiencia
    .mob Kobold Tunneler
    .mob Kobold Miner
--XX 625 (Gold Dust) 700 (Goldtooth) - Ensure "A Fishy Peril"
step << Human
#xprate <1.2
    .goto 37,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .turnin 87 >> Entrega la misión Dientes de Oro
    .target "Auntie" Bernice Stonefield
--XX Early turnin XP gate for level 8? No idea how good/bad xp will be by now. Can be made optional/turned in later but I wanted to skip The Escape since you can fly Eastvale at 6+ and go north for checking rares instead
step << Human
    #completewith Kelp
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
    .subzoneskip 87
step << !Human
#completewith next
    .deathskip >> Muere y reaparece en Villadorada
    .subzoneskip 87
step
    #label Kelp
    #xprate >1.19 << Human
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .turnin 107 >> Entrega la misión Una nota para William
    .target William Pestle
step << Human
    #label Kelp
    #xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .turnin 107 >> Entrega la misión Una nota para William
    .accept 112 >> Acepta la misión La recolección de algas
    .target William Pestle
step
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >>Regresa a |cRXP_FRIENDLY_Remy "Dos Veces"|r
step
    .goto 37,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
	.target Remy "Two Times"
step << Hunter cata
    .goto 37,40.854,65.902
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Benjamin Tratazorro|r
    .trainer >> Aprende tus hechizos de clase
    .target Benjamin Foxworthy
step << Paladin cata
    .goto 37,41.074,65.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
step << Warrior cata
    .goto 37,41.069,65.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step << Warlock cata
    #completewith next
    .goto 37,44.54,65.76,15 >> Desciende al sótano de la Posada de Goldshire
step << Warlock cata
    .goto 37,44.389,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Aprende tus hechizos de clase
    .target Maximillian Crowe
step << Mage/Priest/Rogue cata
    #completewith next
    .goto 37,43.86,66.40,15 >> Sube las escaleras en la Posada de Goldshire
step << Mage cata
    .goto 37,43.246,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Aprende tus hechizos de clase
    .target Zaldimar Wefhellt
step << Priest cata
    .goto 37,43.282,65.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Josetta
step << Rogue cata
    .goto 37,43.872,65.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Aprende tus hechizos de clase
    .target Keryn Sylvius
step << Human
    #xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 35 >> Acepta la misión Más preocupaciones
    .accept 76 >> Acepta la misión La Cantera de Jaspe
    .target Marshal Dughan
    .isOnQuest 112
step
    #optional << Human
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 62 >> Acepta la misión La Mina Abisal
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
    >>|cRXP_WARN_Cuando expire el temporizador de 20 segundos (20 segundos después de aceptar el montar), cierra sesión y vuelve a entrar mientras estés en el |cRXP_FRIENDLY_Destrero de Ventormenta|r para desmontar|r
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alguacil Dughan|r para montar el |cRXP_FRIENDLY_Destrero de Ventormenta|r hacia |cRXP_FRIENDLY_Guardia Thomas|r
    .timer 20,Desconéctate cuando expire el temporizador
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
    >>|cRXP_WARN_Cuando expire el temporizador de 20 segundos (20 segundos después de aceptar el montar), cierra sesión y vuelve a entrar mientras estés en el |cRXP_FRIENDLY_Destrero de Ventormenta|r para desmontar|r
    .subzone 18 >> Viaja al Lago de Cristal
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
    >>Mata a los |cRXP_ENEMY_Murloc Streamrunners|r y a los |cRXP_ENEMY_Murlocs|r. Despójalos para obtener la |cRXP_LOOT_Crystal Alga Frond|r
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
    .subzone 54 >>Entra en la Cantera de Jaspe
    .isOnQuest 76
step << Human
    #xprate <1.2
    .goto 40,44.22,67.89,12,0
    .goto 40,38.71,60.84,12,0
    .goto 40,35.92,52.81
    >>Sigue el camino del centro dentro de la Cantera de Jaspe
    .complete 76,1 --Scout Through the Jasperlode Mine (1)
    .isOnQuest 76
step << Human
    #xprate <1.2
    #completewith Thomas
    .goto 37,61.58,70.04,0
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isOnQuest 76
    .skill riding,75,1
step << Human
    #xprate <1.2
    .goto 40,38.71,60.84,12,0
    .goto 40,44.22,67.89,12,0
    .goto 37,61.82,53.88,12,0
    .subzone 54,1 >>Sal de la Cantera de Jaspe
    .isOnQuest 76
    .skill riding,<75,1
step
    #xprate >1.19 << !Human
    #completewith Thomas
    .goto 37,42.105,65.927
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alguacil Dughan|r para montar el |cRXP_FRIENDLY_Destrero de Ventormenta|r hacia |cRXP_FRIENDLY_Guardia Thomas|r
    .timer 90,Preocupaciones adicionales RP
    .target Marshal Dughan
    .skipgossip 240,1
    .subzoneskip 87,1 --Goldshire
step
    #label Thomas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHaz clic en la |cRXP_PICK_Recompensa Abordar|r y habla con |cRXP_FRIENDLY_Guardia Thomas|r
    --.accept 46 >>Accept Bounty on Murlocs
    .accept 26152 >>Acepta la misión SE BUSCA: James Clark
    .goto 37,74.025,72.310
    .turnin 35 >>Entrega la misión Más preocupaciones
    .accept 37 >>Acepta la misión Encuentra a los guardias perdidos
    .accept 52 >>Acepta la misión Proteger la frontera
    .goto 37,73.973,72.177
    .target +Guard Thomas
step
    #completewith James
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    >>Mata a los |cRXP_ENEMY_Prowlers|r y a los |cRXP_ENEMY_Gris Forest Wolves|r
    >>Mata a cualquier |cRXP_ENEMY_Young Forest Osos|r que veas
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    .goto 37,72.653,60.323
    >>Haz clic en |cRXP_PICK_Un cadáver medio comido|r en el suelo
    .turnin 37 >>Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >>Acepta la misión Descubre el destino de Rolf
step
    #label James
    .goto 37,78.87,67.20,10,0
    .goto 37,78.637,67.157
    >>Mata a |cRXP_FRIENDLY_James Clark|r dentro. Despójalo para la |cRXP_LOOT_James Clark's Cabeza|r y la |T134939:0|t|cRXP_LOOT_[Planificación de recogida de oro]|r
    >>|cRXP_WARN_Usa |T134939:0|t|cRXP_LOOT_[Planificación de recogida de oro]|r para iniciar la misión|r
    .complete 26152,1 --James Clark's Head (1)
    .collect 1307,1,123,1 --Gold Pickup Schedule (1)
    .accept 123 >>Acepta la misión El Coleccionista
    .mob James Clark
    .use 1307
--step
--    .goto 37,79.462,68.715
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
--    .accept 83 >>Accept Fine Linen Goods
--    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alguacil Patterson|r
    .turnin 26152 >>Entrega la misión SE BUSCA: James Clark
    .turnin 123 >>Entrega la misión El Coleccionista
    .accept 147 >>Acepta la misión La persecución
    .target Marshal Patterson
step
    #optional
    #completewith StoneCairn
    .goto 37,87.15,64.63,0
    .goto 37,81.56,58.15,0
    .goto 37,87.15,64.63,60,0
    >>Mata a los |cRXP_ENEMY_Prowlers|r y a los |cRXP_ENEMY_Gris Forest Wolves|r
    >>Mata a cualquier |cRXP_ENEMY_Young Forest Osos|r que veas
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
    >>Despoja los |cRXP_LOOT_Bundles of Madera|r en el suelo junto a los árboles
    .complete 5545,1 -- Bundle of Wood (8)
step
    .goto 37,79.795,55.510
    >>Haz clic en el |cRXP_PICK_Cadáver de Rolf|r en el suelo
    .turnin 45 >>Entrega la misión Descubre el destino de Rolf
    .accept 71 >>Acepta la misión Informa a Thomas
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
    >>Mata a los |cRXP_ENEMY_Prowlers|r y a los |cRXP_ENEMY_Gris Forest Wolves|r
    >>Mata a cualquier |cRXP_ENEMY_Young Forest Osos|r que veas
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
    >>Despoja los |cRXP_LOOT_Bundles of Madera|r en el suelo junto a los árboles
    .complete 5545,1 -- Bundle of Wood (8)
step
    #requires PTFrontier
    .goto 37,73.973,72.177
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    --.turnin 46 >> Turn in Bounty on Murlocs
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 59 >> Acepta la misión Armadura de paño y cuero
    .target Guard Thomas
--XX     #optional if above not skipped
step
    .goto 37,71.02,80.67
    >>Mata a |cRXP_ENEMY_Morgan el Coleccionista|r dentro. Despójalo para la |cRXP_LOOT_The Collector's Tocar|r
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Entrega la misión Armadura de paño y cuero
    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alguacil Patterson|r
    .turnin 147 >>Entrega la misión La persecución
    .target Marshal Patterson
    .isQuestComplete 147
step << Hunter
--TODO: COORDS
    .target Rallic Finn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rallic Finn|r
    >>Compra un |T135489:0|t[Arco corvo laminado]
    .collect 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
step << Human
    #optional
    #completewith hs1
    .hs >> Usa tu Piedra de Hogar para ir a Goldshire
    .cooldown item,6948,<0,1
step << Human
    #completewith hs1
    #xprate <1.2
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Goss el Presto|r
    .fly Goldshire >> Vuela a Villadorada
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Goss el Presto|r
    .fly Gol'Bolar Quarry >> Vuela a Cantera Gol'Bolar
    .target Goss the Swift
    .cooldown item,6948,>0,1
step << Human
#xprate <1.2
    .goto 37,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 112 >> Entrega la misión La recolección de algas
    .target William Pestle
    .isQuestComplete 112

step << Human
#xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartlett el Valiente|r
    .fly Stormwind >> Vuela a Ventormenta << Rogue/Paladin/Warrior
    .fly Gol'Bolar Quarry >> Vuela a Cantera Gol'Bolar << !Rogue !Paladin !Warrior
	.target Bartlett the Brave
    .zoneskip Stormwind City
    .itemStat 16,QUALITY,<7
step << Human (Warrior/Paladin)
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra un|r |T135350:0|t[Mandoble] |cRXP_BUY_de ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Marda Weller
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_de ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Marda Weller
    .xp >11,1
    .xp <10,1
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra un|r |T132402:0|t[Hachuela] |cRXP_BUY_de ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
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
    +|cRXP_WARN_Equipa el|r |T135350:0|t[Mandoble]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje] |cRXP_WARN_en tu mano principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equipa la|r |T132402:0|t[Hachuela] |cRXP_WARN_en tu mano principal|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Human (Rogue/Paladin/Warrior)
    .goto 84,70.938,72.472,-1
    .goto 37,81.829,66.556,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r o |cRXP_FRIENDLY_Goss el Presto|r
    .fly Gol'Bolar Quarry >> Vuela a Cantera Gol'Bolar
	.target Dungar Longdrink
    .zoneskip 27 --Dun Morogh
    .target Goss the Swift

step << Dwarf/Gnome
#completewith next
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
    .zoneskip Dun Morogh
step << Dwarf/Gnome
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gremlock Pilsnor|r en la trastienda
    .turnin 6392 >>Entrega la misión junto a Gremlock
	.target Gremlock Pilsnor
--TODO: Training for dwarf/gnomes
step << Dwarf/Gnome
    .goto 27,53.802,52.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brolan Barbaviento|r
    .fly Gol'Bolar Quarry >> Vuela a Cantera Gol'Bolar
	.target Brolan Galebeard
step << Human
    .abandon 26394 >> Abandona todas las misiones de Elwynn Forest en tu registro de misiones
step
#label end
.zone Dun Morogh >> Ve a Eastern Dun Morogh
]])
