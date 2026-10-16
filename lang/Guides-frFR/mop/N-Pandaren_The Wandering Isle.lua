if GetLocale() ~= "frFR" then return end
local _,addon = ...
if addon.player.race ~= "Pandaren" then return end

RXPGuides.RegisterGuide([[
#mop
#version 1
#group RXP Départ Région (Pandaren)
#name 1-12 L'île Vagabonde
#next RXP Cataclysme 1-80 (A)\10-20 Loch Modan;RXP Cataclysme 1-80 (H)\10-22 Azshara;RXP MoP 1-80 (A)\10-20 Loch Modan;RXP MoP 1-80 (H)\10-22 Azshara;skip


<< Pandaren !DK

step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .accept 30034 >>Acceptez la quête La leçon du rameau de fer << Hunter
    .accept 30027 >>Acceptez la quête La leçon du rameau de fer << Priest/Monk
    .accept 30033 >>Acceptez la quête La leçon du rameau de fer << Mage
    .accept 30037 >>Acceptez la quête La leçon du rameau de fer << Shaman
    .accept 30038 >>Acceptez la quête La leçon du rameau de fer << Warrior
    .accept 30036 >>Acceptez la quête La leçon du rameau de fer << Rogue
	.target Master Shang Xi
step << Hunter
    .isOnQuest 30034
    .goto 378,57.22,19.22
    >>Cliquez sur le |cRXP_PICK_Weapon Rack|r pour l'|T537025:0|t[Arbalète de recrue]
    .collect 73211,1 --Trainee's Crossbow (1)
step << Hunter
    .goto 378,57.22,19.22
    >>Équipez l'|T537025:0|t[Arbalète de recrue]
    .complete 30034,1 --1/1 Loot and Equip a Trainee's Crossbow
    .use 73211 --Trainee's Crossbow
step << Mage
    .isOnQuest 30033
    .goto 378,57.22,19.22
    >>Cliquez sur le |cRXP_PICK_Weapon Rack|r pour la |T537771:0|t[Sorcelame de recrue] et l'|T654237:0|t[Éventail à main de recrue]
    .collect 76390,1 --Trainee's Spellblade (1)
    .collect 76392,1, --Trainee's Hand Fan (1)
step << Mage
    .goto 378,57.22,19.22
    >>Équipez l'|T537771:0|t[Sorcelame de recrue] et l'|T654237:0|t[Éventail à main de recrue]
    .complete 30033,1 --Loot and Equip a Trainee's Spellblade (1)
    .complete 30033,2 --Loot and Equip a Trainee's Hand Fan (1)
    .use 76390 --Trainee's Spellblade
    .use 76392 --Trainee's Hand Fan
step << Monk/Priest
    .isOnQuest 30027
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Cliquez sur le|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_pour le|r |T537770:0|t[Bâton de recrue]
    .collect 73209,1 -Trainee's Staff (1)
step << Monk/Priest
    .goto 378,56.67,18.20
    >>Équipez le |T537770:0|t[Bâton de recrue]
    .complete 30027,1 --Loot and Equip a Trainee's Staff
    .use 73209
step << Shaman
    .isOnQuest 30037
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Cliquez sur le|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_pour la|r |T537205:0|t[Hache de recrue] |cRXP_WARN_et le|r |T537769:0|t[Bouclier de recrue]
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1 --Trainee's Shield (1)
step << Shaman
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Équipez la|r |T537205:0|t[Hache de recrue] |cRXP_WARN_et le|r |T537769:0|t[Bouclier de recrue]
    .complete 30037,1 --Loot and Equip a Trainee's Axe
    .complete 30037,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Cliquez sur le|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_pour la|r |T537205:0|t[Hache de recrue] |cRXP_WARN_et le|r |T537769:0|t[Bouclier de recrue]
    .collect 76391,1  --Trainee's Axe (1)
    .collect 73213,1  --Trainee's Shield (1)
step << Warrior
    .isOnQuest 30038
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Équipez la|r |T537205:0|t[Hache de recrue] |cRXP_WARN_et le|r |T537769:0|t[Bouclier de recrue]
    .complete 30038,1 --Loot and Equip a Trainee's Axe
    .complete 30038,2 --Loot and Equip a Trainee's Shield
    .use 76391 --Trainee's Axe
    .use 73213 --Trainee's Shield
step << Rogue
    .isOnQuest 30036
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Cliquez sur le|r |cRXP_PICK_Weapon Rack|r |cRXP_WARN_pour les|r |T537767:0|t[Trainee's Dagues]
    .collect 73208,1,30036,1,1 --Trainee's Dagger (ID 1)
    .collect 73212,1,30036,1,1 --Trainee's Dagger (ID 2)
step << Rogue
    .goto 378,57.22,19.22
    >>|cRXP_WARN_Équipez les|r |T537767:0|t[Trainee's Dagues]
    .complete 30036,1 --Loot and Equip a Trainee's Dagger
    .complete 30036,2 --Loot and Equip a Second Trainee's Dagger
    .use 73208 --Trainee's Dagger (ID 1)
    .use 73212 --Trainee's Dagger (ID 2)
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 30034 >>Rendez la quête La leçon du rameau de fer << Hunter
    .turnin 30033 >>Rendez la quête La leçon du rameau de fer << Mage
    .turnin 30027 >>Rendez la quête La leçon du rameau de fer << Priest/Monk
    .turnin 30037 >>Rendez la quête La leçon du rameau de fer << Shaman
    .turnin 30038 >>Rendez la quête La leçon du rameau de fer << Warrior
    .turnin 30036 >>Rendez la quête La leçon du rameau de fer << Rogue
    .accept 29406 >>Acceptez la quête La leçon du poing de sable
	.target Master Shang Xi
step
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.49,18.64,10,0
    .goto 378,57.12,19.43,10,0
    .goto 378,57.31,18.97
    >>Tuez les |cRXP_ENEMY_Cibles d’entraînement|r.
    .complete 29406,1 --5/5 Training Targets destroyed
	.mob Training Target
step
    .goto 378,56.67,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 29406 >>Rendez la quête La leçon du poing de sable
    .accept 29524 >>Acceptez la quête La leçon de la fierté ravalée
	.target Master Shang Xi
step
    #completewith next
    --#title |cFFFCDC00Enter the house|r
    .goto 378,59.57,19.05,10 >>Entrez dans la maison
step
    .goto 378,60.26,19.35
    >>Battez |cRXP_ENEMY_Sparring Trainees|r
    *|cRXP_WARN_Il y en a d'autres au-dessus|r
    .complete 29524,1 --6/6 Sparring Trainees defeated
	.mob Tushui Trainee
	.mob Huojin Trainee
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 29524 >>Rendez la quête La leçon de la fierté ravalée
    .accept 29408 >>Acceptez la quête La leçon du parchemin brûlant
	.target Master Shang Xi
step
    .isOnQuest 29408
    .goto 378,59.97,18.58,8,0
    .goto 378,60.48,18.85,5,0
    .goto 378,60.20,18.89,5,0
    .goto 378,59.98,18.69,5,0
	.goto 378,60.46,19.60,8 >>Montez à l'étage
    >>|cRXP_WARN_Prenez le raccourci vers l'étage supérieur en sautant par l'écart sous la deuxième série d'escaliers|r
step
    .goto 378,59.95,20.39
    >>Cliquez sur la |cRXP_PICK_Banner|r au sommet du bâtiment
    .complete 29408,2 --1/1 Burn the Edict of Temperance
step
	#completewith next
    --#title |cFFFCDC00Jump down|r
    .goto 378,60.19,19.35,6 >> |cRXP_WARN_Sautez en bas|r
step
    .goto 378,59.67,19.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 29408 >>Rendez la quête La leçon du parchemin brûlant
    .accept 29409 >>Acceptez la quête Le défi du disciple
	.target Master Shang Xi
step
    .goto 378,67.78,22.75
    >>Battez |cRXP_ENEMY_Jaomin Ro|r
    .complete 29409,1 --1/1 Defeat Jaomin Ro
	.mob Jaomin Ro
step << Warrior
	#completewith Lorvo
    +|cRXP_WARN_Utilisez|r |T132337:0|t[À la charge !] |cRXP_WARN_sur les petites créatures pour vous déplacer plus vite|r
step
    .goto 378,65.97,22.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 29409 >>Rendez la quête Le défi du disciple
    .accept 29410 >>Acceptez la quête Aysa la Tushui
	.target Master Shang Xi
step
    #completewith next
    .goto 378,55.09,32.83,50 >>Voyagez vers |cRXP_FRIENDLY_Marchand Lorvo|r
step
	#label Lorvo
    .goto 378,55.09,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marchand Lorvo|r
    .turnin 29410 >>Rendez la quête Aysa la Tushui
    .accept 29419 >>Acceptez la quête Le conducteur disparu
    .accept 29424 >>Acceptez la quête Des denrées d’une importance capitale
	.target Merchant Lorvo
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Amberleaf Scamps|r. Ramassez-les pour |T132622:0|t[|cRXP_LOOT_Stolen Entraînement Fournitures|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.mob Amberleaf Scamp
step
    .goto 378,54.11,20.90
    --#title |cFFFCDC00Follow the arrow to |cFF00FF25Min Dimwind|r|r
    >>Rendez-vous vers |cRXP_FRIENDLY_Min Petit Vent|r
    .complete 29419,1 --1/1 Rescue the Cart Driver
	.target Min Dimwind
step
    #loop
    .goto 378,53.08,31.58,0
    .goto 378,54.03,20.93,15,0
    .goto 378,54.02,17.44,15,0
    .goto 378,53.00,20.17,15,0
    .goto 378,52.89,24.41,20,0
    .goto 378,55.04,24.93,20,0
    .goto 378,53.08,31.58,20,0
    >>Tuez |cRXP_ENEMY_Amberleaf Scamps|r et ramassez-les pour |T132622:0|t[|cRXP_LOOT_Stolen Entraînement Fournitures|r]
    .complete 29424,1 --6/6 Stolen Training Supplies
	.target Amberleaf Scamp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Marchand Lorvo|r et |cRXP_FRIENDLY_Aysa Poète des Nuages|r
    .turnin 29419,2 >>Rendez la quête Le conducteur disparu
    .turnin 29424 >>Rendez la quête Des denrées d’une importance capitale
	.target +Merchant Lorvo
    .goto 378,55.11,32.40
    .accept 29414 >>Acceptez la quête La voie des Tushui
    .goto 378,55.10,32.55
	.target +Aysa Cloudsinger
step
	#completewith next
    --#title |cFFFCDC00Enter the cave|r
    .goto 378,57.21,31.04,30,0
    .goto 378,57.63,35.20,10 >> Entrez dans la grotte
	.timer 87,RP de la grotte
step
    .goto 378,57.89,36.55
    >>Défendez |cRXP_FRIENDLY_Aysa|r des |cRXP_ENEMY_Amberleaf Troublemakers|r qui arrivent
    .complete 29414,1 --1/1 Protect Aysa while she meditates
	.mob Amberleaf Troublemaker
--step
--    #title Advanced
--    .isOnQuest 29414
--    >>|cFFFF0000Try out find out|r.
--    .goto 378,57.52,34.59,5 >>|cRXP_WARN_Staying near the entrance is faster but more dangerous|r
step
    .goto 378,57.54,34.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 29414 >>Rendez la quête La voie des Tushui
    .accept 29522 >>Acceptez la quête Ji le Huojin
	.target Master Shang Xi
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    .turnin 29522 >>Rendez la quête Ji le Huojin
    .accept 29417 >>Acceptez la quête La voie des Huojin
	.target Ji Firepaw
step
    #loop
    .goto 378,51.18,17.71,0
    .goto 378,51.18,17.71,30,0
    .goto 378,49.56,18.31,30,0
    .goto 378,49.49,20.13,30,0
    .goto 378,49.23,24.48,30,0
    .goto 378,49.90,23.37,30,0
    .goto 378,46.12,20.46,30,0
    >>Tuez |cRXP_ENEMY_Fe-Feng|r
    .complete 29417,1 --8/8 Fe-Feng attackers slain
	.mob Fe-Feng Hozen
    .mob Fe-Feng Brewthief
    .mob Fe-Feng Leaper
step
    .goto 378,50.24,21.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    .turnin 29417 >>Rendez la quête La voie des Huojin
    .accept 29418 >>Acceptez la quête Raviver la flamme
    .accept 29523 >>Acceptez la quête Attiser les flammes
	.target Ji Firepaw
step << skip
    .isOnQuest 29523
    #completewith Fluttering Breeze
    +|cRXP_WARN_Pour activer la liaison de touches pour les objets de quête, suivez ces étapes:|r
    *[1] Appuyez sur la |cRXP_WARN_Escape key|r.
    *[2] Sélectionnez les |cRXP_WARN_Options|r.
    *[3] Accédez à |cRXP_WARN_Keybindings|r.
    *[4] Dans |cRXP_WARN_Keybindings|r, trouvez |cRXP_WARN_RestedXP Guides|r
    *[5] Sélectionnez et liez les |cRXP_WARN_Active Boutons|r.
step
#optional
    #completewith next
	>>Ramassez |cRXP_PICK_Loose Dogwood Racines|r par terre, à côté des arbres
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    .goto 378,47.24,31.32
	>>|cRXP_WARN_Utilisez le|r |T519378:0|t[Vent Pierre] |cRXP_WARN_au Sanctuaire pour invoquer un|r |cRXP_ENEMY_Air vivant|r
    >>Tuez-le et ramassez-le pour un |T463565:0|t[|cRXP_LOOT_Fluttering Breeze|r]
    .complete 29523,1 --1/1 Fluttering Breeze
    .use 72109
	.mob Living Air
step
    #loop
    .goto 378,47.98,31.97,0
    .goto 378,47.98,31.97,10,0
    .goto 378,46.07,27.94,10,0
    .goto 378,48.99,30.16,10,0
    .goto 378,46.83,34.88,10,0
    .goto 378,46.04,33.12,10,0
    .goto 378,46.17,27.09,10,0
    .goto 378,48.31,29.58,10,0
    .goto 378,50.06,31.41,10,0
    .goto 378,48.90,33.14,10,0
    .goto 378,49.58,36.46,10,0
    .goto 378,46.86,35.05,10,0
    .goto 378,46.01,33.12,10,0
    >>Ramassez |cRXP_PICK_Loose Dogwood Racines|r par terre, à côté des arbres
    .complete 29418,1 --5/5 Dry Dogwood Root
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte-de-Feu|r et |cRXP_FRIENDLY_Shang Xi|r
    .turnin 29418 >>Rendez la quête Raviver la flamme
    .turnin 29523 >>Rendez la quête Attiser les flammes
	.target +Ji Firepaw
    .goto 378,50.24,21.26
    .accept 29420 >>Acceptez la quête L’esprit du gardien
    .goto 378,50.29,21.47
	.target +Master Shang Xi
step
   --#title |cFFFCDC00Enter the cave|r
    .goto 378,41.09,24.83,10 >> Entrez dans la grotte
    .isOnQuest 29420
step
    .goto 378,40.75,23.86,10,0
    .goto 378,40.84,22.19,10,0
    .goto 378,40,22.77,10,0
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maître Li Fei|r
    >>|cRXP_WARN_Esquivez les geysers de feu en route|r
    .turnin 29420 >>Rendez la quête L’esprit du gardien
    .accept 29664 >>Acceptez la quête Les feux du compétiteur
	.target Master Li Fei
 step
    >>Cliquez sur les |cRXP_PICK_Braziers|r
    .complete 29664,1 --1/1 Challenger Torch lit
    .goto 378,38.71,25.39
    .complete 29664,4 --1/1 Violet Brazier lit
    .goto 378,38.25,24.87
    .complete 29664,2 --1/1 Red Brazier lit
    .goto 378,38.99,23.50
    .complete 29664,3 --1/1 Blue Brazier lit
    .goto 378,39.19,25.41
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maître Li Fei|r
    .turnin 29664 >>Rendez la quête Les feux du compétiteur
    .accept 29421 >>Acceptez la quête Seul le mérite donne droit de passage
	.target Master Li Fei
step
    .goto 378,38.81,25.50
    >>|cRXP_WARN_Défaite |cRXP_ENEMY_Maître Li Fei|r en réduisant sa santé à 20 %|r
    .complete 29421,1 --1/1 Defeat Master Li Fei
	.mob Master Li Fei
step
    .goto 378,38.81,25.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Maître Li Fei|r
    .turnin 29421,2 >>Rendez la quête Seul le mérite donne droit de passage
    .accept 29422 >>Acceptez la quête Huo, l’esprit du feu
	.target Master Li Fei
step
    --#title |cFFFCDC00Run up the ramp.|r Use |T133662:0|t[Huo's Offerings]
    .goto 378,39.41,29.55
	.cast 102522 >>|cRXP_WARN_Utilisez|r |T133662:0|t[Huo's Offerings] |cRXP_WARN_sur|r |cRXP_FRIENDLY_Huo|r
	.timer 11,RP de Huo, l’esprit du feu
	.use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>Attendez que le RP se termine
    .complete 29422,1 --1/1 Reignite the Spirit of Fire
    .use 72583
    .target Huo
    .isOnQuest 29422
step
    .goto 378,39.41,29.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Huo|r
    .turnin 29422 >>Rendez la quête Huo, l’esprit du feu
    .accept 29423 >>Acceptez la quête La passion selon Shen Zin Su
	.target Huo
step
    --#title |cFFFCDC00Leave the cave|r
    .goto 378,40.12,25.50,20,0
    .goto 378,41.48,25.05,20,0
    .goto 378,42.0,25.29
    .subzone 5849,1 >>Quittez la grotte
step
	#completewith next
    --#title |cFFFCDC00Follow the arrow|r
    .goto 378,51.04,30.62,20,0
    .goto 378,51.89,35.93,20,0
    .goto 378,50.12,38.94,15,0
    .goto 378,50.32,37.48,20,0
    .goto 378,51.58,40.46
    .subzone 5820 >> Rendez-vous au |cRXP_WARN_Temple des Cinq matins|r
step
    .goto 378,51.41,46.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 29423 >>Rendez la quête La passion selon Shen Zin Su
    .accept 29521 >>Acceptez la quête Les bassins Chantants
	.target Master Shang Xi
step
    .isOnQuest 29521
    .goto 378,51.83,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Cheng Scribe du Matin|r
    .home >>Liez votre Pierre de foyer au Temple des Cinq matins
	.target Cheng Dawnscrive
step
    #completewith SingingPools
    .subzone 5826 >>Rendez-vous aux Bassins Chantants
step
    .isOnQuest 29521
    .goto 378,53.22,47.45,10,0
    .goto 378,57.12,46.63,10,0
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tailleur de bois Dewei|r
    .train 2366 >> Apprenez l'Herboristerie
    .target Whittler Dewei
    .skipgossipid 112959
    .skipgossipid 130364
    .skipgossipid 112911
step
    .isOnQuest 29521
    .goto 378,63.12,41.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Tailleur de bois Dewei|r
    .train 2575 >> Apprenez le Minage
	.target Whittler Dewei
    .skipgossipid 130364
    .skipgossipid 112912
    .skipgossipid 112975
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jojo Front de Fer|r
    .accept 29662 >>Acceptez la quête Plus fort que le roseau
	.target Jojo Ironbrow
step
    #completewith JumpOnPole
    +|cRXP_WARN_Les nœuds de Minage/Herboristerie rapportent 1 mob en valeur d'expérience cette expansion, n'oubliez pas de collecter les nœuds à proximité. Vous pouvez collecter tous les types de nœuds indépendamment de votre compétence professionnelle|r
step
    #completewith next
    +|cRXP_WARN_Dans cette zone, certaines eaux vous transforment en animal, augmentant votre vitesse de déplacement|r
step
    #label SingingPools
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aysa Poète des Nuages|r.
    .turnin 29521 >>Rendez la quête Les bassins Chantants
    .accept 29661 >>Acceptez la quête La Leçon de la fourrure sèche
    .accept 29663 >>Acceptez la quête La leçon du rocher en équilibre
	.target Aysa Cloudsinger
step
    #completewith RingTrainingBell
	>>Tuez les |cRXP_ENEMY_Moines tushui|r sur les pôles
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    .isOnQuest 29663
    .isQuestNotComplete 29663
    #label JumpOnPole
    .goto 378,63.37,45.17
	.vehicle >> Cliquez sur un |cRXP_FRIENDLY_Balance Pole|r |cRXP_WARN_pendant que vous n'êtes pas dans l'eau/êtes une grenouille|r
step
    #label RingTrainingBell
    .goto 378,61.41,47.81
    >>|cRXP_WARN_Cliquez sur |cRXP_FRIENDLY_Balance Poles|r pour sauter vers le|r |cRXP_PICK_Training Bell|r
    >>Cliquez sur la |cRXP_PICK_Training Bell|r
    .complete 29661,1 --1/1 Ring the Training Bell
step
    #completewith next
    >>Ramassez la |cRXP_PICK_Hard Tearwood Reed|r au sol
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    #loop
    .goto 378,63.22,45.17,0
    .goto 378,63.22,45.17,20,0
    .goto 378,62.25,50,15,0
    .goto 378,60.43,48.97,15,0
    .goto 378,62.22,44.33,15,0
	>>Tuez les |cRXP_ENEMY_Moines tushui|r sur les pôles
    .complete 29663,1 --6/6 Defeat Tushui Monks
	.mob Tushui Monk
step
    #completewith next
    --#title |cFFFCDC00Exit the vehicle|r
    .exitvehicle >>|cRXP_WARN_Quittez le véhicule|r
    .macro Leave Vehicle,6656430 >>Sortez du véhicule
step
    #loop
    .goto 378,62.85,49.06,0
    .goto 378,62.85,49.06,20,0
    .goto 378,60.53,49.31,20,0
    .goto 378,60.82,45.70,20,0
    >>Ramassez la |cRXP_PICK_Hard Tearwood Reed|r au sol
    *|cRXP_WARN_Si vous restez au bord alors les |cRXP_ENEMY_Whitefeather Cranes|r ne vous attaqueront pas|r
    .complete 29662,1 --8/8 Hard Tearwood Reed
step
    .goto 378,63.50,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jojo Front de Fer|r
    .turnin 29662 >>Rendez la quête Plus fort que le roseau
	.target Jojo Ironbrow
step
    .goto 378,65.59,42.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aysa Poète des Nuages|r.
    .turnin 29661 >>Rendez la quête La Leçon de la fourrure sèche
    .turnin 29663 >>Rendez la quête La leçon du rocher en équilibre
    .accept 29676 >>Acceptez la quête À la recherche d’un vieil ami
	.target Aysa Cloudsinger
step
    #completewith next
    +|cRXP_WARN_Dans cette zone, les bassins d'eau pourpre vous transforment en animal, augmentant votre vitesse de déplacement|r
step
    .goto 378,72.15,37.88,13,0
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le vieux Liang|r
    .turnin 29676 >>Rendez la quête À la recherche d’un vieil ami
    .accept 29666 >>Acceptez la quête Un apprentissage douloureux
    .accept 29677 >>Acceptez la quête La perle du soleil
	.target Old Man Liang
step
    #loop
    .goto 378,74.94,38.46,30,0
    .goto 378,72.21,46.53,30,0
    .goto 378,71.47,52.26,30,0
    >>Tuez |cRXP_ENEMY_Water Pinces|r
    .complete 29666,1 --6/6 Water Pincer slain
    .mob Water Pincer
step
    .goto 378,76.21,46.87
    >>Cliquez sur la |cRXP_PICK_Ancient Palourde|r sous l'eau
    >>|cRXP_WARN_Vous n'avez pas besoin de tuer|r |cRXP_ENEMY_Fang She|r
    .complete 29677,1 --1/1 Sun Pearl
    .mob Fang-she
step
    .goto 378,78.47,42.85
    .goto 378,70.62,38.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Le vieux Liang|r
    >>|cRXP_WARN_Si pour une raison quelconque vous ne pouvez pas trouver le donneur de quête, retournez à sa maison à l'ouest|r
    .turnin 29666 >>Rendez la quête Un apprentissage douloureux
    .turnin 29677 >>Rendez la quête La perle du soleil
    .accept 29678 >>Acceptez la quête Shu, l’esprit de l’eau
	.target Old Man Liang
step
	.isOnQuest 29678
    .goto 378,79.66,41.83,4,0
    .goto 378,79.61,38.72
    >>Passez sur les cercles brillants
    >>|cRXP_WARN_Cela vous permettra de sauter vers la piscine|r
    .complete 29678,1 --1/1 Cross to the Pool of Reflection
step
    .goto 378,79.59,38.58
    >>|cRXP_WARN_Utilisez le|r |T463854:0|t[Soleil Pearl] |cRXP_WARN_sur la|r |cRXP_WARN_surface de l'eau|r
    .complete 29678,2 --1/1 Coax Shu, the Water Spirit
    .use 73791
step
    .goto 378,79.82,39.31
    >>Cliquez sur la quête qui apparaît dans votre suivi de quête
    .turnin 29678 >>Rendez la quête Shu, l’esprit de l’eau
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aysa Poète des Nuages|r.
    .accept 29679 >>Acceptez la quête Un nouvel ami
	.target Aysa Cloudsinger
step
    .goto 378,79.11,37.77
    >>Suivez |cRXP_FRIENDLY_Shu|r de près tandis qu'il se déplace
    >>|cRXP_WARN_Déplacez-vous sur l'eau qui jaillit à côté de lui|r
    .complete 29679,1 --5/5 Play with the Spirit of Water
	.target Shu
step
    .goto 378,79.82,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aysa Poète des Nuages|r.
    .turnin 29679 >>Rendez la quête Un nouvel ami
    .accept 29680 >>Acceptez la quête La source de notre existence
	.target Aysa Cloudsinger
step
    .goto 378,76.57,57.36,40,0
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
	>>|cRXP_WARN_Le |cRXP_PICK_Chariot de livraison|r est plus lent que la course à pied|r
    .turnin 29680 >>Rendez la quête La source de notre existence
    .accept 29769 >>Acceptez la quête Les petites canailles
    .target Ji Firepaw
step
    .goto 378,68.13,66.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gao Souffle d'Eté|r
    .accept 29770 >>Acceptez la quête Toujours mangeable !
	.target Gao Summerdraft
step
	#completewith Carrots
    >>Tuez |cRXP_ENEMY_Plump Virmens|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
    .mob Plump Carrotcatcher
step
	.goto 378,70.11,77.63,0
    .goto 378,70.11,77.63,15,0
    .goto 378,69.55,79.23,15,0
    .goto 378,70.84,80.41,15,0
    .goto 378,71.46,78.11,15,0
#loop
	.line 378,70.11,77.63,69.55,79.23,70.84,80.41,71.46,78.11
	.goto 378,70.11,77.63,10,0
	.goto 378,69.55,79.23,10,0
	.goto 378,70.84,80.41,10,0
	.goto 378,71.46,78.11,10,0
    >>Ramassez les |cRXP_PICK_Navets déracinés|r sur le sol
    .complete 29770,1 --3/3 Uprooted Turnip
step
	.goto 378,78.60,69.75,0
    .goto 378,75.54,72.25,20,0
    .goto 378,77.79,71.81,20,0
    .goto 378,78.01,72.56,15,0
    .goto 378,78.85,70.76,20,0
    .goto 378,78.6,69.74,20,0
#loop
	.line 378,77.35,70.51,78.12,72.61,78.82,70.88,78.6,69.75
	.goto 378,77.35,70.51,10,0
	.goto 378,78.12,72.61,10,0
	.goto 378,78.82,70.88,10,0
	.goto 378,78.60,69.75,10,0
    >>Ramassez les |cRXP_PICK_Citrouilles chapardées|r sur le sol
    .complete 29770,3 --3/3 Pilfered Pumpkin
step
	.isOnQuest 29770
    .goto 378,77.05,71.02,10 >> Entrez dans la grotte
step
	#label Carrots
	.goto 378,74.70,74.76,0
    .goto 378,76.1,71.26,15,0
    .goto 378,75.57,72.94,15,0
    .goto 378,73.97,72.58,15,0
    .goto 378,73.94,70.86,15,0
    .goto 378,74.7,74.76,15,0
#loop
	.line 378,73.97,72.58,73.94,70.86,74.7,74.76
	.goto 378,73.97,72.58,5,0
	.goto 378,73.94,70.86,5,0
	.goto 378,74.70,74.76,5,0
    >>Tuez |cRXP_ENEMY_Plump Carrotcrunchers|r. Dépouillez-les pour leurs |cRXP_LOOT_Carrots|r
    >>|cRXP_WARN_Vous pouvez aussi ramasser le|r |cRXP_PICK_Carrots|r |cRXP_WARN_sur le sol|r
    .complete 29770,2 --3/3 Stolen Carrot
	.mob Plump Carrotcruncher
step
	.isOnQuest 29770
    .goto 378,74.99,69.42,10 >> Quittez la grotte
step
	.goto 378,77.85,71.75,0
    .goto 378,74.73,67.2,15,0
    .goto 378,72.67,69.48,15,0
    .goto 378,70.75,71.61,15,0
    .goto 378,69.4,69.74,15,0
#loop
	.line 378,77.89,70.13,77.36,70.49,77.85,71.75
	.goto 378,77.89,70.13,10,0
	.goto 378,77.36,70.49,10,0
	.goto 378,77.85,71.75,10,0
    >>Tuez |cRXP_ENEMY_Plump Virmens|r
    .complete 29769,1 --10/10 Plump Virmen slain
	.mob Plump Virmen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Gao Souffle d'Eté|r, |cRXP_FRIENDLY_Ji Patte-de-Feu|r et |cRXP_FRIENDLY_Jojo Front de Fer|r
    .turnin 29770 >>Rendez la quête Toujours mangeable !
	.target +Gao Summerdraft
    .goto 378,68.13,66.40
    .turnin 29769 >>Rendez la quête Les petites canailles
    .accept 29768 >>Acceptez la quête Maillet manquant
	.target +Ji Firepaw
	.goto 378,68.89,64.98
    .accept 29771 >>Acceptez la quête Plus fort que le bois
	.target +Jojo Ironbrow
    .goto 378,69.16,66.71
step
	#completewith next
	>>Ramassez les |cRXP_PICK_Planches de bois|r sur le sol
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    .goto 378,62.63,77.05
	>>Ramassez le |cRXP_PICK_Mallet|r sur le tonneau
    >>|cRXP_WARN_Vous n'avez pas à tuer |cRXP_ENEMY_Raggis|r si vous pouvez l'éviter|r
    .complete 29768,1 --1/1 Dai-Lo Recess Mallet
step
    #loop
    .goto 378,63.77,77.19,0
    .goto 378,63.77,77.19,15,0
    .goto 378,63.27,79.16,15,0
    .goto 378,62.94,79.04,15,0
    .goto 378,62.19,81.08,15,0
	>>Ramassez les |cRXP_PICK_Planches de bois|r sur le sol
    .complete 29771,1 --12/12 Discarded Wood Plank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jojo Front de Fer|r et |cRXP_FRIENDLY_Ji Patte-de-Feu|r
    .turnin 29771 >>Rendez la quête Plus fort que le bois
    .target +Jojo Ironbrow
    .goto 378,69.16,66.71
    .turnin 29768 >>Rendez la quête Maillet manquant
    .accept 29772 >>Acceptez la quête Réveil en fanfare
    .target +Ji Firepaw
	.goto 378,68.89,64.98
step
    .goto 378,68.95,64.80
    >>Cliquez sur le |cRXP_PICK_Gong|r
    .complete 29772,1 --1/1 Ring the town gong
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    .turnin 29772 >>Rendez la quête Réveil en fanfare
    .accept 29774 >>Acceptez la quête On avait dit pas la figure !
	.target Ji Firepaw
step
    .goto 378,68.98,62.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shu|r.
    .complete 29774,1 --1/1 Ask Shu for help
	.timer 15,RP
	.target Shu
    .skipgossip
step
    .goto 378,68.89,64.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    >>Attendez que le RP se termine
    .turnin 29774 >>Rendez la quête On avait dit pas la figure !
    .accept 29775 >>Acceptez la quête L’esprit et le corps de Shen Zin Su
	.target Ji Firepaw
step
	.isOnQuest 29775
    .goto 378,58.86,63.38,40,0
    .goto 378,55.23,58.57,40,0
    .goto 378,51.48,57.40,20 >>Rendez-vous au Temple des Cinq Aurores
	>>|cRXP_WARN_Le |cRXP_PICK_Chariot de livraison|r est plus lent que la course à pied|r
    .subzoneskip 5820--temple of five dawns
step
    .goto 378,51.59,48.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 29775 >>Rendez la quête L’esprit et le corps de Shen Zin Su
    .accept 29776 >>Acceptez la quête Brise-du-Matin
	.timer 20,RP de Brise-du-Matin
	.target Master Shang Xi
step
    .isOnQuest 29776
    .goto 378,51.46,48.93,7 >>Attendez que le RP se termine
step
    #completewith next
    .subzoneskip 5830
	.isOnQuest 29776
    .goto 378,51.01,49.05,10,0
    .goto 378,40.19,50.79,20,0
    .goto 378,34.91,50.73,15,0
    .goto 378,33.1,42.6,15,0
    .goto 378,30.42,37.50,20 >>Rendez-vous à |cRXP_WARN_Brise-du-Matin|r
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    .turnin 29776 >>Rendez la quête Brise-du-Matin
    .accept 29778 >>Acceptez la quête Sagesses réécrites
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jojo Front de Fer|r
    .accept 29783 >>Acceptez la quête Plus fort que la pierre
	.target Jojo Ironbrow
step
    .goto 378,31.78,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ancien Shaopai|r
    .accept 29777 >>Acceptez la quête Les outils de l’ennemi
	.target Elder Shaopai
step
    .isOnQuest 29777
    #completewith Defaced Scroll of Wisdom burned
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shen Tailleur de Pierres|r
    .vendor >>|cRXP_WARN_Vendez et réparez si vous en avez besoin|r
    .target Shen Stonecarver
step
    #completewith Defaced Scroll of Wisdom burned
    >>Tuez |cRXP_ENEMY_Fe-Feng Wisemans|r. Ramassez-les pour leurs |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    #completewith Defaced Scroll of Wisdom burned
    >>Ramassez les |cRXP_PICK_Blocs de Pierre|r sur le sol
    .complete 29783,1 --12/12 Abandoned Stone Block
step
	.goto 378,28.71,50.23,0
    .goto 378,30.3,42.95,15,0
    .goto 378,29.49,45.36,15,0
    .goto 378,29.11,47.53,15,0
    .goto 378,29.78,47.67,15,0
    .goto 378,29.21,48.57,15,0
    .goto 378,28.37,49.37,15,0
    .goto 378,27.16,49.67,15,0
    .goto 378,28.54,49.93,15,0
    .goto 378,29.12,51.09,15,0
    .goto 378,31.19,47.97,15,0
    .goto 378,32.49,46.63,15,0
    .goto 378,33.13,46.32,15,0
#loop
	.line 378,33.42,50.88,32.57,53.31,28.71,50.23
	.goto 378,33.42,50.88,15,0
	.goto 378,32.57,53.31,15,0
	.goto 378,28.71,50.23,15,0
    #label Defaced Scroll of Wisdom burned
    >>Cliquez sur les |cRXP_PICK_Bannières|r sur les monuments
    .complete 29778,1 --5/5 Defaced Scroll of Wisdom burned
step
    #completewith next
    >>Tuez |cRXP_ENEMY_Fe-Feng Wisemans|r. Ramassez-les pour leurs |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
	.goto 378,31.32,52.22,0
    .goto 378,31.18,47.97,15,0
    .goto 378,32.57,46.43,15,0
    .goto 378,33.66,47.21,15,0
    .goto 378,33.99,50.9,15,0
    .goto 378,33.06,52.27,15,0
    .goto 378,32.16,50.53,15,0
    .goto 378,31.32,52.22,15,0
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>Ramassez les |cRXP_PICK_Blocs de Pierre|r sur le sol
    .complete 29783,1 --12/12 Abandoned Stone Block
step
#loop
	.line 378,31.18,47.9,32.57,46.43,33.99,50.9,32.16,50.53,31.32,52.22
	.goto 378,31.32,52.22,0
	.goto 378,31.18,47.90,15,0
	.goto 378,32.57,46.43,15,0
	.goto 378,33.99,50.90,15,0
	.goto 378,32.16,50.53,15,0
	.goto 378,31.32,52.22,15,0
    >>Tuez |cRXP_ENEMY_Fe-Feng Wisemans|r. Ramassez-les pour leurs |cRXP_LOOT_Brushes|r
    .complete 29777,1 --8/8 Paint Soaked Brush
	.mob Fe-Feng Wiseman
step
    .goto 378,31.751,39.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ancien Shaopai|r
    .target Elder Shaopai
    .turnin 29777 >>Rendez la quête Les outils de l’ennemi
step
    .goto 378,29.969,39.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jojo Front de Fer|r
    .target Jojo Ironbrow
    .turnin 29783 >>Rendez la quête Plus fort que la pierre
step
    .goto 378,30.950,36.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    .target Ji Firepaw
    .turnin 29778 >>Rendez la quête Sagesses réécrites
    .accept 29779 >>Acceptez la quête La solution directe
    .accept 29780 >>Acceptez la quête Le plus sage est celui qui sait vaincre sans combat
    .accept 29781 >>Acceptez la quête Mise en garde pyrotechnique
step
	.isOnQuest 29779
    .goto 378,29.28,39.98,15,0
    .goto 378,27.42,36.25,30,0
    .goto 378,26.42,33.68,30 >> Rendez-vous à |cRXP_WARN_Jade Pilier|r
step
	#completewith RukRuk
	>>Tuez |cRXP_ENEMY_Hozen fe-feng|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
    .goto 378,26.42,33.68
    >>Cliquez sur |cRXP_FRIENDLY_Jade Pilier|r
    .accept 29782 >>Acceptez la quête Plus fort que l’os
step
    #completewith FeFeng
	>>Ramassez les |cRXP_PICK_Feux d'artifice volés|r sur le sol
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
    #label RukRuk
    .goto 378,26.08,35.17,15,0
    .goto 378,20.94,34.43
	>>Tuez |cRXP_ENEMY_Ruk-Ruk|r
    .complete 29780,1 --1/1 Ruk-Ruk slain
	.mob Ruk-Ruk
step
    #label FeFeng
	.goto 378,26.75,31.86,0
    .goto 378,26.75,31.86,15,0
    .goto 378,27.49,29.61,15,0
    .goto 378,25.72,29.91,15,0
    .goto 378,24.24,30.84,15,0
    .goto 378,20.52,34.6,10,0
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
    >>Tuez |cRXP_ENEMY_Hozen fe-feng|r
    .complete 29779,1 --20/20 Fe-Feng Hozen slain
	.mob Fe-Feng Firethief
	.mob Fe-Feng Ruffian
step
#loop
	.line 378,24.24,30.84,25.72,29.91,27.49,29.61,26.75,31.86
	.goto 378,24.24,30.84,0
	.goto 378,24.24,30.84,10,0
	.goto 378,25.72,29.91,10,0
	.goto 378,27.49,29.61,10,0
	.goto 378,26.75,31.86,10,0
	>>Ramassez les |cRXP_PICK_Feux d'artifice volés|r sur le sol
    .complete 29781,1 --8/8 Stolen Firework Bundle
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte-de-Feu|r, qui devrait être à côté de vous
    >>|cRXP_WARN_S'il n'est pas là, passez cette étape|r
    .turnin 29779 >>Rendez la quête La solution directe
    .turnin 29780 >>Rendez la quête Le plus sage est celui qui sait vaincre sans combat
    .turnin 29781 >>Rendez la quête Mise en garde pyrotechnique
    .accept 29784 >>Acceptez la quête Une question d’équilibre
	.target Ji Firepaw
step
    .goto 378,29.90,39.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Jojo Front de Fer|r
    .turnin 29782 >>Rendez la quête Plus fort que l’os
	.target Jojo Ironbrow
step
    .goto 378,30.97,36.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    .turnin 29779 >>Rendez la quête La solution directe
    .turnin 29780 >>Rendez la quête Le plus sage est celui qui sait vaincre sans combat
    .turnin 29781 >>Rendez la quête Mise en garde pyrotechnique
    .accept 29784 >>Acceptez la quête Une question d’équilibre
	.target Ji Firepaw
step
	#completewith next
    .goto 378,31.14,36.79,5,0
    .goto 378,32.17,36.36,8,0
    .goto 378,32.88,37.16,8,0
    .goto 378,32.94,35.61,8 >>|cRXP_WARN_Soigneusement|r marchez sur la corde
step
	#label BalancedP
    .goto 378,32.94,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aysa Poète des Nuages|r.
    .turnin 29784 >>Rendez la quête Une question d’équilibre
    .accept 29785 >>Acceptez la quête Dafeng, l’esprit du vent
	.target Aysa Cloudsinger
step
	#sticky
	#label Temple1
    .goto 378,30.21,38.57,20,0
    .goto 378,28.94,62.89,20 >>Rendez-vous à la |cRXP_WARN_Chambre des Murmures|r
	.isOnQuest 29785
step
	#sticky
	#label Temple2
	#requires Temple1
    .goto 378,26.64,66.63,10 >> Courez entre les volées d'escaliers après la première fois où les vents se calment
	.isOnQuest 29785
step
	#sticky
	#label Temple3
	#requires Temple2
    .goto 378,26.64,66.63,10 >> Courez vers |cRXP_FRIENDLY_Dafeng|r après que les vents dans la salle suivante se calment
	.isOnQuest 29785
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Dafeng|r et |cRXP_FRIENDLY_Aysa|r
    .turnin 29785 >>Rendez la quête Dafeng, l’esprit du vent
	.target +Dafeng
    .goto 378,24.65,69.80
    .accept 29786 >>Acceptez la quête Bataille pyrotechnique
	.target +Aysa Cloudsinger
    .goto 378,24.78,69.78
step
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,29.54,60.74,5,0
    .goto 378,30.18,61.88,5,0
    .goto 378,30.93,61.59,5,0
    .goto 378,31.37,60.05,5,0
    .goto 378,29.78,58.93,5,0
    .goto 378,30.52,59.72
	>>Cliquez sur les |cRXP_PICK_Lanceurs de Feu d'artifice|r sur le sol quand |cRXP_ENEMY_Zhao Ren|r vole au-dessus d'eux pour lui faire des dégâts
    >>Il tourne dans le sens inverse des aiguilles d'une montre. |cRXP_WARN_Évitez ses Flaques de Foudre|r. Attaquez-le quand il atterrit. Tuez-le quand il atterrit la deuxième fois
    .complete 29786,1 --1/1 Zhao-Ren slain
	.target Zhao-Ren
step
    .goto 378,29.99,60.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 29786 >>Rendez la quête Bataille pyrotechnique
    .accept 29787 >>Acceptez la quête Digne de passer
	.target Master Shang Xi
step
	#completewith next
    .goto 378,26.32,52.83,20,0
    .goto 378,22.70,52.80,40 >>Rendez-vous à |cRXP_WARN_La voie des Anciens|r
step
    .goto 378,22.70,52.80
	>>Tuez les |cRXP_ENEMY_Gardiens des anciens|r.
    .complete 29787,1 --1/1 Guardian of the Elders slain
	.timer 19,Attendez la fin du jeu de rôle
	.target Guardian of the Elders
step
    .goto 378,19.45,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
	>>Attendez que le RP se termine
    .turnin 29787 >>Rendez la quête Digne de passer
    .accept 29788 >>Acceptez la quête Une nature importune
    .accept 29789 >>Acceptez la quête Petit, mais irremplaçable
	.target Master Shang Xi
step
    #loop
    .goto 378,18.84,51.88,0
    .goto 378,18.84,51.88,30,0
    .goto 378,18.43,49.88,30,0
    .goto 378,18.37,48.13,30,0
    .goto 378,21.57,49.29,30,0
    .goto 378,22.50,48.95,30,0
    .goto 378,24.22,45.72,30,0
    .goto 378,18.18,44.52,30,0
    .goto 378,18.18,44.52,30,0
	>>Tuez |cRXP_ENEMY_Thornbranch Scamps|r
    >>Ramassez les |cRXP_PICK_Charmes|r accrochés aux arbres
    .complete 29788,1 --8/8 Thornbranch Scamp slain
	.mob +Thornbranch Scamp
    .complete 29789,1 --8/8 Kun-Pai Ritual Charm
step
    .goto 378,19.46,51.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Maître Shang Xi|r.
    .turnin 29788 >>Rendez la quête Une nature importune
    .turnin 29789 >>Rendez la quête Petit, mais irremplaçable
    .accept 29790 >>Acceptez la quête Transmission de sagesse
	.timer 83,RP de Transmission de sagesse
	.target Master Shang Xi
step
    .goto 378,17.29,50.78
    >>Attendez la fin du RP à la position de la flèche
    >>|cRXP_WARN_Si vous dépassez ce point, |cRXP_FRIENDLY_Shang Xi|r disparaîtra. Si cela se produit, abandonnez la quête et recommencez le jeu de rôle|r
    .complete 29790,1 --1/1 Listen to Master Shang Xi
	.target Master Shang Xi
step
    .goto 378,15.79,49.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aysa Poète des Nuages|r.
    .turnin 29790 >>Rendez la quête Transmission de sagesse
    .accept 29791 >>Acceptez la quête Les souffrances de Shen Zin Su
	.target Aysa Cloudsinger
step
    .goto 378,15.55,48.91
    >>Cliquez sur le |cRXP_PICK_Ballon d'air|r pour l'embarquer
    .complete 29791,1 --1/1 Board the Hot Air Balloon
	.timer 231,RP de Les souffrances de Shen Zin Su
step
    .goto 378,30.8,92.9
	>>Attendez le temps du RP
    .complete 29791,2 --1/1 Uncover the source of Shen-zin Su's pain
step
    .goto 378,51.35,57.21,20,0
    .goto 378,51.31,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Shaopai|r
    .turnin 29791 >>Rendez la quête Les souffrances de Shen Zin Su
    .accept 29792 >>Acceptez la quête Voués à la grandeur
	.target Elder Shaopai
step
    .goto 378,51.60,61.39
    --#title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Suivez la flèche|r
    .complete 29792,1 --1/1 Open the Mandori Village Gate
step
	#completewith next
    .goto 378,50.66,65.62,20,0
    .goto 378,52.28,68.43,30 >>Rendez-vous à |cRXP_WARN_la Porte Pei-Wu|r
	.timer 28,Pei-Wu Porte RP
step
    .goto 378,52.28,68.43
    >>|cFFFCDC00Suivez la flèche|r. Attendez la fin du jeu de rôle
    .complete 29792,2 --1/1 Open the Pei-Wu Forest Gate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wei|r et |cRXP_FRIENDLY_Korga|r
    .turnin 29792 >>Rendez la quête Voués à la grandeur
    .accept 30591 >>Acceptez la quête La chasse aux prédateurs
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .accept 29795 >>Acceptez la quête Des tas de tiges
	.target +Korga Strongmane
    .goto 378,50.22,76.65
step
    #loop
	.line 378,54.51,85.54,45.05,85.81,45.89,71.57,55.62,69.49,54.51,85.54
	.goto 378,54.51,85.54,40,0
	.goto 378,45.05,85.81,40,0
	.goto 378,45.89,71.57,40,0
	.goto 378,55.62,69.49,40,0
	.goto 378,54.51,85.54,0
    >>Tuez |cRXP_ENEMY_Pei-Wu Tigers|r
    >>Ramassez les |cRXP_PICK_Tiges de Bambou|r sur le sol
    .complete 30591,1 --9/9 Pei-Wu Tiger slain
	.mob +Pei-Wu Tiger
    .complete 29795,1 --10/10 Broken Bamboo Stalk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Wei|r et |cRXP_FRIENDLY_Korga|r
    .turnin 30591 >>Rendez la quête La chasse aux prédateurs
	.target +Wei Palerage
    .goto 378,50.07,76.63
    .turnin 29795 >>Rendez la quête Des tas de tiges
    .accept 30589 >>Acceptez la quête Détruire l’épave
	.target +Korga Strongmane
    .goto 378,50.22,76.65
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makael|r et |cRXP_FRIENDLY_Ji|r
    .turnin 30589 >>Rendez la quête Détruire l’épave
    .accept 30590 >>Acceptez À manipuler avec soin
	.target +Makael Bay
    .goto 378,36.32,72.36
    .accept 29793 >>Acceptez la quête Le mal venu des mers
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    #loop
    .goto 378,36.06,76.73,0
    .goto 378,36.06,76.73,40,0
    .goto 378,35.41,79.00,40,0
    .goto 378,40.14,78.79,40,0
    .goto 378,38.29,74.01,40,0
    >>Tuez |cRXP_ENEMY_Darkened Horrors|r et |cRXP_ENEMY_Darkened Terrors|r
	>>Ramassez les |cRXP_PICK_Paquets d'explosion|r sur le sol
    >>|cRXP_WARN_Attention aux Geysers des Horreurs (Ombre)|r
    .complete 29793,1 --8/8 Darkened Horrors or Darkened Terrors slain
	.mob +Darkened Horror
	.mob +Darkened Terror
    .complete 30590,1 --6/6 Packed Explosion Charge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Makael Bay|r et |cRXP_FRIENDLY_Ji Patte-de-Feu|r
    .turnin 30590 >>Rendez la quête À manipuler avec soin
	.target +Makael Bay
    .goto 378,36.32,72.36
    .turnin 29793 >>Rendez la quête Le mal venu des mers
    .accept 29796 >>Acceptez la quête Des nouvelles urgentes
	.target +Ji Firepaw
    .goto 378,36.37,72.53
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delora Coeur de lion|r et |cRXP_FRIENDLY_Jojo Front de Fer|r
    .turnin 29796 >>Rendez la quête Des nouvelles urgentes
    .accept 29794 >>Acceptez la quête N’abandonner personne
    .accept 29797 >>Acceptez la quête Fournitures médicales
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .accept 29665 >>Acceptez la quête De mal en pis
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step << skip
    #optional
    #completewith next
    #label InjuredSailorA
    .goto 378,42.27,86.80,0,0
    >>Escortez le |cRXP_FRIENDLY_Marin blessé|r jusqu'au Camp de |cRXP_FRIENDLY_Delora|r.
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorA
    .goto 378,40.18,87.69
	.cast 56685 >>Ramassez un |cRXP_FRIENDLY_Marin blessé|r sur le sol
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorA
    .goto 378,42.27,86.80
    >>Portez le |cRXP_FRIENDLY_Marin blessé|r vers le camp de |cRXP_FRIENDLY_Delora's|r.
    .complete 29794,1,1 --3/3 Injured Sailors rescued
step << skip
    #optional
    #completewith next
	#label InjuredSailorB
    .goto 378,42.27,86.80,0,0
    >>Portez le |cRXP_FRIENDLY_Marin blessé|r vers le camp de |cRXP_FRIENDLY_Delora's|r.
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step << skip
    #optional
	#completewith InjuredSailorB
    .goto 378,39.41,87.98
	.cast 56685 >>Ramassez le |cRXP_FRIENDLY_Marin blessé|r.
	.isOnQuest 29794
	.target Injured Sailor
step << skip
    #optional
    #requires InjuredSailorB
    .goto 378,42.27,86.80
    >>Portez le |cRXP_FRIENDLY_Marin blessé|r vers le camp de |cRXP_FRIENDLY_Delora's|r.
    .complete 29794,1,2 --3/3 Injured Sailors rescued
step
	#completewith InjuredSailorB
    >>Tuez les |cRXP_ENEMY_Deepscale Tormentors|r
    >>Ramassez les |cRXP_PICK_Medical Caisses|r sur le sol
    .complete 29665,1 --8/8 Deepscale Tormentor slain
	.mob +Deepscale Tormentor
    .complete 29797,1 --8/8 Alliance Medical Supplies
step
    .waypoint 378,42.27,86.80,-129340,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,42.27,86.80,-105520,wpbuff,UNIT_AURA--put this WP at the top, this is where to point at once you have the buff
    .waypoint 378,40.18,87.69,10
    .waypoint 378,40.01,84.36,10
    .waypoint 378,38.08,84.73,10
    .waypoint 378,38.41,83.09,10
    .waypoint 378,37.60,81.44,10
    .waypoint 378,35.49,83.80,10
    .waypoint 378,36.17,87.63,10
    .waypoint 378,37.66,87.22,10
    .waypoint 378,38.36,87.43,10
    .goto 378,40.18,87.69
    >>Ramassez un |cRXP_FRIENDLY_Marin blessé|r sur le sol et ramenez-le vers le camp de |cRXP_FRIENDLY_Delora Coeur de lion's|r
    >>|cRXP_WARN_Faites-le au moins deux fois|r
    .complete 29794,1,2 --2/3 Injured Sailors rescued
    .target Injured Sailor
step
#optional
#label InjuredSailorB
step
    #optional
    #loop
    .goto 378,37.86,83.22,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,10,0
    .goto 378,36.82,89.24,20,0
    .goto 378,38.36,87.60,20,0
    .goto 378,37.04,87.93,20,0
    .goto 378,35.77,86.77,20,0
    .goto 378,36.40,83.30,20,0
    .goto 378,37.92,81.39,20,0
    .goto 378,37.86,83.22,20,0
    .goto 378,36.41,85.51,15,0
    .goto 378,36.82,89.24,15,0
    >>Tuez les |cRXP_ENEMY_Deepscale Tormentors|r
    >>Ramassez les |cRXP_PICK_Medical Caisses|r sur le sol
	>>|cRXP_WARN_Ne ramassez pas un nouveau |cRXP_FRIENDLY_Marin blessé|r encore|r
    .complete 29665,1 --8/8 Deepscale Tormentor slain
	.mob +Deepscale Tormentor
    .complete 29797,1 --8/8 Alliance Medical Supplies
step
    #label InjuredSailorC
	#completewith next
    .goto 378,38.36,87.43,10,0
    .goto 378,37.66,87.22,10,0
    .goto 378,36.17,87.63,10,0
    .goto 378,35.49,83.80,10,0
    .goto 378,37.60,81.44,10,0
    .goto 378,38.41,83.09,10,0
    .goto 378,38.08,84.73,10,0
    .goto 378,40.01,84.36,10,0
    .goto 378,40.18,87.69
	.cast 56685 >>Ramassez un |cRXP_FRIENDLY_Marin blessé|r
	.isOnQuest 29794
	.target Injured Sailor
step
    #requires InjuredSailorC
    .goto 378,42.27,86.80
    >>Portez le |cRXP_FRIENDLY_Marin blessé|r vers le camp de |cRXP_FRIENDLY_Delora Coeur de lion's|r
    .complete 29794,1 --3/3 Injured Sailors rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Delora Coeur de lion|r et |cRXP_FRIENDLY_Jojo Front de Fer|r
    .turnin 29794 >>Rendez la quête N’abandonner personne
    .turnin 29797 >>Rendez la quête Fournitures médicales
	.target +Delora Lionheart
    .goto 378,42.21,86.54
    .turnin 29665 >>Rendez la quête De mal en pis
    .accept 29798 >>Acceptez la quête Un mal très ancien
	.target +Jojo Ironbrow
    .goto 378,42.30,86.35
step
    .goto 378,36.50,84.23
    >>Tuez |cRXP_ENEMY_Vordraka, The Deep Mer Le cauchemar|r
    *|cRXP_WARN_Esquive sa Frappe des profondeurs|r
    *|cRXP_WARN_Tuez les |cRXP_ENEMY_Deepscale Aggressors|r quand ils apparaissent|r
    .complete 29798,1 --1/1 Vordraka, the Deep Sea Nightmare slain
	.mob Vordraka, The Deep Sea Nightmare
    .mob Deepscale Aggressor
step
    .goto 378,36.50,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aysa Poète des Nuages|r.
    .turnin 29798 >>Rendez la quête Un mal très ancien
    .accept 30767 >>Acceptez la quête Le tout pour le tout
    .timer 77,RP de Le tout pour le tout
	.target Aysa Cloudsinger
	.skipgossip
step
    .goto 378,36.35,86.08,10,0 << skip
    .goto 378,36.27,86.99,10,0 << skip
    .goto 378,36.90,85.50,5,0 << skip
    .goto 378,36.36,87.2,10,0 << skip
    .goto 378,36.38,87.12 << skip
    >>Attendez le temps du RP.
    >>|cRXP_WARN_Prendre une pause si vous le souhaitez|r
	>>|cRXP_WARN_Appuyez sur "Échap./Esc." pour passer la cinématique|r
    .complete 30767,1 --1/1 Shen-zin Su's Thorn Removed
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    .turnin 30767 >>Rendez la quête Le tout pour le tout
    .accept 29799 >>Acceptez la quête La guérison de Shen Zin Su
	.target Ji Firepaw
step
    .goto 378,39.08,88.32,5,0
    .goto 378,39.04,88.87,5,0
    .goto 378,39.89,88.62,5,0
    .goto 378,42.92,87.31,5,0
    .goto 378,42.85,85.16,5,0
    .goto 378,42.01,84.89,5,0
    .goto 378,42.31,83.89,5,0
    .goto 378,41.21,83.78,5,0
    .goto 378,40.55,82.45,5,0
    .goto 378,40.26,83.35,5,0
    .goto 378,40.12,84.37,5,0
    .goto 378,38.44,86.07
    >>Cliquez sur les |cRXP_PICK_Loose Wreckages|r et aide |cRXP_FRIENDLY_Alliance Priests|r et |cRXP_FRIENDLY_Horde Druids|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Alliance Priests|r et |cRXP_FRIENDLY_Horde Druids|r
    *|cRXP_WARN_Tuez les |cRXP_ENEMY_Dampscale Fleshrippers|r s'ils les attaquent|r
    .complete 29799,1 --1/1 Protect the healers
	.target Alliance Priest
	.target Horde Druid
	.mob Dampscale Fleshripper
step
    .goto 378,39.30,86.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
	>>|cRXP_WARN_Appuyez sur Echap. sur votre clavier pour passer la cinématique|r.
    .turnin 29799 >>Rendez la quête La guérison de Shen Zin Su
	.timer 18,RP de La guérison de Shen Zin Su
	.target Ji Firepaw
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    >>Attendez le temps du RP
    .goto 378,38.77,86.32
    .accept 29800 >>Acceptez la quête De nouveaux alliés
	.target Ji Firepaw
step
    #completewith next
    .hs >> Pierre de foyer vers |cRXP_WARN_le Temple des Cinq matins|r
step
    .goto 378,51.45,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez au |cRXP_FRIENDLY_Esprit de Shang Xi|r et sélectionnez votre faction
	>>|cRXP_WARN_Appuyez sur "Échap./Esc." pour passer la cinématique|r
    .turnin 29800 >>Rendez la quête De nouveaux alliés
    .accept 31450 >>Acceptez la quête Un nouveau destin
    .complete 31450,1 --1/1 Choose your faction
    .skipgossip
	.target Spirit of Shang Xi
step
    .zoneskip 84
    .goto 1,45.58,12.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Ji Patte de Feu|r.
    .turnin 31450 >>Rendez la quête Un nouveau destin
    .accept 31012 >>Acceptez la quête Rejoindre la Horde
    .target Ji Firepaw
step
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Aysa Poète des Nuages|r.
    .turnin 31450 >>Rendez la quête Un nouveau destin
	.accept 30987 >>Acceptez la quête Rejoindre l’Alliance
	.target Aysa Cloudsinger
step
#optional
.neutralzonefinished
step <<skip
--TODO: skip this? the whole trip to SW keep is way too long
    .zoneskip 1
    .zoneskip 85
    .goto 84,74.19,91.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Roi Varian Wrynn|r
	.turnin 30987 >>Rendez la quête Rejoindre l’Alliance
	.target King Varian Wrynn
    .neutralzonefinished
step
    .zoneskip 84
    #completewith next
    .goto 85,49.87,75.52,20 >> Entrez dans le fort Grommash
step
    .zoneskip 84
    .goto 85,48.76,70.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tParlez à |cRXP_FRIENDLY_Garrosh Hurlenfer|r.
    .turnin 31012 >> Rendez la quête Rejoindre la Horde
    .target Garrosh Hellscream
    .neutralzonefinished
step
.zoneskip 84
.zoneskip 1
.zoneskip 85
+Félicitations, vous venez de terminer la zone de départ pandaren. Cliquez sur le bouton engrenage sous la fenêtre RXP et sélectionnez le guide de suivi approprié.
]])
