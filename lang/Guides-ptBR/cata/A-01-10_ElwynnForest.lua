if GetLocale() ~= "ptBR" then return end
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
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .accept 28757 >>Aceite É Hora de Reagir << Human Mage
    .accept 28762 >>Aceite É Hora de Reagir << Human Paladin
    .accept 28763 >>Aceite É Hora de Reagir << Human Priest
    .accept 28764 >>Aceite É Hora de Reagir << Human Rogue
    .accept 28765 >>Aceite É Hora de Reagir << Human Warlock
    .accept 28766 >>Aceite É Hora de Reagir << Human Warrior
    .accept 28767 >>Aceite É Hora de Reagir << Human Hunter
    .accept 29078 >>Aceite É Hora de Reagir << !Human
    .accept 31139 >>Aceite É Hora de Reagir << Human Death Knight/Human Monk
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
    >>Mate os |cRXP_ENEMY_Worgs Blackrock|r << !mop
    >>Mate os |cRXP_ENEMY_Worgs de Batalha Blackrock|r << mop
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
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 28757 >>Entregue É Hora de Reagir << Human Mage
    .turnin 28762 >>Entregue É Hora de Reagir << Human Paladin
    .turnin 28763 >>Entregue É Hora de Reagir << Human Priest
    .turnin 28764 >>Entregue É Hora de Reagir << Human Rogue
    .turnin 28765 >>Entregue É Hora de Reagir << Human Warlock
    .turnin 28766 >>Entregue É Hora de Reagir << Human Warrior
    .turnin 28767 >>Entregue É Hora de Reagir << Human Hunter
    .turnin 29078 >>Entregue É Hora de Reagir << !Human
    .turnin 31139 >>Entregue É Hora de Reagir << Human Death Knight/Human Monk
    .accept 28759 >>Aceite Leões e Cordeiros << Human Hunter
    .accept 28769 >>Aceite Leões e Cordeiros << Human Mage
    .accept 28770 >>Aceite Leões e Cordeiros << Human Paladin
    .accept 28771 >>Aceite Leões e Cordeiros << Human Priest
    .accept 28772 >>Aceite Leões e Cordeiros << Human Rogue
    .accept 28773 >>Aceite Leões e Cordeiros << Human Warlock
    .accept 28774 >>Aceite Leões e Cordeiros << Human Warrior
    .accept 29079 >>Aceite Leões e Cordeiros << !Human
    .accept 31140 >>Aceite Leões e Cordeiros << Human Death Knight/Human Monk
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
    >>Mate os |cRXP_ENEMY_Espiões Blackrock|r
    >>|cRXP_WARN_Eles são|r |T132320:0|t[Furtivo] |cRXP_WARN_(mas facilmente visíveis)|r
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
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 28769 >>Entregue Leões e Cordeiros << Human Mage
    .turnin 28759 >>Entregue Leões e Cordeiros << Human Hunter
    .turnin 28770 >>Entregue Leões e Cordeiros << Human Paladin
    .turnin 28771 >>Entregue Leões e Cordeiros << Human Priest
    .turnin 28772 >>Entregue Leões e Cordeiros << Human Rogue
    .turnin 28773 >>Entregue Leões e Cordeiros << Human Warlock
    .turnin 28774 >>Entregue Leões e Cordeiros << Human Warrior
    .turnin 29079 >>Entregue Leões e Cordeiros << !Human
    .turnin 31140 >>Entregue Leões e Cordeiros << Human Death Knight/Human Monk
    .accept 28780 >>Aceite Junte-se à Batalha! << Human Hunter
    .accept 28784 >>Aceite Junte-se à Batalha! << Human Mage
    .accept 28785 >>Aceite Junte-se à Batalha! << Human Paladin
    .accept 28786 >>Aceite Junte-se à Batalha! << Human Priest
    .accept 28787 >>Aceite Junte-se à Batalha! << Human Rogue
    .accept 28788 >>Aceite Junte-se à Batalha! << Human Warlock
    .accept 28789 >>Aceite Junte-se à Batalha! << Human Warrior
    .accept 29080 >>Aceite Junte-se à Batalha! << !Human
    .accept 31143 >>Aceite Junte-se à Batalha! << Human Death Knight/Human Monk
    .target Marshal McBride
step
    .goto 425,33.56,53.04
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 28769 >>Entregue Leões e Cordeiros << Human Mage
    .turnin 28759 >>Entregue Leões e Cordeiros << Human Hunter
    .turnin 28770 >>Entregue Leões e Cordeiros << Human Paladin
    .turnin 28771 >>Entregue Leões e Cordeiros << Human Priest
    .turnin 28772 >>Entregue Leões e Cordeiros << Human Rogue
    .turnin 28773 >>Entregue Leões e Cordeiros << Human Warlock
    .turnin 28774 >>Entregue Leões e Cordeiros << Human Warrior
    .turnin 29079 >>Entregue Leões e Cordeiros << !Human
    .turnin 31140 >>Entregue Leões e Cordeiros << Human Death Knight/Human Monk
    .accept 3100 >>Aceite Carta Simples << Human Warrior
    .accept 3101 >>Aceite Carta Consagrada << Human Paladin
    .accept 3102 >>Aceite Carta Criptografada << Human Rogue
    .accept 3103 >>Aceite Carta Santificada << Human Priest
    .accept 3104 >>Aceite Carta Glífica << Human Mage
    .accept 3105 >>Aceite Carta Corrompida << Human Warlock
    .accept 26910 >>Aceite Carta Cinzelada << Human Hunter
    .accept 31141 >>Aceite Carta Caligrafada << Human Monk
    .accept 29080 >>Aceite Junte-se à Batalha! << !Human
    .target Marshal McBride
--XX needs testing on non-human classes. Not needed for Monks/DKs

step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bao|r
    .target Bao
    .turnin 31141 >>Entregue Carta Caligrafada
    .accept 31142 >>Aceite Palma do Tigre
step << Warrior/Paladin
    #optional
    #completewith next
    .goto 425,35.84,51.87,8,0
    .goto 425,38.46,52.30,8,0
    .goto 425,40.87,53.80,10 >>Vá para |cRXP_FRIENDLY_Hipólito Valentim|r dentro da Abadia << Warrior
    .goto 425,41.55,53.23,10 >>Vá para o |cRXP_FRIENDLY_Irmão Samuel|r dentro da Abadia << Paladin
step << Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hipólito Valentim|r
    .turnin 3100 >>Entregue Carta Simples << Human
    .accept 26913 >>Aceite Com Toda a Carga << Human
    .train 100 >>Treine |T132337:0|t[Carga] << Cata
    .target Llane Beshere
step << Paladin
    .goto 425,41.55,53.23
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .turnin 3101 >>Entregue Carta Consagrada << Human
    .accept 26918 >>Aceite O Poder da Luz << Human
    .train 20154 >>Treine |T135960:0|t[Selo da Retidão] << Cata
    .train 20271 >>Aprenda |T135959:0|t[Julgamento] << Cata
    .target Brother Sammuel
step << Rogue
    .goto 425,41.13,45.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rufino Raposo|r do lado de fora, no lado oposto da Abadia
    .turnin 3102 >>Entregue Carta Criptografada << Human
    .accept 26915 >>Aceite O Corte Mais Profundo << Human
    .train 2098 >>Treine |T132292:0|t[Eviscerar] << Cata
    .target Jorik Kerridan
step << Human Priest/Human Mage
    #optional
    #completewith next
    .goto 425,35.61,51.32,8,0
    .goto 425,37.20,48.32,8,0
    .goto 425,38.95,46.52,8,0 << Priest
    .goto 425,38.31,46.07,8,0 << Mage
    .goto 425,37.94,45.13,5,0 << Mage
    .goto 425,39.31,43.78,10 >>Vá para a |cRXP_FRIENDLY_Sacerdotisa Anita|r dentro da Abadia << Priest
    .goto 425,38.78,43.47,10 >>Vá para |cRXP_FRIENDLY_Gaspar Melchior|r dentro da Abadia no andar de cima. Pule para o corrimão fora do seu quarto se puder << Mage
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r
    .turnin 3103 >>Entregue Carta Santificada
    .accept 26919 >>Aceite Cura o Ferido << cata
    .accept 26919 >>Aceite Aprenda a Palavra << !cata
    .train 2061 >>Treine |T135907:0|t[Cura Célere] << Cata
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
    >>Use |T135907:0|t[Cura Célere] em 5 |cRXP_FRIENDLY_Wounded Trainees|r dentro da Abadia
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
    >>Use |T136207:0|t[Palavra Sombria: Dor] em um |cRXP_ENEMY_Boneco de Treinamento|r 5 vezes
    .complete 26919,2 --Cast Flash Heal (5)
    .target Training Dummy
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaspar Melchior|r
    .turnin 3104 >>Entregue Carta Glífica << Human
    .accept 26916 >>Aceite O Domínio do Poder Arcano << Human
    .train 5143 >>Treine |T136096:0|t[Mísseis Arcanos] << Cata
    .target Khelden Bremen
--XX Human Mage only since Arcane Missiles is somewhat useless when you just fireball spam
step << Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Entregue Carta Corrompida << Human
    .accept 26914 >>Aceite Imolação << Human
    .train 348 >>Treine |T135817:0|t[Imolação] << Cata
    .target Drusilla La Salle
step << Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adalgisa Ferrão|r
    .turnin 26910 >>Entregue Carta Cinzelada << Human
    .accept 26917 >>Aceite O Caminho do Caçador << Human
    .train 56641 >>Treine |T132213:0|t[Tiro Firme] << Cata
    .target Ashley Blank
step << Human Warrior/Human Paladin/Human Mage
    #optional
    #completewith next
    .goto 425,38.46,52.30,8,0 << Warrior/Paladin
    .goto 425,35.84,51.87,8,0 << Warrior/Paladin
    .goto 425,37.20,48.32,8,0 << Mage
    .goto 425,35.61,51.32,8,0 << Mage
    .goto 425,33.82,53.38,10,0
    .goto 425,35.58,60.57,40 >>Vá para os |cRXP_ENEMY_Bonecos de Treinamento|r
step << !Priest Human
    .goto 425,35.58,60.57,-1
    .goto 425,35.82,61.08,-1
    .goto 425,35.81,61.71,-1
    .goto 425,35.55,62.26,-1
    .goto 425,35.13,62.46,-1
    .goto 425,34.74,62.27,-1
    .goto 425,34.48,61.76,-1
    .goto 425,34.46,61.13,-1
    >>Use |T574576:0|t[Jabe] seguido de |T606551:0|t[Palma do Tigre] em um |cRXP_ENEMY_Boneco de Treinamento|r << Monk
    >>Lance |T132337:0|t[Investida] em um |cRXP_ENEMY_Boneco de Treinamento|r << Warrior
    >>Use |T135817:0|t[Imolação] em um |cRXP_ENEMY_Boneco de Treinamento|r 5 vezes << Warlock
    >>Use |T136189:0|t[Golpe Sinistro] e depois |T132292:0|t[Eviscerar] em um |cRXP_ENEMY_Boneco de Treinamento|r 3 vezes << Rogue
    >>Use |T135812:0|t[Bola de Fogo] e depois |T136096:0|t[Mísseis Arcanos] quando ativar em um |cRXP_ENEMY_Boneco de Treinamento|r 2 vezes << Mage
    >>Use |T132213:0|t[Tiro firme] em um |cRXP_ENEMY_Boneco de Treinamento|r 5 vezes << Hunter
    >>Use |T135960:0|t[Selo da Retidão] e depois |T135959:0|t[Julgamento] em um |cRXP_ENEMY_Boneco de Treinamento|r << Paladin
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
    .goto 425,40.87,53.80,10 >>Volte para |cRXP_FRIENDLY_Hipólito Valentim|r dentro da Abadia << Warrior
    .goto 425,41.55,53.23,10 >>Volte para |cRXP_FRIENDLY_Irmão Samuel|r dentro da Abadia << Paladin
    .goto 425,38.78,43.47,10 >>Volte para |cRXP_FRIENDLY_Gaspar Melchior|r dentro da Abadia << Mage
    .goto 425/0,-212.100,-8907.400,10 >>Volte para |cRXP_FRIENDLY_Bao|r dentro da Abadia << Monk
step << Human Monk
    .goto 425/0,-212.100,-8907.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r
    .turnin 31142 >>Entregue Cura do Ferido
    .accept 31143 >>Aceite Junte-se à Batalha!
    .target Priestess Anetta
step << Human Priest
    .goto 425,39.31,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r
    .turnin 26919 >>Entregue Cura do Ferido
    .accept 28786 >>Aceite Junte-se à Batalha!
    .target Priestess Anetta
step << Human Mage
    .goto 425,38.78,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaspar Melchior|r
    .turnin 26916 >>Entregue O Domínio do Poder Arcano
    .accept 28784 >>Aceite Junte-se à Batalha!
    .target Khelden Bremen
step << Human Warrior
    .goto 425,40.87,53.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hipólito Valentim|r
    .turnin 26913 >>Entregue Carregando para a Batalha
    .accept 28789 >>Aceite Junte-se à Batalha!
    .target Llane Beshere
step << Human Paladin
    .goto 425,41.55,53.23
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .turnin 26918 >>Entregue O Poder da Luz
    .accept 28785 >>Aceite Junte-se à Batalha!
    .target Brother Sammuel
step << Human Rogue
    .goto 425,41.13,45.32
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .turnin 26915 >>Entregue O Corte Mais Profundo
    .accept 28787 >>Aceite Junte-se à Batalha!
    .target Jorik Kerridan
step << Human Warlock
    .goto 425,39.55,55.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 26914 >>Entregue Imolação
    .accept 28788 >>Aceite Junte-se à Batalha!
    .target Drusilla La Salle
--XX May not need to turn in class quest to accept followup (aka can turn in later)
step << Human Hunter
    .goto 425,34.83,54.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adalgisa Ferrão|r
    .turnin 26917 >>Entregue O Caminho do Caçador
    .accept 28780 >>Aceite Junte-se à Batalha!
    .target Ashley Blank




step
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .turnin 28780 >>Entregue Junte-se à Batalha! << Human Hunter
    .turnin 28784 >>Entregue Junte-se à Batalha! << Human Mage
    .turnin 28785 >>Entregue Junte-se à Batalha! << Human Paladin
    .turnin 28786 >>Entregue Junte-se à Batalha! << Human Priest
    .turnin 28787 >>Entregue Junte-se à Batalha! << Human Rogue
    .turnin 28788 >>Entregue Junte-se à Batalha! << Human Warlock
    .turnin 28789 >>Entregue Junte-se à Batalha! << Human Warrior
    .turnin 29080 >>Entregue Junte-se à Batalha! << !Human
    .turnin 31143 >>Entregue Junte-se à Batalha! << Human Death Knight/Human Monk
    .accept 28791 >>Aceite Eles Mandaram Assassinos << Human Hunter
    .accept 28792 >>Aceite Eles Mandaram Assassinos << Human Mage
    .accept 28793 >>Aceite Eles Mandaram Assassinos << Human Paladin
    .accept 28794 >>Aceite Eles Mandaram Assassinos << Human Priest
    .accept 28795 >>Aceite Eles Mandaram Assassinos << Human Rogue
    .accept 28796 >>Aceite Eles Mandaram Assassinos << Human Warlock
    .accept 28797 >>Aceite Eles Mandaram Assassinos << Human Warrior
    .accept 29081 >>Aceite Eles Mandaram Assassinos << !Human
    .accept 31144 >>Aceite Eles Mandaram Assassinos << Human Death Knight/Human Monk
    .target Sergeant Willem
step << !DK !Monk
    #loop
    .goto 425,34.99,38.24,0
    .goto 425,34.47,39.42,8,0
    .goto 425,34.99,38.24,8,0
    .goto 425,35.55,37.73,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o Irmão Paxeco|r
    .accept 28806 >>Aceite Não Temas o Mal << Human Hunter
    .accept 28808 >>Aceite Não Temas o Mal << Human Mage
    .accept 28809 >>Aceite Não Temas o Mal << Human Paladin
    .accept 28810 >>Aceite Não Temas o Mal << Human Priest
    .accept 28811 >>Aceite Não Temas o Mal << Human Rogue
    .accept 28812 >>Aceite Não Temas o Mal << Human Warlock
    .accept 28813 >>Aceite Não Temas o Mal << Human Warrior
    .accept 29082 >>Aceite Não Temas o Mal << !Human
    --.accept 63447 >>Accept Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step << skip
    #optional
    #completewith Rear
    .goto 425,31.59,16.72,40 >>|cRXP_WARN_[RARO] Procure por |cRXP_ENEMY_Guga Velagorda|r. Mate-o se estiver ativo|r
    *|cRXP_WARN_É importante matar Raros e saquear baús de tesouro, pois concedem muita experiência|r
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
    >>Clique na |cRXP_PICK_Infantaria Ferida de Ventobravo|r no chão para revitalizá-los
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
    >>Mate os |cRXP_ENEMY_Assassinos Goblin|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o Irmão Paxeco|r
    .turnin 28806 >>Entregue Não Temas o Mal << Human Hunter
    .turnin 28808 >>Entregue Não Temas o Mal << Human Mage
    .turnin 28809 >>Entregue Não Temas o Mal << Human Paladin
    .turnin 28810 >>Entregue Não Temas o Mal << Human Priest
    .turnin 28811 >>Entregue Não Temas o Mal << Human Rogue
    .turnin 28812 >>Entregue Não Temas o Mal << Human Warlock
    .turnin 28813 >>Entregue Não Temas o Mal << Human Warrior
    .turnin 29082 >>Entregue Não Temas o Mal << !Human
    --.turnin 63447 >>Turn in Fear No Evil << Human Death Knight/Human Monk
    .target Brother Paxton
step
    #label Rear
    .goto 425,35.73,39.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Vilém|r
    .turnin 28791 >>Entregue Assassinos de Aluguel << Human Hunter
    .turnin 28792 >>Entregue Assassinos de Aluguel << Human Mage
    .turnin 28793 >>Entregue Assassinos de Aluguel << Human Paladin
    .turnin 28794 >>Entregue Assassinos de Aluguel << Human Priest
    .turnin 28795 >>Entregue Assassinos de Aluguel << Human Rogue
    .turnin 28796 >>Entregue Assassinos de Aluguel << Human Warlock
    .turnin 28797 >>Entregue Assassinos de Aluguel << Human Warrior
    .turnin 29081 >>Entregue Assassinos de Aluguel << !Human
    .turnin 31144 >>Entregue Assassinos de Aluguel << Human Death Knight/Human Monk
    .accept 28817 >>Aceite A Retaguarda Está Livre << Human Hunter
    .accept 28818 >>Aceite A Retaguarda Está Livre << Human Mage
    .accept 28819 >>Aceite A Retaguarda Está Livre << Human Paladin
    .accept 28820 >>Aceite A Retaguarda Está Livre << Human Priest
    .accept 28821 >>Aceite A Retaguarda Está Livre << Human Rogue
    .accept 28822 >>Aceite A Retaguarda Está Livre << Human Warlock
    .accept 28823 >>Aceite A Retaguarda Está Livre << Human Warrior
    .accept 29083 >>Aceite A Retaguarda Está Livre << !Human
    .accept 31145 >>Aceite A Retaguarda Está Livre << Human Death Knight/Human Monk
    .target Sergeant Willem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Major Belmonte|r e a |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 28817 >>Entregue A Retaguarda Está Livre << Human Hunter
    .turnin 28818 >>Entregue A Retaguarda Está Livre << Human Mage
    .turnin 28819 >>Entregue A Retaguarda Está Livre << Human Paladin
    .turnin 28820 >>Entregue A Retaguarda Está Livre << Human Priest
    .turnin 28821 >>Entregue A Retaguarda Está Livre << Human Rogue
    .turnin 28822 >>Entregue A Retaguarda Está Livre << Human Warlock
    .turnin 28823 >>Entregue A Retaguarda Está Livre << Human Warrior
    .turnin 29083 >>Entregue A Retaguarda Está Livre << !Human
    .turnin 31145 >>Entregue A Retaguarda Está Livre << Human Death Knight/Human Monk
    .accept 26389 >>Aceite Invasão dos Rocha Negra
    .goto 425,33.56,53.04
    .target +Marshal McBride
    .accept 26391 >>Aceite A Esperança É a Última que Queima
    .goto 425,33.38,54.67
    .target +Milly Osworth
step << skip
    #completewith next
    +|cRXP_WARN_Para ativar atalhos de teclado para itens de missão, siga estas etapas:|r
    *[1] Pressione a |cRXP_WARN_tecla Fuga.|r
    *[2] Selecione |cRXP_WARN_Options.|r
    *[3] Navegue para |cRXP_WARN_Keybindings.|r
    *[4] Dentro de |cRXP_WARN_Keybindings|r, encontre |cRXP_WARN_RestedXP Guides.|r
    *[5] Selecione e configure o |cRXP_WARN_Active Botão.|r
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Blackrock Invaders|r. Saque-os para as suas |cRXP_LOOT_Blackrock Orc Armas|r
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
    >>|cRXP_WARN_Channel|r |T308321:0|t[Milly's Extintor de Incêndio] |cRXP_WARN_on the fires throughout the Northshire Vineyards|r
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
    >>Abate os |cRXP_ENEMY_Blackrock Invaders|r. Saque-os para as suas |cRXP_LOOT_Blackrock Orc Armas|r
    .complete 26389,1 --Blackrock Orc Weapon (8)
    .mob Blackrock Invader
step
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Madel Quintana|r e o |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 26391 >>Entregue A Esperança É a Última que Queima
    .target +Milly Osworth
    .goto 425,33.38,54.67
    .turnin 26389 >>Entregue Invasão dos Rocha Negra
    .accept 26390 >>Aceite Vamos Acabar com a Invasão!
    .goto 425,33.56,53.04
    .target +Marshal McBride
step
    .goto 425,64.97,48.38
    >>Abate |cRXP_ENEMY_Kurtok, o Matador|r
    .complete 26390,1 --Kurtok the Slayer (1)
    .mob Kurtok the Slayer
step
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto 425,33.56,53.04
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 26390 >>Entregue Vamos Acabar com a Invasão!
    .accept 54 >>Aceite Relatório para Vila Dourada
    .target Marshal McBride
step
    #optional
    #completewith next
    .goto 37,46.877,48.018,20,0
    .goto 37,45.563,47.738,15 >>Viaje para |cRXP_FRIENDLY_Falcão Lencastre|r
    .skill riding,75,1
step
    .goto 37,45.563,47.738
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Falcão Lencastre|r
    .accept 2158 >>Aceite Descanso e Relaxamento
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .turnin 24493 >>Entregue Não se Esqueça de Nós
	.target Tharek Blackstone
    .isOnQuest 24493
step << Dwarf/Gnome
#xprate >1.19
    #optional
    #completewith Belm
    .goto 27,54.083,50.335,8,0
    .goto 27,54.277,50.312,8,0
    .goto 27,54.485,50.847,10 >>Entre na Destilaria Cervaforte. Vá até o |cRXP_FRIENDLY_Estalajadeiro Belm|r lá dentro
    .subzoneskip 2102
step << Gnome
#xprate >1.19
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .turnin 26380,2 >>Entregue Um Pulinho em Kharanos
	.target Innkeeper Belm
    .isOnQuest 26380
--XX not sure how to do this otherwise
step << Dwarf/Gnome
#xprate >1.19
    #label Belm
    .goto 27,54.485,50.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .home >>Defina sua Pedra de Regresso na Destilaria Cervaforte
	.target Innkeeper Belm
step << Dwarf/Gnome/DarkIronDwarf
#xprate >1.19
    .goto 27,54.723,50.607,8,0
    .goto 27,54.784,50.629,8,0
    .goto 27,54.733,50.815,8,0
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gremlock Pilsnor|r dentro da sala de fundo
    .accept 6387 >>Aceite Alunos Brilhantes
	.target Gremlock Pilsnor
step << cata Shaman
    #xprate <1.2
    .xp 7
step << cata Shaman
    #xprate <1.2
    .goto 1426/0,-536.50000,-5581.50000
    .train 331 >>Treinar |T136052:0|tOnda de Cura na Estalagem de Kharanos
step << Gnome
#xprate >1.19
    #optional
    #questguide
    .goto 27,53.713,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Tharran|r
    .turnin 26373 >>Entregue Para Kharanos e avante!
	.target Captain Tharran
    .isOnQuest 26373
step << Dwarf/Gnome
    .goto 1426/0,-497.50000,-5664.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brolan Barbavento|r
    .target Brolan Galebeard
    .turnin 6387 >>Entregue Alunos Brilhantes
    .accept 6391 >>Aceite Carona para Altaforja
step << Dwarf/Gnome
#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brolan Barbavento|r
    .target Brolan Galebeard
    .goto 1426/0,-497.50000,-5664.00000
    .fly Ironforge >>Voe para Altaforja
step << Dwarf/Gnome
    .goto 1455/0,-1118.50000,-4707.30029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Golnir Topadão|r
    .target Golnir Bouldertoe
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
step << Dwarf/Gnome
    .goto 1455/0,-1154.90002,-4820.70020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .target Gryth Thurden
    .turnin 6388 >>Entregue Grif Trovino
    .accept 6392 >>Aceite Retornar ao Gremlock
step << Dwarf/Gnome
#completewith next
    .goto Ironforge,55.501,47.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .target Gryth Thurden
    .fly Goldshire >>Voe para Goldshire
step << Human
    #completewith GSReport
    .goto 37,41.71,52.74,-1
    .goto 37,39.48,60.53,-1
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isOnQuest 2158
    .skill riding,75,1
step
    #label GSReport
    .goto 37,42.11,65.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada << Human
    .accept 62 >>Aceite A Mina Fundaprofunda
	.target Marshal Dughan
step << Human
    .goto 37,41.708,65.541
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    .accept 26393 >>Aceite Um Recado Rápido
	.target Smith Argus
step << Human
    .goto 37,41.715,64.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolotto, o Bravo|r
	.turnin 26393 >>Entregue Um Recado Rápido
    .accept 26394 >>Aceite Siga para Ventobravo
	.target Bartlett the Brave
step
    #optional
    #completewith next
    .goto 37,43.19,65.74,5,0
    .goto 37,43.23,65.95,5,0
    .goto 37,43.318,65.705,4 >>Vá para |cRXP_FRIENDLY_Durval Pilão|r
step
    .goto 37,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .accept 60 >>Aceite Velas Kobold
	.target William Pestle
step << Human
    .goto 37,43.77,65.80
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .turnin 2158 >>Entregue Descanso e Relaxamento
    .home >>Defina sua Pedra de Retorno na Estalagem do Orgulho do Leão
	.target Innkeeper Farley
step << skip
    #optional
    #completewith RemyTT
    .goto 37,41.95,67.16,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luiz Faro|r ao lado de |cRXP_FRIENDLY_Remy "Duas Vezes"|r se desejar treinar Profissões
    .target Lien Farner
step
    #optional
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >>Vá para |cRXP_FRIENDLY_Remy "Duas Vezes"|r
step
    #label RemyTT
    .goto 37,42.14,67.26
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .accept 47 >>Aceite Troca de Pó de Ouro
	.target Remy "Two Times"
step
    #optional
    #completewith Necklace1
    .goto 37,38.22,83.41,0
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r. Saqueie-os pelas |cRXP_LOOT_Velas Grandes|r e pelo |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r e |cRXP_FRIENDLY_Mama Campedra|r
    .accept 85 >>Aceite O Colar Perdido
    .goto 37,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >>Aceite Princesa Tem que Morrer!
    .goto 37,34.66,84.48
	.target +Ma Stonefield
    .xp <6,1
step
    #optional
    #label Necklace1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .accept 85 >>Aceite O Colar Perdido
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
step
    #completewith Billy1
    .goto 37,38.22,83.41,0
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os pelas |cRXP_LOOT_Velas Grandes|r e pelo |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob Kobold Tunneler
	.mob Kobold Miner
step
    #label Billy1
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Torta para o Billy
    .target Billy Maclure
step
    #completewith TommyJoe
    .goto 37,41.69,86.91,0
    .goto 37,32.54,85.26,0
    >>Abate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os pela |cRXP_LOOT_Carne de Javali Tenra|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
    .goto 37,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r dentro
    .accept 106 >>Aceite Jovens Amantes
    .target Maybell Maclure
step
    #optional
    .goto 37,41.69,86.91
    .xp 6 >>Farme até o nível 6
    .mob Stonetusk Boar
step
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .accept 88 >>Aceite Princesa Tem que Morrer!
	.target Ma Stonefield
step
    #optional
    #completewith PrincessEnd
    .goto 37,38.22,83.41,0
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r. Saqueie-os pelas |cRXP_LOOT_Velas Grandes|r e pelo |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << skip
    .goto 37,33.64,87.76,15 >>|cRXP_WARN_[BAUL] Verifique o |cRXP_PICK_Baú|r dentro dos estábulos. Saque-o se estiver disponível|r
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
    >>Abate a |cRXP_ENEMY_Princesa|r. Saqueie-a pelo |cRXP_LOOT_Colar de Latão|r e pela |cRXP_LOOT_Carne de Javali Tenra|r
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
    >>Abate a |cRXP_ENEMY_Princesa|r. Saque-a pelo |cRXP_LOOT_Colar de Latão|r
    .complete 88,1 --1/1 Brass Collar
	.mob Princess
--XX Will users struggle if they're still level 6?
step
    #label TommyJoe
    .goto 37,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomasino Campedra|r
    .turnin 106 >>Entregue Jovens Amantes
    .accept 111 >>Aceite Fale com a Vovó
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
    >>Abate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os pela |cRXP_LOOT_Carne de Javali Tenra|r
    .complete 86,1 --Tender Boar Meat (4)
    .mob Stonetusk Boar
step
#sticky
#label princessT
    .goto 37,34.66,84.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .turnin 88 >>Entregue Princesa Tem que Morrer!
	.target Ma Stonefield
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .goto 37,34.486,84.253
    .turnin 86 >>Entregue Torta para o Billy
    .target "Auntie" Bernice Stonefield
step << Human
#xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .goto 37,34.486,84.253
    .target "Auntie" Bernice Stonefield
    .accept 84 >>Aceite "...com a vontade de comer"
step
#requires princessT
    .goto 37,34.94,83.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vovó Campedra|r dentro
    .turnin 111 >>Entregue Fale com a Vovó
    .accept 107 >>Aceite Bilhete para Durval
    .target Gramma Stonefield
step << Human
#xprate <1.2
    #completewith Goldtooth
    .goto 37,38.22,83.41,0
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r. Saqueie-os pelas |cRXP_LOOT_Velas Grandes|r e pelo |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
	.mob *Kobold Tunneler
step << Human
#xprate <1.2
    .goto 37,43.13,85.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 84 >>Entregue "...com a vontade de comer"
    .accept 87 >>Aceite Dentadouro
    .target Billy Maclure
step
    #xprate >1.59
    #optional
    .maxlevel 10,endOfTheGuide
step << Human
#xprate <1.2
    #label Goldtooth
    .goto Elwynn Forest,40.08,80.62
    >>Mate o |cRXP_ENEMY_Dentadouro|r |cRXP_WARN_fora|r da mina. Saque-o para o |cRXP_LOOT_Bernice's Colar|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step << skip
    #optional
    .goto 37,38.22,83.41,40 >>|cRXP_WARN_[Raro] Verifique por |cRXP_ENEMY_Narg, o Capataz|r. Mate-o se estiver ativo|r
	.unitscan Narg the Taskmaster
    .isOnQuest 60
    .noflyable
step
    #completewith next
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explore a Mina Fargodeep
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
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os pelas |cRXP_LOOT_Velas Grandes|r e pelo |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --8/8 Large Candle
    .complete 47,1 --10/10 Gold Dust
    .mob *Kobold Tunneler
    .mob *Kobold Miner
step
    #label scoutm1
    .goto 37,38.37,81.52,30,0
    .goto 37,40.69,81.74
    >>Explore a Mina Fargodeep
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
    .xp 6+2275 >>Farme até 2275+/3600 XP
    .mob Kobold Tunneler
    .mob Kobold Miner
--XX 625 (Gold Dust) 700 (Goldtooth) - Ensure "A Fishy Peril"
step << Human
#xprate <1.2
    .goto 37,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 87 >>Entregue Dentadouro
    .target "Auntie" Bernice Stonefield
--XX Early turnin XP gate for level 8? No idea how good/bad xp will be by now. Can be made optional/turned in later but I wanted to skip The Escape since you can fly Eastvale at 6+ and go north for checking rares instead
step << Human
    #completewith Kelp
    .hs >>Vá para Goldshire
    .subzoneskip 87
step << !Human
#completewith next
    .deathskip >>Morra e apareça em Goldshire
    .subzoneskip 87
step
    #label Kelp
    #xprate >1.19 << Human
    .goto 37,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 60 >>Entregue Velas dos Kobolds
    .turnin 107 >>Entregue Bilhete para Durval
    .target William Pestle
step << Human
    #label Kelp
    #xprate <1.2
    .goto 37,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 60 >>Entregue Velas dos Kobolds
    .turnin 107 >>Entregue Bilhete para Durval
    .accept 112 >>Aceite Coletando Alga
    .target William Pestle
step
    #completewith next
    .goto 37,43.23,65.95,5,0
    .goto 37,43.13,65.74,5,0
    .goto 37,42.93,65.71,6,0
    .goto 37,42.14,67.26,12 >>Entregue a |cRXP_FRIENDLY_Remy "Duas Vezes"|r
step
    .goto 37,42.14,67.26
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .accept 40 >>Aceite Perigo Anfíbio
	.target Remy "Two Times"
step << Hunter cata
    .goto 37,40.854,65.902
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benjamim Raposo|r
    .trainer >>Treine suas magias de classe
    .target Benjamin Foxworthy
step << Paladin cata
    .goto 37,41.074,65.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step << Warrior cata
    .goto 37,41.069,65.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step << Warlock cata
    #completewith next
    .goto 37,44.54,65.76,15 >>Desça para o porão da Estalagem Goldshire
step << Warlock cata
    .goto 37,44.389,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >>Treine suas magias de classe
    .target Maximillian Crowe
step << Mage/Priest/Rogue cata
    #completewith next
    .goto 37,43.86,66.40,15 >>Suba as escadas da Estalagem Goldshire
step << Mage cata
    .goto 37,43.246,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >>Treine suas magias de classe
    .target Zaldimar Wefhellt
step << Priest cata
    .goto 37,43.282,65.720
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
    .trainer >>Treine suas magias de classe
    .target Priestess Josetta
step << Rogue cata
    .goto 37,43.872,65.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .trainer >>Treine suas magias de classe
    .target Keryn Sylvius
step << Human
    #xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 40 >>Entregue Perigo Anfíbio
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 35 >>Aceite Mais Preocupações
    .accept 76 >>Aceite A Mina de Jaspe
    .target Marshal Dughan
    .isOnQuest 112
step
    #optional << Human
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 62 >>Entregue A Mina Vailafundo
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
    >>|cRXP_WARN_Quando o cronômetro de 20 segundos expirar (20 segundos após aceitar montar), saia do jogo e então volte enquanto estiver no |cRXP_FRIENDLY_Corcel de Ventobravo|r para desmontar|r
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r para montar no |cRXP_FRIENDLY_Corcel de Ventobravo|r em direção ao |cRXP_FRIENDLY_Guarda Tomás|r
    .timer 20,Comece a Sair quando o Cronômetro Terminar
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
    >>|cRXP_WARN_Quando o cronômetro de 20 segundos expirar (20 segundos após aceitar montar), saia do jogo e então volte enquanto estiver no |cRXP_FRIENDLY_Corcel de Ventobravo|r para desmontar|r
    .subzone 18 >>Vá para o Lago Cristal
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
    >>Mate os |cRXP_ENEMY_Murloc Streamrunners|r e os |cRXP_ENEMY_Murlocs|r. Saqueie-os para obter seus |cRXP_LOOT_Crystal Alga Frond|r
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
    .subzone 54 >>Entre na Mina de Jasperlode
    .isOnQuest 76
step << Human
    #xprate <1.2
    .goto 40,44.22,67.89,12,0
    .goto 40,38.71,60.84,12,0
    .goto 40,35.92,52.81
    >>Siga o caminho do meio dentro da Mina de Jasperlode
    .complete 76,1 --Scout Through the Jasperlode Mine (1)
    .isOnQuest 76
step << Human
    #xprate <1.2
    #completewith Thomas
    .goto 37,61.58,70.04,0
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isOnQuest 76
    .skill riding,75,1
step << Human
    #xprate <1.2
    .goto 40,38.71,60.84,12,0
    .goto 40,44.22,67.89,12,0
    .goto 37,61.82,53.88,12,0
    .subzone 54,1 >>Saia da Mina de Jasperlode
    .isOnQuest 76
    .skill riding,<75,1
step
    #xprate >1.19 << !Human
    #completewith Thomas
    .goto 37,42.105,65.927
    .vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r para montar no |cRXP_FRIENDLY_Corcel de Ventobravo|r em direção ao |cRXP_FRIENDLY_Guarda Tomás|r
    .timer 90,Mais Preocupações RP
    .target Marshal Dughan
    .skipgossip 240,1
    .subzoneskip 87,1 --Goldshire
step
    #label Thomas
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClique no |cRXP_PICK_Quadro de Recompensas|r e fale com o |cRXP_FRIENDLY_Guarda Tomás|r
    --.accept 46 >>Accept Bounty on Murlocs
    .accept 26152 >>Aceite Procura-se: Tiago Ciríaco
    .goto 37,74.025,72.310
    .turnin 35 >>Entregue Mais Preocupações
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
    .goto 37,73.973,72.177
    .target +Guard Thomas
step
    #completewith James
    .goto 37,77.99,60.59,0
    .goto 37,71.58,60.84,0
    .goto 37,74.75,67.13,0
    .goto 37,87.15,64.63,0
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Gray Forest Wolves|r
    >>Mate quaisquer |cRXP_ENEMY_Young Forest Ursos|r que você vir
    .complete 52,1 --Kill Prowler or Forest Wolf (8)
    .mob +*Prowler
    .mob +*Gray Forest Wolf
    .complete 52,2 --Kill Young Forest Bear (5)
    .mob +Young Forest Bear
step
    .goto 37,72.653,60.323
    >>Clique em |cRXP_PICK_Um Corpo Meio Comido|r no chão
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    #label James
    .goto 37,78.87,67.20,10,0
    .goto 37,78.637,67.157
    >>Mate |cRXP_FRIENDLY_Tiago Ciríaco|r lá dentro. Saqueie-o para obter a |cRXP_LOOT_Cabeça de Tiago Ciríaco|r e a |T134939:0|t|cRXP_LOOT_[Agenda de Coleta de Ouro]|r
    >>|cRXP_WARN_Use a |T134939:0|t|cRXP_LOOT_[Agenda de Coleta de Ouro]|r para iniciar a missão|r
    .complete 26152,1 --James Clark's Head (1)
    .collect 1307,1,123,1 --Gold Pickup Schedule (1)
    .accept 123 >>Aceite O Coletor
    .mob James Clark
    .use 1307
--step
--    .goto 37,79.462,68.715
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Timberlain|r
--    .accept 83 >>Accept Fine Linen Goods
--    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .accept 5545 >>Aceite Um Feixe de Encrenca
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Pedrosa|r
    .turnin 26152 >>Entregue Procura-se: Tiago Ciríaco
    .turnin 123 >>Entregue O Coletor
    .accept 147 >>Aceite Perseguição Implacável
    .target Marshal Patterson
step
    #optional
    #completewith StoneCairn
    .goto 37,87.15,64.63,0
    .goto 37,81.56,58.15,0
    .goto 37,87.15,64.63,60,0
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Gray Forest Wolves|r
    >>Mate quaisquer |cRXP_ENEMY_Young Forest Ursos|r que você vir
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
    >>Pegue os |cRXP_LOOT_Feixes de Madeira|r no chão ao lado das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step
    .goto 37,79.795,55.510
    >>Clique em |cRXP_PICK_Cadáver de Rolf|r no chão
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
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
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Gray Forest Wolves|r
    >>Mate quaisquer |cRXP_ENEMY_Young Forest Ursos|r que você vir
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
    >>Pegue os |cRXP_LOOT_Feixes de Madeira|r no chão ao lado das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step
    #requires PTFrontier
    .goto 37,73.973,72.177
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    --.turnin 46 >> Turn in Bounty on Murlocs
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 59 >>Aceite Armadura de Pano e Couro
    .target Guard Thomas
--XX     #optional if above not skipped
step
    .goto 37,71.02,80.67
    >>Mate |cRXP_ENEMY_Morgan, o Coletor|r lá dentro. Saqueie-o para obter o |cRXP_LOOT_The Collector's Anel|r
    .complete 147,1 --The Collector's Ring (1)
    .mob Morgan the Collector
step
    .goto 37,79.462,68.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 59 >>Entregue Armadura de Pano e Couro
    .target Sara Timberlain
step
    .goto 37,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .turnin 5545 >>Entregue Um Feixe de Encrenca
    .target Supervisor Raelen
step
    .goto 37,81.860,66.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Pedrosa|r
    .turnin 147 >>Entregue Perseguição Implacável
    .target Marshal Patterson
    .isQuestComplete 147
step << Hunter
--TODO: COORDS
    .target Rallic Finn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricardo Fino|r
    >>Compre um |T135489:0|t[Arco Recurvo Laminado]
    .collect 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.6
step << Human
    #optional
    #completewith hs1
    .hs >>Use sua Pedra de Retorno para ir a Goldshire
    .cooldown item,6948,<0,1
step << Human
    #completewith hs1
    #xprate <1.2
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gus, o Veloz|r
    .fly Goldshire >>Voe para Goldshire
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gus, o Veloz|r
    .fly Gol'Bolar Quarry >>Voe para Gol'Bolar Pedreira
    .target Goss the Swift
    .cooldown item,6948,>0,1
step << Human
#xprate <1.2
    .goto 37,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 112 >>Entregue Coletando Alga
    .target William Pestle
    .isQuestComplete 112

step << Human
#xprate <1.2
    .goto 37,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 76 >>Entregue A Mina de Jaspe
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolotto, o Bravo|r
    .fly Stormwind >>Voe para Ventobravo << Rogue/Paladin/Warrior
    .fly Gol'Bolar Quarry >>Voe para Gol'Bolar Pedreira << !Rogue !Paladin !Warrior
	.target Bartlett the Brave
    .zoneskip Stormwind City
    .itemStat 16,QUALITY,<7
step << Human (Warrior/Paladin)
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Marcia Weller
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Marcia Weller
    .xp >11,1
    .xp <10,1
step << Human Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre um|r |T132402:0|t[Machadinha] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Marcia Weller
    .xp >12,1
    .xp <11,1
step <<Human (Warrior/Paladin)
    #optional
    #completewith end
    +|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje] |cRXP_WARN_na mão principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Human Rogue
    #optional
    #completewith end
    +|cRXP_WARN_Equipe a|r |T132402:0|t[Machadinha] |cRXP_WARN_em sua mão principal|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Human (Rogue/Paladin/Warrior)
    .goto 84,70.938,72.472,-1
    .goto 37,81.829,66.556,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r ou |cRXP_FRIENDLY_Gus, o Veloz|r
    .fly Gol'Bolar Quarry >>Voe para Gol'Bolar Pedreira
	.target Dungar Longdrink
    .zoneskip 27 --Dun Morogh
    .target Goss the Swift

step << Dwarf/Gnome
#completewith next
    .hs >>Vá para Kharanos
    .zoneskip Dun Morogh
step << Dwarf/Gnome
    .goto 27,54.733,50.815
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gremlock Pilsnor|r dentro da sala de fundo
    .turnin 6392 >>Entregue Fale Novamente com Gremlock
	.target Gremlock Pilsnor
--TODO: Training for dwarf/gnomes
step << Dwarf/Gnome
    .goto 27,53.802,52.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brolan Barbavento|r
    .fly Gol'Bolar Quarry >>Voe para Gol'Bolar Pedreira
	.target Brolan Galebeard
step << Human
    .abandon 26394 >>Abandone todas as missões de Elwynn Forest no registro de missões
step
#label end
.zone Dun Morogh >>Vá para Eastern Dun Morogh
]])
